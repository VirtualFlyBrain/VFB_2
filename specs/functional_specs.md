# VFB 2.0 Functional Spec

STATUS: DRAFT

This document is intended as a description of how the site functions and of (roughly) how it looks. Each section should link to a relevant section in the technical specs doc\*, detailing how the site works under the hood.
(* link as tech\_specs.md#\<subhead in lowercase with underscores>)

## Overview

### Starting points and browsing.

Users come to our site with limited information - perhaps a name or abberviation that refers to a neuron class or brain region, or the name of transgene.  There is no guarentee that the name they have is an official one.  They may even come with no names at all, but with an image within which they can point to a region of interest.  Given these starting points, the first aim of the site is allow users to rapidly focus in on a relevant term refering to their object of interest.  There are two main mechanisms for this:

* [Auto-suggest based search](#autosuggest_search)
 * A well tuned, auto-suggest based search 
* [Pointing and clicking on regions of images](#)

All content pages are potential landing pages, so users should always be able to search and browse from them. Iterative browsing must always be possible: The user must never reach a dead-end page - one with no obvious paths to somewhere else. All pages should have multiple internal links to related content to allow for browsing as well as access to muptiple canned queries and an autosuggest search box.
 
### Term Information

Once a focus term has been chosen.  Basic information about that term should be displayed (see [Term Info](#term_info)).   As well as directly linked information, it should include some simple inferences.  It should include linked images wherever possible.

### Querying

Once users have a relevant focus term, queries allow them to find relevant, biologically related information.

### Results pages

These should supply information for users to rapidly scan through and assess large lists. Providing thumbnails wherever possible is key to this.  Results should also provide some feedback about the reason for a hit + provenance information (refs, dataset of origin).

### Results sorting and Refinement

Long results lists are inevitable.  Lists will only get longer as we add more data.  Users need ways to sort, condense and refine results.  

## Details

### autosuggest search

* Types of objects searched: anatomical structure classes, anatomical structure individuals, transgenes, alleles and genes.  Transgenes, genes and alleles should be limited to those for which we have phenotype or expression data.  Phased release of functionality:  Anatomical structure classes and individuals are the first priority (this part can be used on the olf site).  Transgenes and alleles are priority 2. Work is needed to design pages for these. Genes are priority 3 as there is no direct association between these and annotations, so work on data model is required for this.
* Search should work across names, synonyms and ids.  Other associated fields (e.g. definitions) should not be indexed (this decision may be reviewed in future).  
* Tuning: hits should be independent of word order (which users cannot always predict). Hits to the begining of the name should have a higher priority. Exact matches should have the highest priority.
* Contextual feedback: Users should get some contexual feedback on their hitlitst. A minimal release must include flagging of synonyms vs official names. Complete functionality should include float-over pop-up window of definition and image thumbnail, if available - and also of official name if hit is to synonym.  Pop ups must work very rapidly or they are likely to be ignored.
* Potential Future additions to indexed terms: GO term for anat/neural function/phenotype; Behavioral/neural-function phenotype terms
* [Search - technical spec](tech_specs.md#search)

### Term Info

Information about a term.  A term may be 
 - a class 
   - (of cells, anatomy, genetic feature(?))
 - an individual
   - anatomical structure

#### Asserted information

name
definition
definition references
comments
synonyms
relationships  (objects hyperlinked)

#### graphs

All graphs should be clickable, and answer a specific question:

In tabs:
   - What is it? 
     - follow is_a paths
   - What does it develop from ?
     - follow develops from paths (+ part of?)
   - Where is it? 
     - follow part_of paths   
   - What is it connected to ? 
      - follow synapsed_to/by paths (or innervates /connected to for tracts/neuropils)

#### subclasses and parts

Multiple tabs (below)

To decide: Lists or trees?
Lists have the advantage that tables can show more information about terms than trees.  They could even be identical to anatomy search results pages.
Trees have the advantage of providing a bit more context.  May have to combine parts and subclasses to generate useful trees.

### Queries:
STUB: Roughly as now for anatomy,  but add references and move subclasses and parts to precomputed tabs.

### Image browser

### Trees

Question: Do we keep tree browsing for stacks?
  
####  Tree display specs

Allow multiple inheritance - reflecting the structure of the underlying ontology.
display is\_a and part\_of relationships only


#### Specs or interaction with trees

#### 2D
Current functionality basically good.  Needs better controls.

#### 3D

##### Content Types
* Slices of image data (resliced at least on orthogonal axes)
* Surfaces
* Neurons
* Volume-rendered expression patterns (the most challenging)
  * Could maybe go for the simplest, low resolution version (Maximum Intensity Projection) initially

##### Interaction
* Scene rotation using virtual trackball (around centre of current objects?)
* Zoom (using mouse wheel)
* Ideally panning (using some key+drag combo)
* Hover or click should be able to reveal basic information about an object (just the top object in line of sight)
* Ideally selection (positive and shift-drag for negative) to select multiple displayed items
  * selection should be reflected in a check box in object list

##### Object list
* presently selected objects should be listed in a **table** or **tree hierarchy** synchronised with display
* should have (separate?) check boxes for selection and display
* should include basic info + click through to detail page
* should be sortable by 
  * name
  * content type
  * time added to scene
  amongst other columns


### Social layer

ALL CONTENT SHOULD BE SHAREABLE 

- Dynamically generated content must be reachable via a unique URL
- If URL does not change during browsing, Provide permalinks.

Vote and comment on content.

## Pages

### Image browser + term Info:

As in VFB 1: A term 

#### Focus selection

At any one time, the TermInfo has a single focus -an ontology term,  a genetic feature.  

The focus can be chosen by:
pointing and clicking on in the image browser
clicking on 
 - a related class
 - a thumbnail image
 - an entry in a results table
Searching via auto-suggest

Focus is independent of what is displayed, but can be synced via...

#### Image browser content selection

### Thumbnails for registered Third party data

Must follow a consistent grammar.  i.e. the following should be arranged in the same way wherever they are found.

Link to source (use general one if no link specific to data is available) display name; 


To display with thumbnail or 
License?


### Home/front page

To decide:
  - Do we need a front page?  
  - Or would it be better to have a modified form of the image browsing/term info page with something pretty in the image browser panel? 
  - Could image browser pattern be re-used to allow users to choose a gross nervous system region? 

### Results pages 

Results should include images whever they are available.
 
#### Anatomical query results page

Include example images
