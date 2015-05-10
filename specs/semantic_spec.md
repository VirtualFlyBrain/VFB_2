# Semantic spec

__Functional semantic spec:__ A numbered list of questions that should be answerable using the site. This should be phrased in the language of biology - or at least in the language used by biologists. It should not be limited to questions answerable via OWL queries, but should exclude lexical (name-based) searches.  Technical specs should be detailed separately, under each question.

__Technical semantic spec:__ Brief technical details of how queries should work.  This should omit details of how queries might be made to work quickly enough for the site, or be cached so that they do.

1. Given a specified construct, find all the neuron (classes) that are encompassed by the expression pattern of that construct.
    * Technical spec: 
     * Find neuron classes annotated as expressing that construct (OWL: (neuron that 'part of' (some 'expression pattern' that expresses some X); SQL...)
     * If registered images of expression patterns are known - run NBlast prediction of individual neurons that map to expression pattern of X. If these individual neurons are mapped to known neuron classes, return this mapping   
1. Given a specified neuron (class), find all known or predicted direct or indirect circuit partners. Circuit partner prediction is on the basis of proximity of arbor or synapse location via image analysis or direct semantic assertion of synaptic location to some neuropil subdomain (layer, glomerulus, focus etc).  Indirect circuit partner prediction should work directionally 1-2 jumps along known synaptic connections.
    * Technical spec: 
     * Known partners.  OWL 'synapsed to' some X; 'indirectly synapsed to' some X.
     * Predicted partners:
        * OWL: For the specified neuron: Search SubClassOf axioms for assertion of: synaptic location in some 'synaptic neuropil subdomain'; presynaptic location in some synaptic subdomain; postsynaptic  For each subdomain found, query for 
        * Image analysis:
          * TBA:
1. Given a specified neuron (class), list all the drivers known or predicted to be expressed in that neuron.
  * Technical spec:
    * OWL: neuron that part of some '
1. Given a(n uploaded) neuron tracing, predict what neuron class it belongs to / find similar neuron images.
1. Given a(n uploaded) neuron tracing, predict what drivers express in that neuron.
1. Given a region of neuropil, find all neurons with that are kown or predicted to overlap the region or with synapses in that region, optionally specifying pre or post synaptic terminals.
1. Given a neuron class, find all known phenotypes
1. Given a sensory or other neuronal function, find all neurons and genes known or preducted to be capable of carrying out some part of that function.
