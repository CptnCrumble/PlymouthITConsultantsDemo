MATCH (u:User {id:4})
//------Call block for Franchise Continuation algorithm------
CALL{
    WITH u
    // Find age appropriate movies
    CALL{
        WITH u
        RETURN 
        CASE u.maturityRating
        WHEN "U" THEN ["U"]
        WHEN "PG" THEN ["U","PG"]
        WHEN "12" THEN ["U","PG","12"]
        WHEN "15" THEN ["U","PG","12","15"]
        ELSE ["U","PG","12","15","18"] END AS ageList
    }
    CALL{
        WITH ageList
        OPTIONAL MATCH (safe:Movie)
        WHERE any(age IN ageList WHERE age = safe.maturityRating)
        RETURN collect(safe) AS allowedMovies
    }
    // Find users previously watched movies
    CALL{
        WITH u
        OPTIONAL MATCH (u)-[:WATCHED]->(w:Movie)
        RETURN w AS watched
    }    
    WITH allowedMovies,watched
    OPTIONAL MATCH (watched)-[:FRANCHISE]->(:Franchise)<-[:FRANCHISE]-(fc:Movie)
    WHERE fc IN allowedMovies
    RETURN collect(fc) AS fcMovies
}
//------Call block for Similar Watched algorithm------
CALL{
    OPTIONAL MATCH (u:User {id:4})
    // Calculate the category we will use
    CALL{
        WITH u
        OPTIONAL MATCH (u)-[:WATCHED]->(w:Movie)
        RETURN w AS watched
    }
    WITH watched
    UNWIND watched.categories AS c
    WITH c AS c2, COUNT(c) AS c3
    ORDER BY c3 DESC 
    WITH collect(c2) AS categories
    // Randomly select one of the top 3 results
    WITH categories[toInteger(round(rand() * 2))] AS category

    // Filter age appropriate movies from this category
    OPTIONAL MATCH (u:User {id:4})
    CALL{
        WITH u
        RETURN 
        CASE u.maturityRating
        WHEN "U" THEN ["U"]
        WHEN "PG" THEN ["U","PG"]
        WHEN "12" THEN ["U","PG","12"]
        WHEN "15" THEN ["U","PG","12","15"]
        ELSE ["U","PG","12","15","18"] END AS ageList
    }
    CALL{
        WITH ageList
        OPTIONAL MATCH (safe:Movie)
        WHERE any(age IN ageList WHERE age = safe.maturityRating)
        RETURN collect(safe) AS allowedMovies
    }
    OPTIONAL MATCH (m:Movie)
    WHERE any(c in m.categories WHERE c = category)
    AND m IN allowedMovies

    // Calculate influence score and rank accordingly
    WITH m, size((m)<-[:RATED]-()) AS ratedCount, size((m)<-[:WATCHED]-()) AS watchedCount
    WITH m,ratedCount,watchedCount, ratedCount*100 AS rScore, watchedCount*100+1 AS wScore
    WITH m,ratedCount, watchedCount, (toFloat(rScore)/toFloat(wScore)) AS influenceScore
    ORDER BY influenceScore DESC
    RETURN collect(m) AS swMovies
}
//------Call block for Trending in Location algorithm------
CALL{
    OPTIONAL MATCH (u:User {id:4})
    CALL{
        WITH u
        RETURN 
        CASE u.maturityRating
        WHEN "U" THEN ["U"]
        WHEN "PG" THEN ["U","PG"]
        WHEN "12" THEN ["U","PG","12"]
        WHEN "15" THEN ["U","PG","12","15"]
        ELSE ["U","PG","12","15","18"] END AS ageList
    }
    CALL{
        WITH ageList
        OPTIONAL MATCH (safe:Movie)
        WHERE any(age IN ageList WHERE age = safe.maturityRating)
        RETURN collect(safe) AS allowedMovies
    }

    // Calculate most watched movies in the users country
    WITH allowedMovies,u.location AS country
    UNWIND allowedMovies AS movies
    OPTIONAL MATCH (movies)<-[:WATCHED]-(l:User)
    WHERE l.location = country
    WITH DISTINCT movies,country, size((movies)<-[:WATCHED]-(l)) AS watchedCount
    ORDER BY watchedCount DESC
    RETURN collect(movies) AS lwMovies
}

// Combine the three results, apply size limits and remove duplicate responses
WITH fcMovies[0..5] + swMovies[0..5] + lwMovies[0..5] AS recommendations
RETURN DISTINCT recommendations
