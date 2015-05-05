# VFB 2.0 User stories

STATUS: DRAFT

Users are typically busy, wet-lab biologists who want to be able to rapidly find: 
  - reagents that drive expression in specific neurons, 
  - papers about specific types of neurons,
  - candidate neurons belonging to circuits of interest  
  
They need to be able to sift rapidly through large volumes of information in order to find these.  VFB aims to automate this sifting process as far as possible. Well defined semantics and high quality datasets allow VFB to serve and accurate lists of candidates.  Users then need information and tools to refine these often long lists and to assess the quality of their results. Once users have identified candidate 3D registered images or lists of results,  they need the option to download these in order to be able to use desktop tools for analysis.


__Sarah__

Sarah is a doing a PhD in Drosophila genetics.  She has little neuro background, but has isolated new alleles of a gene, ketchup, which has known alleles with behavioral and neuroanatomical phenotypes:  flies exhibit defects in the recently discovered regurgitation pathway, and have defects in the noduli and associated neurons.  Sarah wants to find other genes whose alleles have similar phenotypes.  She also wants to find images to help her interpret her own image data.  

When she arrives at the site, she's not too sure how it works and so decides to type the gene name in the search box (wouldn't work in VFB1). The auto-suggest brings up a set of alleles and constructs and takes her to report pages for these, allowing her to browse details of the phenotypes. She finds she can click on any of the terms for anatomical structures or behavioral phenotypes to find reports of more alleles causing similar phenotypes.  She also tries a search for nodulus - taking her to a report page with image data, descriptions and referecens and allowing her to search for phenotypes and expression.

__Ayako__

Ayako is postdoc neurobiologist, trying to dissect the circuitry underlying a newly discovered ocellar sensory pathways. She wants to find new candidate neurons in the circuit and to find transgenes to drive expression in these and other neurons in the circuit...

[The story has to outline
      (a) How she will find records for known neurons in this pathway?
          Query by name
          Query by function?
      (b) How she will find known and potential drivers for these neurons?
      (c) How she will find potential circuit partners]

__Giorgio__

Giorgio is a Drosophila neurobiologist who is reasonably experienced at image manipulation.  He has lots of images of single neurons that he want to use to query by image to: 
     (a) Find out if they map to known neurons
     (b) Find known and potential drivers

He follows Greg Jefferis' handy YouTube guide [how did he find this?] to register neurons and generate tracing, which he then uploads to the 'search by image' tool.  This returns ranked lists of blast hits to: clusters(?), single neurons, expression patterns, neural lineage clones [will targets be chosen before query?].  All hits include a link or reference indicating their origin. The hits for single neurons and clusters include mappings to known classes (where there is data). Giorgio clicks on a few links and detailed information about each image and a 3D view of the chosen image in the browser.  He notices a shopping basket icon next to each image and finds he can use this to load up images to view together on the browser, or to bulk download content.  He remembers that his blast results page also had a column with a shopping basket in the header, and uses this to select some more items for the basket.

Giorgio then launches the 3D image browser, which he uses to compare location of hits for drivers, neurons and lineage clones with his own uploaded tracing. While using the browser, he toggles components of the image on and off, and browses descriptions and classifications.
     

     
     
