## Building Image Analysis Tools for the Human Protein Atlas

Group 11

Project Supervisor: Wei Ouyang

Wilma Brogren, Simon Jernselius, Erik Lyrén, Hugo Olsson, Chul Woo

-----
## Aim
* Create computational tools for facilitating data analysis and exploration at HPA
* 5 ImJoy plugins


-----
## Background: The HPA and ImJoy

 * HPA founded in 2003 in Sweden
 * Consists of six atlases
 * Cell Atlas - images of 12 813 genes
 * AI/Deep learning for automated image analysis
 * ImJoy for building AI tools

<img style="width: 200px; height: 200px;" src="https://raw.githubusercontent.com/oeway/tools-for-hpa/main/assets/hpa-logo.jpeg"></img>
<img style="width: 200px; height: 200px;" src="https://imjoy.io/static/img/imjoy-icon.png"></img>

<h9>Image Source: https://github.com/imjoy-team, https://twitter.com/ProteinAtlas/photo</h9>
-----
## Overall methodology
* Literature study
* Basics in deep learning, AI, machine learning, image analysis, protein-protein interaction
* Different programming languages (ImageJ macro, Python, Javascript, HTML/CSS)
* Build individual plugins
* Analyze results


-----
## Plugin #1
ImageJ
-----
## Background: ImageJ

* Easy to use
* Contains many plugins
* Free & Open Source

<img style="width: 300px; height: 300px;" src="https://raw.githubusercontent.com/oeway/tools-for-hpa/main/assets/iamgeJ_logo.png"></img>
-----
## Methods: ImageJ
* Extract ID and location 
* Segmentation
* Analyze the green channel


<img style="width: 200px; height: 200px;" src="https://raw.githubusercontent.com/oeway/tools-for-hpa/main/assets/rgb_cell.png"></img>

<img style="width: 600px; height: 200px;" src="https://raw.githubusercontent.com/oeway/tools-for-hpa/main/assets/rbg_split.png"></img>

<img style="width: 400px; height: 200px;" src="https://raw.githubusercontent.com/oeway/tools-for-hpa/main/assets/rbg_split_3.png"></img>
-----

<!-- .slide: data-state="ij-macro-1" -->
## Try ImageJ Macro

A basic ImageJ macro example:
<div id="macro-editor-1"></div>

-----
## Results: ImageJ

<img style="width: 900px; height: 600px;" src="https://raw.githubusercontent.com/oeway/tools-for-hpa/main/assets/Average%20Intensity%20Located%20in%20Mitochondria.png"></img>
<img style="width: 900px; height: 600px;" src="https://raw.githubusercontent.com/oeway/tools-for-hpa/main/assets/Average%20Intensity%20Located%20in%20Centrosome.png"></img>


-----
## Possible Improvements

* Code it on Javascript
* Entry for category selection

-----
## Plugin #2
Annotation tool
-----
<!-- .slide: data-state="kaibu-annotation" -->
## Background Annotation tool
* Displaying and annotating HPA images
* User driven data collection
* Covid-19 impact

<img style="width: 600px; height: 500px;" src ="https://raw.githubusercontent.com/oeway/tools-for-hpa/main/assets/Annotation%20tool%20for%20HPA%20presentation%20pic.PNG"></img>



<!--<div id="kaibu-window" style="display: inline-block;width: 100%; height: calc(100vh - 200px);"></div>-->
-----
## Methods Annotation tool
* Kaibu - display and annotation
* using python to create csv-file
* prompts and buttons
* saving to console

<img style="width: 400px; height: 400px;" src ="https://raw.githubusercontent.com/oeway/tools-for-hpa/main/assets/url-creator.PNG"></img>
<img style="width: 400px; height: 100px;" src ="https://raw.githubusercontent.com/oeway/tools-for-hpa/main/assets/Kaibu.PNG"></img>


-----
## Annotation Demo
<button class="button" onclick="runAnnotationDemo()">Run Annotation Demo</button>

<div id="annotation-demo-window" style="display: inline-block;width: 100%; height: calc(100vh);"></div>
-----
## Plugin #3
Feature Visualization of Protein Images in Mitochondria
-----
## Background: Feature Visualization of Protein Images in Mitochondria
* Main idea: extract information from, and reveal patterns among images
* Scientific field within deep learing
* Built upon Neural Networks

<img style="width: 400px; height: 150px;" src =https://raw.githubusercontent.com/oeway/tools-for-hpa/main/assets/Workflow%20CNN.jpg></img>

-----
## Methods: Feature Visualization of Protein Images
* Downloading images from HPA
* Keras & Tensorflow 2 for construction of model
* DenseNet 121
* CSV file to HPA UMAP @ ImJoy
<img style="width: 400px; height: 300px;" src="https://raw.githubusercontent.com/oeway/tools-for-hpa/main/assets/UMAP%20cluster.jpg"></img>

-----
## Possible Improvements

* More data
* URL uploading

-----
## Classification Demo

<button class="button" onclick="runClassificationDemo()">Run Classification Demo</button>
-----
## Plugin #4
## Interactive classification for HPA-UMAP 
-----
## Background Uniform Manifold and Projection (UMAP)
* Reduces a data set into lower dimensions
* Higher dimensional data as plot features

-----
## Plotly Demo
<button class="button" onclick="oneButtonTwoFunctions()">Run feature visualizer</button>



<div id="FVHPAUMAP" style="display: inline-block;width: 50%; height: calc(100vh)";></div>
<div id="ExcRes" style="display: inline-block;width: 50%; height: calc(100vh)";></div> 

-----
## Plugin #5
## Protein-Protein Interaction Network
-----
## Background: Protein-Protein Interaction Networks
* Graph containing nodes and edges
* Biologically essential interactions
* Find novel protein functions
* Understand disease mechanisms
* Allocate drug targets


<img style="width: 400px; height: 300px;" src="https://raw.githubusercontent.com/oeway/tools-for-hpa/main/assets/Sk%C3%A4rmklipp.JPG"></img>
-----
## Methods: PPI Network
* STRING for data
* Cytoscape.js and Cise for layout
* Nodes and edges turned to buttons
* UMAP CSV file used for images

<img style="width: 400px; height: 300px;" src="https://raw.githubusercontent.com/oeway/tools-for-hpa/main/assets/Sk%C3%A4rmklipp.JPG"></img>
-----
## PPI Demo

<button class="button" onclick="runPPIDemo()">Run PPI Demo</button>

<div id="ppi-demo-window" style="display: inline-block;width: 100%; height: calc(100vh);"></div>
-----
## Conclusions
* 4 image analysis tools. One new feature.
* Working with the HPA to provide quantitative information and data.
* Work in progress. Crowd-sourced science solutions. 
* Added functionality. Little HPA interaction. 
* Great variation. More useful, multifunctional and accessible. 
* Improvements. Learnt programming. Could always be better.
* New possibilities. Be of help to many. 


-----
## <img src="https://cdn.discordapp.com/emojis/493847827118555146.gif?v=1" alt="blob left" style="width:100px;height:100px;"> Hope you ImJoyed it! <img src="https://cdn.discordapp.com/emojis/492776678742032395.gif?v=1" alt="blob right" style="width:100px;height:100px;">




<!-- startup script  -->
```javascript execute

async function runClassificationDemo(){
    const c = await api.getPlugin("https://imjoy.io/#/app/?p=imjoy-team/imjoy-plugins:HPA-UMAP")
    await c.run()
}

async function oneButtonTwoFunctions(){
  runFeatVisHPAUMAP()
  runExclusionResult()
}

async function runExclusionResult(){
  const p1 = await api.createWindow({src: "https://github.com/oeway/tools-for-hpa/blob/main/assets/ResultOfExclusion.imjoy.html", window_id: 'ExcRes'})
}

async function runFeatVisHPAUMAP(){
  const p2 = await api.createWindow({src: "https://github.com/oeway/tools-for-hpa/blob/main/assets/FeatVisHPA-UMAP.imjoy.html", window_id: 'FVHPAUMAP'})
}
async function runPlotlyDemo(){
  const p = await api.getPlugin("https://github.com/oeway/tools-for-hpa/blob/main/assets/plotly-demo.imjoy.html")
  await p.run()
}
async function runPPIDemo(){
     //const p = await api.getPlugin("https://github.com/oeway/tools-for-hpa/blob/main/assets/ppinetwork.imjoy.html")
     //await p.run()
     const w = await api.createWindow({src: "https://github.com/oeway/tools-for-hpa/blob/main/assets/ppinetwork.imjoy.html", window_id: 'ppi-demo-window'})
}

function startImageJ(){
  api.createWindow({src:"https://ij.imjoy.io", name:"ImageJ.JS"})  
}

async function initializeMacroEditor(editor_container, code){
    const editorElm = document.getElementById(editor_container);
    if(!editorElm) throw new Error("editor container not found: " + editor_container)
    editorElm.style.width = '90%';
    editorElm.style.display = 'inline-block';
    editorElm.style.height = 'calc(100vh - 200px)';
    // force update the slide
    Reveal.layout();
    let editorWindow;
    const config = {lang: 'javascript'}
    config.templates = [
        {
          name: "New",
          url: null,
          lang: 'javascript',
        },
        {
          name: "Sphere",
          url: "https://wsr.imagej.net/download/Examples/Macro/Sphere.ijm",
          lang: 'javascript',
        },
        {
          name: "OpenDialog Demo",
          url: "https://wsr.imagej.net/download/Examples/Macro/OpenDialog_Demo.ijm",
          lang: 'javascript',
        },
        {
          name: "Overlay",
          url: "https://wsr.imagej.net/download/Examples/Macro/Overlay.ijm",
          lang: 'javascript',
        }
      ]
    config.ui_elements = {
      run: {
          _rintf: true,
          type: 'button',
          label: "Run",
          icon: "play",
          visible: true,
          shortcut: 'Shift-Enter',
          async callback(content) {
              try {
                  let ij = await api.getWindow("ImageJ.JS-" + editor_container)
                  if(!ij){
                      //put the editor side by side
                      editorElm.style.width = '38.2%';
                      const ijElm = document.createElement('div');
                      ijElm.id = 'imagej-' + editor_container
                      ijElm.style.display = 'inline-block';
                      ijElm.style.width = '61.8%';
                      ijElm.style.height = editorElm.style.height;
                      editorElm.parentNode.insertBefore(ijElm, editorElm.nextSibling);
                      ij = await api.createWindow({src:"https://ij.imjoy.io", name:"ImageJ.JS-" + editor_container, window_id: 'imagej-' + editor_container})
                  }
                  await ij.runMacro(content)
              } catch (e) {
                  api.showMessage("Failed to run macro, error: " + e.toString());
              } finally {
                  editorWindow.updateUIElement('stop', {
                      visible: false
                  })
                  editorWindow.setLoader(false);
                  api.showProgress(100);
              }
          }
      },
    }
    editorWindow = await api.createWindow({
        src: 'https://if.imjoy.io',
        name: 'ImageJ Script Editor',
        config,
        window_id: editor_container,
        data: {code}
    })
}

Reveal.addEventListener('ij-macro-1', async ()=>{
    const code = `put code here`
    initializeMacroEditor('macro-editor-1', code)
})


<!--Reveal.addEventListener('kaibu-annotation', async function(){-->
  // load the web app via its URL
  <!--viewer = await api.createWindow({src: "https://kaibu.org/#/app", window_id: "kaibu-window"})-->
  // call api functions directly via RPC
  // add an image layer
  <!--await viewer.view_image("https://images.proteinatlas.org/61448/1319_C10_2_blue_red_green.jpg")-->
  // add an annotation layer
  <!--await viewer.add_shapes([], {name:"annotation"})-->
<!--})-->
async function runAnnotationDemo(){
     const e = await api.createWindow({src: "https://github.com/oeway/tools-for-hpa/blob/main/assets/Annotation tool for HPA 2.0.imjoy.html", window_id: 'annotation-demo-window'})
}
```
 


 
