from string import Template
import random

class User:
    def __init__(self,id,matR,loc):
        self.id = id
        self.maturityRating = matR
        self.location = loc
    
    def cypher(self):        
        output = Template('CREATE (:User {id: $id, location: $location, maturityRating: $mr})\n')
        return(output.substitute(id=self.id, location=self.location, mr=self.maturityRating))

class Movie:
    def __init__(self,title,mr,cats):
        self.title = title
        self.maturityRating = mr
        self.categories = cats

    def m_cypher(self):
        output = Template('CREATE (:Movie {title: $a, categories: $b, maturityRating: $c})\n')
        return(output.substitute(a=self.title, b=self.categories, c=self.maturityRating))

# Create movies

movies = [
    Movie('\"The Matrix\"','\"15\"','[1365,1492]'),
    Movie('\"The Matrix Reloaded\"','\"15\"','[1365,1492]'),
    Movie('\"The Matrix Revolutions\"','\"15\"','[1365,1492]'),
    Movie('\"Spiderman\"', '\"PG\"', '[1365]'),
    Movie('\"Enola Holmes\"', '\"12\"', '[1365]'),
    Movie('\"Deadpool\"', '\"15\"', '[1365]'),
    Movie('\"Venom\"', '\"15\"', '[1365,1492]'),
    Movie('\"Inception\"', '\"12\"', '[1492]'),
    Movie('\"Alien Xmas\"', '\"U\"', '[1492,783]'),
    Movie('\"Cowboys & Aliens\"', '\"12\"', '[1492,1365]'),
    Movie('\"Arthur Christmas\"', '\"U\"', '[783]'),
    Movie('\"Minions\"', '\"U\"', '[783]'),
    Movie('\"Madagascar\"', '\"U\"', '[783]'),
    Movie('\"Kung Fu Panda\"', '\"PG\"', '[783]'),
    Movie('\"Attack on Titan\"', '\"15\"', '[6721]'),
    Movie('\"Pokemon\"', '\"PG\"', '[6721]'),
    Movie('\"Castlevania\"', '\"18\"', '[6721]'),
    Movie('\"Ghost in the Shell\"', '\"18\"', '[6721,1365,1492]'),
    Movie('\"Fullmetal Alchemist\"', '\"18\"', '[6721]'),
    Movie('\"Jurassic Park\"', '\"PG\"', '[31574,1365]'),
    Movie('\"Monty Python and the holy grail\"', '\"15\"', '[31574,6548]'),
    Movie('\"Monty Pythons Life of Brian\"', '\"15\"', '[31574,6548]'),
    Movie('\"Funny Girl\"', '\"U\"', '[31574,52852]'),
    Movie('\"Mama Mia\"', '\"PG\"', '[52852]'),
    Movie('\"Pitch Perfect\"', '\"15\"', '[52852,6548]'),
    Movie('\"Road Trip\"', '\"18\"', '[6548]'),
    Movie('\"Bad Moms\"', '\"15\"', '[6548]'),
    Movie('\"Wild Child\"', '\"12\"', '[6548]'),
    Movie('\"Ted\"', '\"15\"', '[6548]'),
    Movie('\"The Irishman\"', '\"15\"', '[5763]'),
    Movie('\"Creed\"', '\"15\"', '[5763]'),
    Movie('\"Creed II\"', '\"15\"', '[5763]'),
    Movie('\"Contagion\"', '\"15\"', '[5763]'),
    Movie('\"Martian\"', '\"15\"', '[5763]'),
    Movie('\"Bridge of Spies\"', '\"15\"', '[5763]'),
    Movie('\"Gladiator\"', '\"15\"', '[5763,1365]'),
    Movie('\"The Purge\"', '\"18\"', '[8711]'),
    Movie('\"The Purge 2\"', '\"18\"', '[8711]'),
    Movie('\"The Purge: Anarchy\"', '\"18\"', '[8711]'),
    Movie('\"Misery\"', '\"18\"', '[8711]'),
    Movie('\"Freddie vs Jason\"', '\"18\"', '[8711]'),
    Movie('\"Zombieland\"', '\"15\"', '[8711,6548]'),
    #Movie('\" \"', '\" \"', '[]'),
]

# ensure auto watches obey age restrictions
u_films = []
pg_films =[]
twelve_films = []
fifteen_films = []

for m in movies:
    if(m.maturityRating == '\"U\"'):
        u_films.append(m)
    elif(m.maturityRating == '\"PG\"'):
        pg_films.append(m)
    elif(m.maturityRating == '\"12\"'):
        twelve_films.append(m)
    elif(m.maturityRating == '\"15\"'):
        fifteen_films.append(m)

pg_films = pg_films + u_films
twelve_films = twelve_films + pg_films
fifteen_films = fifteen_films + twelve_films
# dont need an 18 films as its the set of all movies

# variable for the auto generated relationships
watched_statements = ";"
thumbed_statements = ""

# User creation with random properties - repeat values increase probability of selection
mRatings = ['\"U\"', '\"PG\"', '\"12\"', '\"15\"', '\"18\"', '\"12\"', '\"15\"', '\"12\"', '\"15\"', '\"18\"', '\"18\"', '\"18\"', '\"18\"', '\"18\"', '\"18\"', '\"18\"', '\"18\"', '\"18\"', '\"18\"']
locations = ['\"UK\"', '\"USA\"', '\"India\"','\"UK\"','\"UK\"','\"UK\"','\"UK\"','\"UK\"','\"UK\"','\"UK\"','\"UK\"','\"UK\"','\"UK\"','\"UK\"','\"UK\"','\"UK\"','\"UK\"','\"UK\"','\"UK\"']
users = []

def createUser(id):
    return User(id,random.choice(mRatings),random.choice(locations))
    
# Create users then assign 10 watched films & 3 thumbed filma
for x in range(1,10):
    u = createUser(x)
    users.append(u)
    films = []
    m = u.maturityRating
    if(m == '\"U\"'):
        for _ in range(10):            
            films.append(random.choice(u_films))
    elif(m == '\"PG\"'):
        for _ in range(10):
            films.append(random.choice(pg_films))        
    elif(m == '\"12\"'):
        for _ in range(10):
            films.append(random.choice(twelve_films))
    elif(m == '\"15\"'):
        for _ in range(10):
            films.append(random.choice(fifteen_films))
    else:
        for _ in range(10):
            films.append(random.choice(movies))
    
    for f in films:
        output = Template('MATCH (u:User) WHERE u.id = $a\nMATCH (m:Movie) WHERE m.title = $b\nMERGE (u)-[:WATCHED]->(m); \n')
        watched_statements += output.substitute(a=str(x),b=f.title)

    for _ in range(3):
        rate_me = random.choice(films)
        rating = Template('MATCH (u:User) WHERE u.id = $a\nMATCH (m:Movie) WHERE m.title = $b\nMERGE (u)-[:RATED {rating:\"up\"}]->(m); \n')
        thumbed_statements += rating.substitute(a=str(x), b=rate_me.title)

# define franchise relationships
franchises = '''
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
'''
# add in specific users for testing 

# Write to file
f = open('./users.cypher','a')
for user in users:
    f.write(user.cypher())

for movie in movies:
    f.write(movie.m_cypher())

f.write(watched_statements)
f.write(thumbed_statements)
f.write(franchises)
f.close



