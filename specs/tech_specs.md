# VFB 2.0 Technical spec

STATUS: DRAFT

## Tech overview

* Web FrameWork:  
   * Boostrap 
      - support for multiple browsers/platforms
      - Choice of templates for header, footer, search results, css.
  * ThymeLeaf:
    * Binding to SOLR => dynamic content
    * Good for rapid protyping 

* Dynamic content and auto-suggest search are provided by OLS SOLR.

* Semantic queries use an Brain query endpoint:
   * POST/GET using JSON.
   * Returns lists of IDs
  
* Term Info is provided by SOLR, based on IDs (from query) or auto-suggest.

* Image viewer:
  * TBD: 

### SOLR

We have provisionally decided to re-use code from [OLS2.0](https://github.com/EBISPOT/OLS).  This takes any set of specified OWL files and stores content as indexed JSON. It is also set up to provide autocomplete tuned in accordance with [VFB 2 spec](https://github.com/VirtualFlyBrain/VFB_2/blob/master/specs/functional_specs.md#autosuggest-search) (THIS STILL NEEDS TO BE CHECKED).

__Limitations of OLS:__

* Doesn't yet support OWL individuals
  *  Extending to support individuals has to be a priority for work with OLS 2 dev(s).

* We need a model for indexing content not (yet) in OWL, e.g. information on features, expression and phenotypes in FlyBase.
  * The easiest way to do this may be to convert to OWL - we are already doing this for some expression pattern data.  But will annotations be tied to individuals or classes? And how well will it scale for query speed?  And how will we manage the current non-owl component of pre-query?

  * An alternative is to extend the SOLR schema to store content from FlyBase, derived from SQL queries.

__Content to index for autocomplete__

* Names, synonyms and IDs for anatomical classes
* Names, synonyms and IDs for anatomical individuals (& clusters?)
* Names, synonyms and IDs for genetic features in FlyBase that have either neuro-expression or neuro-phenotypes (May be represented as OWL classes)
* Behavioural phenotypes ontology terms (?)
* ? Chemicals (based on DoOR mapping of oderants) ?
* Gene Ontology terms for neural function/behaviour ?

__Autosuggest results feedback__

Autosuggest results will include contextual information to help users quickly understand the nature of hits.  This will work via...


### OWL

Semantic description

### Trees & Graphs - re-use code from owltools

