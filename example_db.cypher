CREATE (:User {id: 1, location: "UK", maturityRating: "18"})
CREATE (:User {id: 2, location: "UK", maturityRating: "15"})
CREATE (:User {id: 3, location: "USA", maturityRating: "18"})
CREATE (:User {id: 4, location: "UK", maturityRating: "18"})
CREATE (:User {id: 5, location: "India", maturityRating: "12"})
CREATE (:User {id: 6, location: "UK", maturityRating: "18"})
CREATE (:User {id: 7, location: "UK", maturityRating: "18"})
CREATE (:User {id: 8, location: "UK", maturityRating: "18"})
CREATE (:User {id: 9, location: "UK", maturityRating: "18"})
CREATE (:Movie {title: "The Matrix", categories: [1365,1492], maturityRating: "15"})
CREATE (:Movie {title: "The Matrix Reloaded", categories: [1365,1492], maturityRating: "15"})
CREATE (:Movie {title: "The Matrix Revolutions", categories: [1365,1492], maturityRating: "15"})
CREATE (:Movie {title: "Spiderman", categories: [1365], maturityRating: "PG"})
CREATE (:Movie {title: "Enola Holmes", categories: [1365], maturityRating: "12"})
CREATE (:Movie {title: "Deadpool", categories: [1365], maturityRating: "15"})
CREATE (:Movie {title: "Venom", categories: [1365,1492], maturityRating: "15"})
CREATE (:Movie {title: "Inception", categories: [1492], maturityRating: "12"})
CREATE (:Movie {title: "Alien Xmas", categories: [1492,783], maturityRating: "U"})
CREATE (:Movie {title: "Cowboys & Aliens", categories: [1492,1365], maturityRating: "12"})
CREATE (:Movie {title: "Arthur Christmas", categories: [783], maturityRating: "U"})
CREATE (:Movie {title: "Minions", categories: [783], maturityRating: "U"})
CREATE (:Movie {title: "Madagascar", categories: [783], maturityRating: "U"})
CREATE (:Movie {title: "Kung Fu Panda", categories: [783], maturityRating: "PG"})
CREATE (:Movie {title: "Attack on Titan", categories: [6721], maturityRating: "15"})
CREATE (:Movie {title: "Pokemon", categories: [6721], maturityRating: "PG"})
CREATE (:Movie {title: "Castlevania", categories: [6721], maturityRating: "18"})
CREATE (:Movie {title: "Ghost in the Shell", categories: [6721,1365,1492], maturityRating: "18"})
CREATE (:Movie {title: "Fullmetal Alchemist", categories: [6721], maturityRating: "18"})
CREATE (:Movie {title: "Jurassic Park", categories: [31574,1365], maturityRating: "PG"})
CREATE (:Movie {title: "Monty Python and the holy grail", categories: [31574,6548], maturityRating: "15"})
CREATE (:Movie {title: "Monty Pythons Life of Brian", categories: [31574,6548], maturityRating: "15"})
CREATE (:Movie {title: "Funny Girl", categories: [31574,52852], maturityRating: "U"})
CREATE (:Movie {title: "Mama Mia", categories: [52852], maturityRating: "PG"})
CREATE (:Movie {title: "Pitch Perfect", categories: [52852,6548], maturityRating: "15"})
CREATE (:Movie {title: "Road Trip", categories: [6548], maturityRating: "18"})
CREATE (:Movie {title: "Bad Moms", categories: [6548], maturityRating: "15"})
CREATE (:Movie {title: "Wild Child", categories: [6548], maturityRating: "12"})
CREATE (:Movie {title: "Ted", categories: [6548], maturityRating: "15"})
CREATE (:Movie {title: "The Irishman", categories: [5763], maturityRating: "15"})
CREATE (:Movie {title: "Creed", categories: [5763], maturityRating: "15"})
CREATE (:Movie {title: "Creed II", categories: [5763], maturityRating: "15"})
CREATE (:Movie {title: "Contagion", categories: [5763], maturityRating: "15"})
CREATE (:Movie {title: "Martian", categories: [5763], maturityRating: "15"})
CREATE (:Movie {title: "Bridge of Spies", categories: [5763], maturityRating: "15"})
CREATE (:Movie {title: "Gladiator", categories: [5763,1365], maturityRating: "15"})
CREATE (:Movie {title: "The Purge", categories: [8711], maturityRating: "18"})
CREATE (:Movie {title: "The Purge 2", categories: [8711], maturityRating: "18"})
CREATE (:Movie {title: "The Purge: Anarchy", categories: [8711], maturityRating: "18"})
CREATE (:Movie {title: "Misery", categories: [8711], maturityRating: "18"})
CREATE (:Movie {title: "Freddie vs Jason", categories: [8711], maturityRating: "18"})
CREATE (:Movie {title: "Zombieland", categories: [8711,6548], maturityRating: "15"})
;MATCH (u:User) WHERE u.id = 1
MATCH (m:Movie) WHERE m.title = "Minions"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 1
MATCH (m:Movie) WHERE m.title = "Kung Fu Panda"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 1
MATCH (m:Movie) WHERE m.title = "Road Trip"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 1
MATCH (m:Movie) WHERE m.title = "Jurassic Park"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 1
MATCH (m:Movie) WHERE m.title = "Bridge of Spies"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 1
MATCH (m:Movie) WHERE m.title = "Deadpool"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 1
MATCH (m:Movie) WHERE m.title = "Mama Mia"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 1
MATCH (m:Movie) WHERE m.title = "Monty Pythons Life of Brian"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 1
MATCH (m:Movie) WHERE m.title = "Funny Girl"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 1
MATCH (m:Movie) WHERE m.title = "Pokemon"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 2
MATCH (m:Movie) WHERE m.title = "Martian"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 2
MATCH (m:Movie) WHERE m.title = "Ted"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 2
MATCH (m:Movie) WHERE m.title = "Bridge of Spies"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 2
MATCH (m:Movie) WHERE m.title = "Kung Fu Panda"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 2
MATCH (m:Movie) WHERE m.title = "Jurassic Park"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 2
MATCH (m:Movie) WHERE m.title = "Inception"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 2
MATCH (m:Movie) WHERE m.title = "Madagascar"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 2
MATCH (m:Movie) WHERE m.title = "Minions"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 2
MATCH (m:Movie) WHERE m.title = "The Irishman"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 2
MATCH (m:Movie) WHERE m.title = "The Matrix Revolutions"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 3
MATCH (m:Movie) WHERE m.title = "Bridge of Spies"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 3
MATCH (m:Movie) WHERE m.title = "Contagion"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 3
MATCH (m:Movie) WHERE m.title = "Pitch Perfect"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 3
MATCH (m:Movie) WHERE m.title = "Monty Pythons Life of Brian"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 3
MATCH (m:Movie) WHERE m.title = "Contagion"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 3
MATCH (m:Movie) WHERE m.title = "Pitch Perfect"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 3
MATCH (m:Movie) WHERE m.title = "Zombieland"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 3
MATCH (m:Movie) WHERE m.title = "Martian"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 3
MATCH (m:Movie) WHERE m.title = "Monty Python and the holy grail"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 3
MATCH (m:Movie) WHERE m.title = "The Purge 2"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 4
MATCH (m:Movie) WHERE m.title = "Pitch Perfect"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 4
MATCH (m:Movie) WHERE m.title = "The Matrix Reloaded"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 4
MATCH (m:Movie) WHERE m.title = "Misery"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 4
MATCH (m:Movie) WHERE m.title = "The Matrix Reloaded"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 4
MATCH (m:Movie) WHERE m.title = "Monty Python and the holy grail"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 4
MATCH (m:Movie) WHERE m.title = "Gladiator"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 4
MATCH (m:Movie) WHERE m.title = "Fullmetal Alchemist"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 4
MATCH (m:Movie) WHERE m.title = "The Matrix Reloaded"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 4
MATCH (m:Movie) WHERE m.title = "The Purge 2"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 4
MATCH (m:Movie) WHERE m.title = "Wild Child"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 5
MATCH (m:Movie) WHERE m.title = "Spiderman"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 5
MATCH (m:Movie) WHERE m.title = "Enola Holmes"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 5
MATCH (m:Movie) WHERE m.title = "Funny Girl"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 5
MATCH (m:Movie) WHERE m.title = "Alien Xmas"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 5
MATCH (m:Movie) WHERE m.title = "Madagascar"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 5
MATCH (m:Movie) WHERE m.title = "Jurassic Park"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 5
MATCH (m:Movie) WHERE m.title = "Funny Girl"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 5
MATCH (m:Movie) WHERE m.title = "Minions"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 5
MATCH (m:Movie) WHERE m.title = "Funny Girl"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 5
MATCH (m:Movie) WHERE m.title = "Funny Girl"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 6
MATCH (m:Movie) WHERE m.title = "Cowboys & Aliens"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 6
MATCH (m:Movie) WHERE m.title = "Alien Xmas"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 6
MATCH (m:Movie) WHERE m.title = "The Purge 2"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 6
MATCH (m:Movie) WHERE m.title = "Funny Girl"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 6
MATCH (m:Movie) WHERE m.title = "Enola Holmes"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 6
MATCH (m:Movie) WHERE m.title = "Enola Holmes"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 6
MATCH (m:Movie) WHERE m.title = "Spiderman"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 6
MATCH (m:Movie) WHERE m.title = "The Matrix Revolutions"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 6
MATCH (m:Movie) WHERE m.title = "Misery"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 6
MATCH (m:Movie) WHERE m.title = "Pokemon"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 7
MATCH (m:Movie) WHERE m.title = "Cowboys & Aliens"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 7
MATCH (m:Movie) WHERE m.title = "Ghost in the Shell"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 7
MATCH (m:Movie) WHERE m.title = "Kung Fu Panda"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 7
MATCH (m:Movie) WHERE m.title = "The Matrix"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 7
MATCH (m:Movie) WHERE m.title = "Bad Moms"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 7
MATCH (m:Movie) WHERE m.title = "Deadpool"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 7
MATCH (m:Movie) WHERE m.title = "The Matrix"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 7
MATCH (m:Movie) WHERE m.title = "Bad Moms"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 7
MATCH (m:Movie) WHERE m.title = "Bad Moms"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 7
MATCH (m:Movie) WHERE m.title = "Monty Python and the holy grail"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 8
MATCH (m:Movie) WHERE m.title = "Ghost in the Shell"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 8
MATCH (m:Movie) WHERE m.title = "Contagion"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 8
MATCH (m:Movie) WHERE m.title = "Jurassic Park"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 8
MATCH (m:Movie) WHERE m.title = "The Matrix"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 8
MATCH (m:Movie) WHERE m.title = "The Purge"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 8
MATCH (m:Movie) WHERE m.title = "Bad Moms"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 8
MATCH (m:Movie) WHERE m.title = "Creed"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 8
MATCH (m:Movie) WHERE m.title = "Spiderman"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 8
MATCH (m:Movie) WHERE m.title = "The Irishman"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 8
MATCH (m:Movie) WHERE m.title = "Pokemon"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 9
MATCH (m:Movie) WHERE m.title = "Pitch Perfect"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 9
MATCH (m:Movie) WHERE m.title = "Zombieland"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 9
MATCH (m:Movie) WHERE m.title = "Madagascar"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 9
MATCH (m:Movie) WHERE m.title = "Ted"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 9
MATCH (m:Movie) WHERE m.title = "Deadpool"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 9
MATCH (m:Movie) WHERE m.title = "Alien Xmas"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 9
MATCH (m:Movie) WHERE m.title = "The Irishman"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 9
MATCH (m:Movie) WHERE m.title = "Zombieland"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 9
MATCH (m:Movie) WHERE m.title = "Martian"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 9
MATCH (m:Movie) WHERE m.title = "Funny Girl"
MERGE (u)-[:WATCHED]->(m); 
MATCH (u:User) WHERE u.id = 1
MATCH (m:Movie) WHERE m.title = "Jurassic Park"
MERGE (u)-[:RATED {rating:"up"}]->(m); 
MATCH (u:User) WHERE u.id = 1
MATCH (m:Movie) WHERE m.title = "Minions"
MERGE (u)-[:RATED {rating:"up"}]->(m); 
MATCH (u:User) WHERE u.id = 1
MATCH (m:Movie) WHERE m.title = "Bridge of Spies"
MERGE (u)-[:RATED {rating:"up"}]->(m); 
MATCH (u:User) WHERE u.id = 2
MATCH (m:Movie) WHERE m.title = "Inception"
MERGE (u)-[:RATED {rating:"up"}]->(m); 
MATCH (u:User) WHERE u.id = 2
MATCH (m:Movie) WHERE m.title = "Minions"
MERGE (u)-[:RATED {rating:"up"}]->(m); 
MATCH (u:User) WHERE u.id = 2
MATCH (m:Movie) WHERE m.title = "The Matrix Revolutions"
MERGE (u)-[:RATED {rating:"up"}]->(m); 
MATCH (u:User) WHERE u.id = 3
MATCH (m:Movie) WHERE m.title = "Pitch Perfect"
MERGE (u)-[:RATED {rating:"up"}]->(m); 
MATCH (u:User) WHERE u.id = 3
MATCH (m:Movie) WHERE m.title = "Monty Pythons Life of Brian"
MERGE (u)-[:RATED {rating:"up"}]->(m); 
MATCH (u:User) WHERE u.id = 3
MATCH (m:Movie) WHERE m.title = "Monty Pythons Life of Brian"
MERGE (u)-[:RATED {rating:"up"}]->(m); 
MATCH (u:User) WHERE u.id = 4
MATCH (m:Movie) WHERE m.title = "Gladiator"
MERGE (u)-[:RATED {rating:"up"}]->(m); 
MATCH (u:User) WHERE u.id = 4
MATCH (m:Movie) WHERE m.title = "Wild Child"
MERGE (u)-[:RATED {rating:"up"}]->(m); 
MATCH (u:User) WHERE u.id = 4
MATCH (m:Movie) WHERE m.title = "The Matrix Reloaded"
MERGE (u)-[:RATED {rating:"up"}]->(m); 
MATCH (u:User) WHERE u.id = 5
MATCH (m:Movie) WHERE m.title = "Enola Holmes"
MERGE (u)-[:RATED {rating:"up"}]->(m); 
MATCH (u:User) WHERE u.id = 5
MATCH (m:Movie) WHERE m.title = "Alien Xmas"
MERGE (u)-[:RATED {rating:"up"}]->(m); 
MATCH (u:User) WHERE u.id = 5
MATCH (m:Movie) WHERE m.title = "Funny Girl"
MERGE (u)-[:RATED {rating:"up"}]->(m); 
MATCH (u:User) WHERE u.id = 6
MATCH (m:Movie) WHERE m.title = "The Purge 2"
MERGE (u)-[:RATED {rating:"up"}]->(m); 
MATCH (u:User) WHERE u.id = 6
MATCH (m:Movie) WHERE m.title = "Misery"
MERGE (u)-[:RATED {rating:"up"}]->(m); 
MATCH (u:User) WHERE u.id = 6
MATCH (m:Movie) WHERE m.title = "Pokemon"
MERGE (u)-[:RATED {rating:"up"}]->(m); 
MATCH (u:User) WHERE u.id = 7
MATCH (m:Movie) WHERE m.title = "Deadpool"
MERGE (u)-[:RATED {rating:"up"}]->(m); 
MATCH (u:User) WHERE u.id = 7
MATCH (m:Movie) WHERE m.title = "Ghost in the Shell"
MERGE (u)-[:RATED {rating:"up"}]->(m); 
MATCH (u:User) WHERE u.id = 7
MATCH (m:Movie) WHERE m.title = "The Matrix"
MERGE (u)-[:RATED {rating:"up"}]->(m); 
MATCH (u:User) WHERE u.id = 8
MATCH (m:Movie) WHERE m.title = "Ghost in the Shell"
MERGE (u)-[:RATED {rating:"up"}]->(m); 
MATCH (u:User) WHERE u.id = 8
MATCH (m:Movie) WHERE m.title = "The Irishman"
MERGE (u)-[:RATED {rating:"up"}]->(m); 
MATCH (u:User) WHERE u.id = 8
MATCH (m:Movie) WHERE m.title = "Pokemon"
MERGE (u)-[:RATED {rating:"up"}]->(m); 
MATCH (u:User) WHERE u.id = 9
MATCH (m:Movie) WHERE m.title = "The Irishman"
MERGE (u)-[:RATED {rating:"up"}]->(m); 
MATCH (u:User) WHERE u.id = 9
MATCH (m:Movie) WHERE m.title = "Deadpool"
MERGE (u)-[:RATED {rating:"up"}]->(m); 
MATCH (u:User) WHERE u.id = 9
MATCH (m:Movie) WHERE m.title = "The Irishman"
MERGE (u)-[:RATED {rating:"up"}]->(m); 

CREATE (f:Franchise {name:"Purge"});
MATCH (p1:Movie),(p2:Movie),(p3:Movie),(f:Franchise)
WHERE p1.title = 'The Purge' AND p2.title = 'The Purge 2' AND p3.title = 'The Purge: Anarchy' AND f.name = 'Purge'
CREATE (p1)-[:FRANCHISE]->(f), (p2)-[:FRANCHISE]->(f), (p3)-[:FRANCHISE]->(f);

CREATE (f:Franchise {name:"Matrix"});
MATCH (p1:Movie),(p2:Movie),(p3:Movie),(f:Franchise)
WHERE p1.title = 'The Matrix' AND p2.title = 'The Matrix Reloaded' AND p3.title = 'The Matrix Revolutions' AND f.name = 'Matrix'
CREATE (p1)-[:FRANCHISE]->(f), (p2)-[:FRANCHISE]->(f), (p3)-[:FRANCHISE]->(f);

CREATE (f:Franchise {name:"Monty Python"});
MATCH (p1:Movie),(p2:Movie),(f:Franchise)
WHERE p1.title = 'Monty Python and the holy grail' AND p2.title = 'Monty Pythons Life of Brian' AND f.name = 'Monty Python'
CREATE (p1)-[:FRANCHISE]->(f),(p2)-[:FRANCHISE]->(f);
