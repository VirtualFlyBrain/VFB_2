
In neo4J, nodes can have multiple labels.  We can use this to add crude typing nodes, using the class hierarchy in the DB.  This sets the label on all subclasses of Neuron:

~~~~~~~~~.cql
MATCH (n:Class)-[:SUBCLASSOF*]->(n2:Class { label : 'neuron' }) SET n:Neuron
~~~~~~~~~

In the query results:

~~~~~~~~~.cql
MATCH (n:Class { label :  'adult antennal lobe projection neuron DL1 adPN' } ) return n
~~~~~~~~~

Crude Typing in label list.  Relationships as SuperClass and relationships Manchester Syntax under superClassDescription:

~~~~~~~~~.js

{
  "data": [
    {
      "graph": {
        "nodes": [
          {
            "id": "9845",
            "labels": [
              "Class",
              "Neuron",
              "VFB",
              "_Class"
            ],
            "properties": {
              "iri": "http://purl.obolibrary.org/obo/FBbt_00067353",
              "short_form": "FBbt_00067353",
              "obo_id": "FBbt:00067353",
              "ontology_name": "vfb",
              "has_children": false,
              "ontology_prefix": "VFB",
              "ontology_iri": "http://purl.obolibrary.org/fbbt/vfb/vfb.owl",
              "label": "adult antennal lobe projection neuron DL1 adPN",
              "is_root": false,
              "is_obsolete": false,
              "superClassDescription": [
                "<a href=\"http://purl.obolibrary.org/obo/RO_0002202\" class='ObjectProperty mansyntax' title=\"http://purl.obolibrary.org/obo/RO_0002202\">develops_from</a> <span class='some'>some</span> <a href=\"http://purl.obolibrary.org/obo/FBbt_00067346\" class='mansyntax Class' title=\"http://purl.obolibrary.org/obo/FBbt_00067346\">neuroblast&nbsp;ALad1</a>",
                "<a href=\"http://purl.obolibrary.org/obo/RO_0002110\" class='ObjectProperty mansyntax' title=\"http://purl.obolibrary.org/obo/RO_0002110\">has_postsynaptic_terminal_in</a> <span class='some'>some</span> <a href=\"http://purl.obolibrary.org/obo/FBbt_00003968\" class='mansyntax Class' title=\"http://purl.obolibrary.org/obo/FBbt_00003968\">antennal&nbsp;lobe&nbsp;glomerulus&nbsp;DL1</a>",
                "<a href=\"http://purl.obolibrary.org/obo/BFO_0000050\" class='ObjectProperty mansyntax' title=\"http://purl.obolibrary.org/obo/BFO_0000050\">part_of</a> <span class='some'>some</span> <a href=\"http://purl.obolibrary.org/obo/FBbt_00003624\" class='mansyntax Class' title=\"http://purl.obolibrary.org/obo/FBbt_00003624\">adult&nbsp;brain</a>",
                "<a href=\"http://purl.obolibrary.org/obo/RO_0002113\" class='ObjectProperty mansyntax' title=\"http://purl.obolibrary.org/obo/RO_0002113\">has_presynaptic_terminal_in</a> <span class='some'>some</span> <a href=\"http://purl.obolibrary.org/obo/FBbt_00007385\" class='mansyntax Class' title=\"http://purl.obolibrary.org/obo/FBbt_00007385\">calyx&nbsp;of&nbsp;adult&nbsp;mushroom&nbsp;body</a>",
                "<a href=\"http://purl.obolibrary.org/obo/RO_0002113\" class='ObjectProperty mansyntax' title=\"http://purl.obolibrary.org/obo/RO_0002113\">has_presynaptic_terminal_in</a> <span class='some'>some</span> <a href=\"http://purl.obolibrary.org/obo/FBbt_00007053\" class='mansyntax Class' title=\"http://purl.obolibrary.org/obo/FBbt_00007053\">lateral&nbsp;horn</a>"
              ],
              "description": [
                "Antennal lobe projection neuron from the ad neuroblast lineage whose dendrites innervate only antennal lobe glomerulus DL1. Neurons of this class are derived from the first larval division of the neuroblast ALad1 (FBbt:00067346) (Yu et al., 2010). The axons of these neurons innervate a small area at the ventroposterior edge of the lateral horn."
              ],
              "synonym": [
                "DL1 adPN"
              ],
              "annotation-comment": [
                "For image, see doi:10.1371/journal.pbio.1000461.g002."
              ]
            }
          }
        ]
      }
    }
  ],
~~~~~~~~~
