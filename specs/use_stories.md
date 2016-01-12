# VFB 2.0 User stories

STATUS: DRAFT

Users are typically busy, wet-lab biologists who want to be able to rapidly find: 
  - reagents that drive expression in specific neurons, 
  - known information and papers about specific types of neurons,
  - candidate neurons belonging to circuits/functional systems of interest
  
They need to be able to sift rapidly through large volumes of information in order to find these.  VFB aims to automate this sifting process as far as possible. Well defined semantics and high quality datasets allow VFB to serve and accurate lists of candidates.  Users then need information and tools to refine these often long lists and to assess the quality of their results. Once users have identified candidate 3D registered images or lists of results,  they need the option to download these in order to be able to use desktop tools for analysis.

__Encouraging casual use__

People use FB at meetings all the time during talks to find genes/alleles.  Needs to be fast - problem for large volumes that are coming.

__In context help__

...

### Notes on entry points

TBA: Use cases for users coming from Google & FlyBase*

Notes on links from FlyBase: linkout for images from expression.  Also link from PubMed.  Also think through other linkout mechanisms from FlyBase, but this will require more pages e.g. for contructs, alleles, genes.  Links from first FB hit page to images?

TBA:  entry points by functional system.  
- We already have the semantics to hook elements of functional systems together: neurons, phenotypes, GO annotations.  
- Labelled schematics could provide 

__Possible external sources of users stories?__

- Google groups 
- Community forum (TBA)
- Interviews during UX testing


### Plausible fictional use cases

__Sarah__

Sarah is a doing a PhD in Drosophila genetics.  She has little neuro background, but has isolated new alleles of a gene, *ketchup*, which has known alleles with behavioral and neuroanatomical phenotypes:  flies exhibit defects in the recently discovered regurgitation pathway, and have defects in the noduli and associated neurons.  Sarah wants to find other genes whose alleles have similar phenotypes.  She also wants to find images to help her interpret her own image data.  

When she arrives at the site, she's not too sure how it works and so decides to type the gene name in the search box (wouldn't work in VFB1). The auto-suggest brings up a set of alleles and constructs and takes her to report pages for these, allowing her to browse details of the phenotypes. She finds she can click on any of the terms for anatomical structures or behavioral phenotypes to find reports of more alleles causing similar phenotypes.  She also tries a search for nodulus - taking her to a report page with image data, descriptions and referecens and allowing her to search for phenotypes and expression.

__Critique of story__ - a naive fly user would start by searching for a gene in FlyBase.

__Ayako__

Ayako is a postdoc neurobiologist dissecting a circuit involved in ocellar sensory pathways. She has used available GAL4 drivers and live calcium imaging to measure the activity of component neurons following direct stimulation of the ocelli and following activation of occellar sensory neurons using TRPA. She wants to find more candidate neurons in the circuit and to find drivers to more precisely target both these neurons and known component.

- Aim - find out what is known about named neuron:
   -  She searches using the name of a neuron, finds a description, some references, a list of neuropils innovated and a set of images {this is a best case scenario, need to map more single neuron images}.  She adds the neurons to the basket of images to view on the browser.
      - Aim - find new drivers for this neuron.
    	   - From the neuron term info, she directly searches for transgenes expressed in this neuron, but list only includes the set she is familiar with.
	   - From the neuron term info, she searches for transgenes known to be expressed in the innervated neuropils*.  She selects some images from these to display on the browser.
	   - Using the images of the neuron, she uses search by image (via N-Blast) to search for candidate transgenes that express in this neuron { Not yet implemented }. She selects some of these to display on the browsers, along with images of the neuron.
	   - Having found some candidates, she views these on the image browser in combination with the single neuron images in order to assess whether they are likely to drive expression in this neuron type.
      - Aim - find potential circuit partners for this neuron. After each step, candidates are selected for viewing on image browser.
         - Query for neurons with synaptic terminals in same neuropils - may turn up potential circuit partners*. 
         - Query for images of neurons in each of these neuropils - may turn up potential circuit partners*.
         - Using image
              - Nblast for similar neuron (Loooking outside the cluster => partial simialrity, may find circuit partners of branches in the circuit)*
              - Search by image for potential curcuit partners based on arbor { Functionality not yet implemented }
         - Having found some candidates, she views these in combination with the original neurons on the iamge browser to assess whether they really are likely circuit partners.
         - Having identified likely circuit partners, she uses search by image to find potential drivers.

 * Would she really think to try this strategy?

_Critique:_

The story involves search strategies that users are probably unlikely to think of - e.g. the queries of neuropils.  Could we provide shortcuts to these?  e.g. If neuron overlaps or innervates synaptic neuropil subdomains - provide shortcut to queries for neurons/transgenes across all those subdomains?

__Giorgio__

Giorgio is a Drosophila neurobiologist who is reasonably experienced at image manipulation.  He has lots of images of single neurons that he want to use to query by image to: 
     (a) Find out if they map to known neurons
     (b) Find known and potential drivers

He follows Greg Jefferis' handy YouTube guide [how did he find this?] to register neurons and generate tracing, which he then uploads to the 'search by image' tool.  This returns ranked lists of blast hits to: clusters(?), single neurons, expression patterns, neural lineage clones [will targets be chosen before query?].  All hits include a link or reference indicating their origin. The hits for single neurons and clusters include mappings to known classes (where there is data). Giorgio clicks on a few links and detailed information about each image and a 3D view of the chosen image in the browser.  He notices a shopping basket icon next to each image and finds he can use this to load up images to view together on the browser, or to bulk download content.  He remembers that his blast results page also had a column with a shopping basket in the header, and uses this to select some more items for the basket.

Giorgio then launches the 3D image browser, which he uses to compare location of drivers, neurons and lineage clones with his own uploaded tracing. While using the browser, he toggles components of the image on and off, and browses descriptions and classifications.

### Use case-based critique of VFB 1
by _Marta Costa_

Looking for a line that expresses in a specific neuron type (to see in viewer), and other alternative lines, what data are there on these neurons.

Unable to search for VT27938-GAL4, which I know labels AMMC-B1a neurons. Alternatively, searched for AMMC-B1a neuron from homepage. 
Three tabs on top, but both ‘Subclasses’ and ‘Parts of’ have no results. Could these be greyed out if there are no results? Wasted time clicking.

Search term is now shown on header, almost on top of other things: doesn’t look good. I’d expect the term that I searched with to be shown on the same panel, “search for anatomy…”) where I’m looking at.
No images are shown, so I choose the parent class: AMMC-B1 neuron
99 results (header sentence now pushes out of frame.)
Create composite view with 3 of them: AMMc in green, can’t change colour. 1 neurons also in green. Can’t change props of anatomy either, to make it more transparent.
Top right Help link doesn’t work.

I’d like to be able to see more info about the hits: what cluster they’re in? To see if there might be more than one subtype, see more than 3 neurons at a time in the viewer,see all of the neurons from a cluster at one time. 
Essentially: I’d like each neuron to have a tick box so that it could be selected either to see in viewer, or download the csv with info or download the registered images.
These are options that should be extended to other query lists.
(Implicit: able to sort table)

If I want to find other similar neurons to a particular one. Show a link to NBLAST on the fly. 
If I choose a neuron to NBLAST (Cha-F-400160): Each of the top 10 hits has a link to see the neuron in VFB, but I’d like to be able to ‘import the 10 hits’ and look at them at the same time. 
This would be related to allowing searching by image name (or FC neuron). there should be a general way to look at a group of neurons, by uplaoding a list of names, for example.

Can’t really go any further through here, as I don’t have access to cluster pages.
So go back, click on AMMC zone B and images of neurons clustered by shape.
In the 3 clusters, some neurons are of the right type, others not, but again there is no way to select the neurons in one go.

I’d like to be able to search by reference: I know of a paper that defines a few cell types, and want to find them quickly.

__Comments__

Lots of useful information and ideas in here to be mined

Functionality TBA:

1. Search by transgene name
1. Grey out queries with no results (or give some indication of number of hits before running)
1. Integrate links to NBLAST-on-the-fly
1. Sorting of results tables (fixed in VFB 1.5)
1. Link individual neurons to clusters (Need pages for clusters first).
2. Improve display of multiple images in image browser and control over what is displayed  (largely or completely fixed in VFB1.5)
     

     
     
