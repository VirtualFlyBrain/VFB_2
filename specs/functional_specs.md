# VFB 2.0 Functional Spec

## Overview

### Starting points: searching and browsing.

Users come to our site with limited information - perhaps a name or abberviation that refers to a neuron class or brain region, or the name of transgene.  There is no guarentee that the name they have is an official one.  They may even come with no names at all, but with an image within which they can point to a region of interest.  Given these starting points, the first aim of the site is allow users to rapidly focus in on a relevant term refering to their object of interest.   There are two main mechanisms for this:

* [Auto-suggest based search](#search).  This needs to work across a broad collection of synonyms, as well as via official names.  It needs to be independent of word order (which users cannot always predict). It needs to be tuned so that exact matches float to the top.  It needs to provide contextual information for hits

* [Pointing and clicking on regions of images](#)
 
### Term Information

Once a focus term has been chosen.  Basic information about that term should be displayed (see [Term Info](#terminfo).   As well as directly
linked information, it should include some simple inferences.  It should include linked images wherever possible.

### Querying

Once users have a relevant focus term, queries allow them to find relevant, biologically related information.

### Results pages

### Refinement


## Search

Rapid auto-suggest searching across all(?) content:

anatomy
genetic features

In future
 - GO terms (for function?)
 - behavioral/neural-function phenotype terms
 - chemicals?
 
 Autosuggest will be well tuned ([see spec here](auto_suggest_spec.md)), so that a second results page is not necessary
 Autosuggest will give feedback on hits (definitions; official names (if synonym hit)) to allow users to rapidly assess suggestions for suitablity.
 
[Search - technical spec](tech_specs.md#search)
 
## Browsing

The user will be able to browse from one (focus) term to another by:
  - pointing and clicking on regions in the image browser, or on an adjacent tree. 
  - Via copious internal links

Iterative browsing must always be possible: The user must never reach a dead-end page - one with no obvious paths to somewhere else relevant to the current focus term.

### Trees
  
####  Tree display specs

Allow multiple inheritance - reflecting the structure of the underlying ontology.
display is\_a and part\_of relationships only


#### Specs or interaction with trees
  

 

## Term Info

Information about a term.  A term may be 
 - a class 
   - (of cells, anatomy, genetic feature(?))
 - an individual
   - anatomical structure

### Asserted information

name
definition
definition references
comments
synonyms
relationships  (objects hyperlinked)

### graphs

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

### subclasses and parts

Multiple tabs (below)

To decide: Lists or trees?
Lists have the advantage that tables can show more information about terms than trees.  They could even be identical to anatomy search results pages.
Trees have the advantage of providing a bit more context.  May have to combine parts and subclasses to generate useful trees.

## Queries:

Roughly as now for anatomy,  but add references and move subclasses and parts to precomputed tabs.

## Image browser

### 2D
Current functionality basically good.  Needs better controls.

## Social layer

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
