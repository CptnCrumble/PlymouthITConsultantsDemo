# Plymouth IT Consultants Demo
Repo to share example code that compliments the Graph Databases coursework. For demonstration purposes only.
# users.cypher
The contents of this file can be pasted into a neo4j browser to create an example database that shows our proposed data model and will allow you to run our proposed recommendation system.  
# master_algorithm.cypher
This is the CQL code that makes up our recommendation system, each of the 3 algorithms is in its own call block.  
The 'LIMIT' discussed in our report are applied at the end of the query.  
If you wish to change the user id the algorithm is targeting make sure to change it at all 4 locations in the query.  
# cypherMaker.py
  This is the programme that creates the users.cypher file. Movie nodes/relationships are hardcoded whilst User nodes/relationships are randomly generated.  
  To generate a larger set of users you can modify line 106.
