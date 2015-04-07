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
STUB: Roughly as now for anatomy, but add references and move subclasses and parts to precomputed tabs.

### Image browser

Would ideally consist of a single viewer providing a 3D context view as the main window with sub-windows overlaid providing metadata as well as an integrated slice viewer.

The sub-windows will consist of a large data display window (most likely at the bottom of the screen if not outside viewer confines - to be discussed) to display detailed descriptions or results. Smaller sub-windows would consist of:
* 2D slice viewer,
* Selected point/area results window (maybe use large data window for this?),
* Currently displayed,
* Anatomy,
* Free search.

#### 3D main window

The main 3D view should provide a surface 'glass' rendered background with selected objects viable inside:
* multiple (unlimited within reason) items must be able to be overlayed.
* Anatomy should appear as solid surface rendered objects with the option to adjust transparency if required.
* Expression data should aim to be rendered as particles rather than attempting to give it an artificial surface - This will need to be investigated further dependent on trials.
* Neurons could be handled as either anatomy or expression dependent on the quality of the data and discussion based on trials.

Within the 3D view a virtual frame will indicate the current slice being shown in the 2D slice viewer (see below).

#### Interaction
* Scene rotation using virtual trackball (around centre of current objects?)
* Zoom (using mouse wheel)
* Ideally panning (using some key+drag combo)
* Hover or click should be able to reveal basic information about an object (just the top object in line of sight)
* Ideally selection (positive and shift-drag for negative) to select multiple displayed items
  * selection should be reflected in a check box in object list

#### Point of interest

There will be a rendered marker indicating the current selected point - this is also the XYZ central point for navigation purposes. 

Note: The initial suggestion for the 3D marker is three 2D (but solid with a minimal 3D volume) circles on the 3 planes appearing as a circle with a cross from the major planes. This would be shown a circle only on the slice viewer to avoid obscuring the actual point of interest.

The point of interest should be manually selectable on either the 3D of 2D views and be maintained in sync (moving the slice view if necessary). In addition adjusting the x, y or z controls will update the point of interest and views accordingly.

##### Selected area/point
a separate sub-window will show all data available for the selected point of interest this will consist of:
* any anatomy at this position,
* any expression pattern / neuron individuals with thresholded expression at this point.
Although anatomy data should be relatively limited the individuals maybe numerous (if not now then soon) so will require a nested view / tree or some sort to make results easier to interpret.

Discussion: The point of interest could be a single voxel, a voxel with a fixed radius or of user variable size? Is 2D or 3D area selection practical or useful in a 3D volume?

#### 2D Slice viewer

This will be a sub-window which can be varied in size control of which is provided by the main windows (3D viewers) controls.
The only control in this window will be a vertical distance slider should be provided at one side to allow the user to scroll in depth without adjusting the point of interest. 
Ideally when the mouse is over the slice viewer the mouse scroll should adjust the distance for more familiar navigation. 
The viewer will display the same objects as with the 3D browser and colours must be consistent. 
Selection of a point on the slice viewer should update the pint of interest in all views and the selected results window.

Discussion:  I suggest limiting to fixed plane views (frontal/sagittal/transverse) to simplify the calculations as most users barely move beyond the standard frontal plane. It would also be nice to enable multiple slice views to be opened enabling multiple syncronised planes to be viewed simultaneously. This could be managed on the 3D main window by differing line styled frames. 
  
#### Anatomy

Allow multiple inheritance - reflecting the structure of the underlying ontology.
display is\_a and part\_of relationships only

Any term that is available in the current template should have a selection box and the corresponding ticked colour background if selected. 

Discussion: should we offer a link if available in another template?

clicking on any anatomy title should display the full record in the large data display window.

Discussion: Do we have a standard anatomy tree covering all anatomy or just that available in the currently displayed template or several sub trees defined by stage / area on display?

#### Currently Displayed 

Shows all currently displayed items. This will consist of colour key with titles including:
* template, 
* anatomy, 
* individuals.

Each title when clicked will open full details in the large data display window.

* should be sortable by 
  * name
  * content type
  * time added to scene
  amongst other columns

The key colours will provided from a standard colour list in selection order (enables some user choice through order) with an option to change the used list in this window.

Discussion: providing a fixed colour list resolves many issues but we should provide a few colour options to enable for preference and colour blindness etc. Lab spaced as well as standard plot (matlab, etc.) standard colours (jet, hot, hsv, etc.) are available but we do need a colour blindness appropriate option (needs investigation). 

Discussion: should we handle selection as separate from displayed and have separate list/checkboxes (can more than one item be selected without adding to display)?

### Social layer

ALL CONTENT SHOULD BE SHAREABLE 

- Dynamically generated content must be reachable via a unique URL
- If URL does not change during browsing, Provide permalinks.

Discussion: Vote and comment on content. How can we handle this and what do we want it to acheve?

## Pages

### Image browser + term Info:

As in VFB 1: A term 

#### Focus selection

At any one time, the TermInfo has a single focus -an ontology term, a genetic feature.  

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

Results should include images whenever they are available.
 
#### Anatomical query results page

Include example images

