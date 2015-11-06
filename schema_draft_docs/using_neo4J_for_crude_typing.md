
In neo4J, nodes can have multiple labels.  We can use this to add crude typing nodes, using the class hierarchy in the DB.  This sets the label on all subclasses of Neuron:

~~~~~~~~~.cql
MATCH (n:Class)-[:SUBCLASSOF*]->(n2:Class { label : 'neuron' }) SET n:Neuron
~~~~~~~~~

In the query results:

~~~~~~~~~.cql
MATCH (n:Class { label :  'adult antennal lobe projection neuron DL1 adPN' } ) return n
~~~~~~~~~

