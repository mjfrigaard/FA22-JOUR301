---
title: "FA22 - JOUR 301"
description: |
  Welcome to Data Journalism 301!
site: distill::distill_website
---



This is the home page for JOUR 301, Data Journalism. All course materials will be posted on this site.

Instructor: [Martin Frigaard](https://www.martinfrigaard.io/)  
Meeting times: Mon 5:00pm to 7:50pm  
Syllabus: [click here](syllabus.html)  
Upcoming lectures and assignments: [click here](schedule.html)  

## Software requirements

For students enrolled in this course, you will need a computer with a working web browser. Computational requirements for using R & RStudio are described [here](https://support.rstudio.com/hc/en-us/articles/201853926-RStudio-IDE-System-Recommendations), but most modern laptops will run both programs without issue. 

### R

Download a recent version of R [here](https://cloud.r-project.org/)

### RStudio

Download a recent version of RStudio [here](https://rstudio.com/products/rstudio/download/#download)

### Installation Instructions

Instructions for installing R and RStudio are available [here.](https://mjfrigaard.github.io/FA22-JOUR301/resources/install-r-rstudio.html) 

## R packages for this course 

This course requires two packages from Github: 

1. [`goodenuffR`](https://mjfrigaard.github.io/goodenuffR/)  

2. [`sheetcheatR`](https://mjfrigaard.github.io/sheetcheatR/)

Install these packages with the following code in your R console: 

<div class="layout-chunk" data-layout="l-body">
<div class="sourceCode"><pre class="sourceCode r"><code class="sourceCode r"><span><span class='fu'><a href='https://rdrr.io/r/utils/install.packages.html'>install.packages</a></span><span class='op'>(</span><span class='st'>"remotes"</span><span class='op'>)</span></span>
<span><span class='kw'><a href='https://rdrr.io/r/base/library.html'>library</a></span><span class='op'>(</span><span class='va'><a href='https://remotes.r-lib.org'>remotes</a></span><span class='op'>)</span></span>
<span><span class='fu'>remotes</span><span class='fu'>::</span><span class='fu'><a href='https://remotes.r-lib.org/reference/install_github.html'>install_github</a></span><span class='op'>(</span><span class='st'>"mjfrigaard/goodenuffR"</span><span class='op'>)</span></span>
<span><span class='fu'>remotes</span><span class='fu'>::</span><span class='fu'><a href='https://remotes.r-lib.org/reference/install_github.html'>install_github</a></span><span class='op'>(</span><span class='st'>"mjfrigaard/sheetcheatR"</span><span class='op'>)</span></span></code></pre></div>

</div>


### Using `goodenuffR` for homework assignments 

Follow these instructions to use the `goodenuffR` package for your homework assignments: 

1. Install and load the `goodenuffR` package

<div class="layout-chunk" data-layout="l-body">
<div class="sourceCode"><pre class="sourceCode r"><code class="sourceCode r"><span><span class='kw'><a href='https://rdrr.io/r/base/library.html'>library</a></span><span class='op'>(</span><span class='va'><a href='https://mjfrigaard.github.io/goodenuffR/'>goodenuffR</a></span><span class='op'>)</span></span></code></pre></div>

</div>


2. Create a project folder: 

Navigate to your course `hw` folder and enter the `project_name` and `folder_path` (see examples below): 

<div class="layout-chunk" data-layout="l-body">
<div class="sourceCode"><pre class="sourceCode r"><code class="sourceCode r"><span><span class='fu'>goodenuffR</span><span class='fu'>::</span><span class='fu'><a href='https://mjfrigaard.github.io/goodenuffR/reference/goodenuff_project.html'>goodenuff_project</a></span><span class='op'>(</span></span>
<span>  project_name <span class='op'>=</span> <span class='st'>"wk3-assignment"</span>, </span>
<span>  folder_path <span class='op'>=</span>  <span class='st'>"/Users/mjfrigaard/FA22-JOUR-301/hw/"</span><span class='op'>)</span></span></code></pre></div>

</div>


3. After your new RStudio session opens, create the project files using `goodenuffR::goodenuff_files()`.

<div class="layout-chunk" data-layout="l-body">
<div class="sourceCode"><pre class="sourceCode r"><code class="sourceCode r"><span><span class='fu'>goodenuffR</span><span class='fu'>::</span><span class='fu'><a href='https://mjfrigaard.github.io/goodenuffR/reference/goodenuff_files.html'>goodenuff_files</a></span><span class='op'>(</span><span class='op'>)</span></span></code></pre></div>

</div>


You should see the following files: 

<div class="layout-chunk" data-layout="l-body">

```r
FA22-JOUR-301/
    hw/
      wk3-assignment/
                ├── CITATION
                ├── LICENSE
                ├── README.Rmd
                ├── code
                │   ├── 01-import.R
                │   ├── 02-tidy.R
                │   ├── 03-wrangle.R
                │   ├── 04-visualize.R
                │   ├── 05-model.R
                │   ├── 06-communicate.R
                │   └── runall.R
                ├── data
                │   ├── README.md
                │   └── raw
                ├── docs
                │   ├── changelog.txt
                │   ├── manuscript.Rmd
                │   └── notebook.Rmd
                ├── requirements.txt
                ├── results
                │   ├── figures
                │   ├── manuscript
                │   └── tables
                └── wk_3assignment.Rproj
```

</div>



### Additional R packages used in this course

`dplyr`, `tidyr`, `fs`, `forcats`, `stringr`, `rmarkdown`, `lubridate`, 
`ggplot2`, `cowplot`, `gapminder`, `GGally`, `gganimate`, `ggiraph`, `ggdendro`,
`ggdist`, `ggforce`, `ggplot2movies`, `ggrepel`, `ggridges`, `ggthemes`, 
`gifski`, `glue`, `knitr`, `learnr`, `naniar`, `margins`, `MASS`, `Matrix`, 
`nycflights13`, `palmerpenguins`, `patchwork`, `rgdal`, `rmarkdown`, `umap`, 
`xaringan`, `distill`

Install these packages with the following lines of code in your R console:

<div class="layout-chunk" data-layout="l-body">
<div class="sourceCode"><pre class="sourceCode r"><code class="sourceCode r"><span><span class='fu'><a href='https://rdrr.io/r/utils/install.packages.html'>install.packages</a></span><span class='op'>(</span><span class='fu'><a href='https://rdrr.io/r/base/c.html'>c</a></span><span class='op'>(</span><span class='st'>"dplyr"</span>, <span class='st'>"tidyr"</span>, <span class='st'>"fs"</span>, <span class='st'>"forcats"</span>, <span class='st'>"stringr"</span>, <span class='st'>"rmarkdown"</span>,</span>
<span>  <span class='st'>"lubridate"</span>, <span class='st'>"ggplot2"</span>, <span class='st'>"cowplot"</span>, <span class='st'>"gapminder"</span>, <span class='st'>"GGally"</span>, <span class='st'>"gganimate"</span>, </span>
<span>  <span class='st'>"ggiraph"</span>, <span class='st'>"ggdendro"</span>, <span class='st'>"ggdist"</span>, <span class='st'>"ggforce"</span>, <span class='st'>"ggplot2movies"</span>, <span class='st'>"ggrepel"</span>, </span>
<span>  <span class='st'>"ggridges"</span>, <span class='st'>"ggthemes"</span>, <span class='st'>"gifski"</span>, <span class='st'>"glue"</span>, <span class='st'>"knitr"</span>, <span class='st'>"learnr"</span>, <span class='st'>"naniar"</span>, </span>
<span>  <span class='st'>"margins"</span>, <span class='st'>"MASS"</span>, <span class='st'>"Matrix"</span>, <span class='st'>"nycflights13"</span>, <span class='st'>"palmerpenguins"</span>, <span class='st'>"patchwork"</span>,</span>
<span>  <span class='st'>"rgdal"</span>, <span class='st'>"rmarkdown"</span>, <span class='st'>"umap"</span>, <span class='st'>"xaringan"</span>, <span class='st'>"distill"</span></span>
<span><span class='op'>)</span><span class='op'>)</span></span></code></pre></div>

</div>


```{.r .distill-force-highlighting-css}
```
