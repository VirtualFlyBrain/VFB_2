MATCH p = shortestPath((n1:Class { label : <root term of tree>} )<-[:INSTANCEOF|SUBCLASSOF|RelatedTree*]-(n2:INDIVIDUAL)) 
WHERE n2.short_form IN [<list of individuals on template>] RETURN p;

//Term info + parent classes

MATCH (query:Class { short_form : <shortFormID string>)-[rel:SUBCLASSOF|RELATED]->(superclass:Class),  RETURN query, rel, superclass;

//Query for individual members of class (without OWL prequery) # May be too slow.  In this form, doest pull Type assertions. Could be comined with grouping

MATCH (query:Class { short_form : <shortFormID string>)<-[:INSTANCEOF]-(i:INDIVIDUAL) RETURN query, i;


//Individuals query (with OWL prequery)

MATCH (i:Individual)-[:INSTANCEOF|RELATED]->(typ:Class) WHERE i.short_form IN
 ['OWL prequery results as comma delimited strings'] return i;

// Queries for class context

MATCH (q:Class { label : '<>')-[r:SUBCLASSOF*]->(sc:Class) return q,r, sc;

/// These queries could be tailored to set limits for the highest point in the heirarchy displayed. e.g. for neurons:

MATCH (q:Class { short_form : '<query>' } )-[r:SUBCLASSOF*]->(sc:Class { label: 'neuron' } ) return q,r, sc;

//Queries for ind context

//// Classification
MATCH (q:Individual { short_form : '<query>' } )-[r:INSTANCEOF|SUBCLASSOF*]->(sc:Class { label: 'neuron' } ) return q,r, sc;

//// Location - would be better if could specify a set of relations in second leg.
MATCH (q:Individual { short_form : '<query>' } )-[o:RELATED { label: 'overlaps' } ]->()-[p:RELATED { label: 'part_of' }]->(sp:Class { label: 'adult brain' } ) return q,o,p,sp;  


/// Circuit context queries  - Can set switch for how far to go.

MATCH (q:Class)-[r:RELATED { label : 'synapsed_by' }*1..2 ]->(cp:Class) RETURN r,c,q;

///



