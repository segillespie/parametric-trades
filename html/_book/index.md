---
title: "Design of Experiments for Modeling and Simulation"
output: 
    bookdown::gitbook:
        config:
            toc:
                collapse: chapter
                before: |
                    <li><a href="https://doe.dscoe.org/">DoE for M&S</a></li>
                after: |
                    <li><a href="https://github.com/rstudio/bookdown">
                    Published with bookdown</a></li>
            sharing:
                facebook: no
                github: no
                twitter: no
                linkedin: no
                weibo: no
                instapaper: no
                vk: no
documentclass: book
bibliography: ["doe.bib"]
link-citations: yes
---



# Introduction to DOE for M&S

## Background.

This course was developed at the behest of the leadership of the Wargaming and Simulation Directorate (WSD) at TRAC Fort Leavenworth as a means of institutionalizing the use of design of experiments (DOE) for simulation in the directorate.  As part of an evolving mission, the organization found it prudent to develop and use this capability to support studies for Army Futures Command and others.

The primary authors of the course, Majors Steve Gillespie and John King have used DOE for simulation based on the curricula offered by the Naval Postgraduate School's Systems Engineering and Operations Research departments.  We do not claim to have originated any of these ideas, we are simply conveying them.  We make every attempt to properly cite the relevant authority for ideas.  Any and all errors are ours alone.

## Mission.

The purpose of this training is to educate and train analysts in the use of design of experiments (DOE) for simulation analysis.  It is intended to be approximately as in depth as a general college course in DOE, but focused specifically on the needs of military (uniformed and civilian) analysts using simualtion to inform senior military leaders.

This training has three major goals: 

1. Enable and support simulation analysis.
2. Serve as an enduring resource.
3. Build the community of simulation analyst practitioners.

### Simulation Analysis.

First and foremost, this training must enable the Wargaming and Simulation Directorate to support TRAC and Army Futures Command answer expansive, ill-defined, and quick turn problems using modern simulation techniques.  This means developing capable practitioners in the design and analysis of experiments and equipping them with the appropriate methodology, knowledge, experiments, and tools for this requirement.

This training is unapologetically focused on WSD requirements and the application of Design and Analysis of Experiments to simulation, but is broadly useful to others.

### Enduring Resource.

While distinct training events are useful, people change jobs, PCS, and forget.  As much as possible, this training will develop and consolidate resources for learning and applying the Design and Analysis of Experiments so that others may use it for their own purposes and analysts can refer back to it.

### Community.

Analysis is a team sport. This training is intended to bring the Design and Analysis of Experiments team together, across divisions, directorates, centers, and the wider ORSA community.  This enables knowledge sharing and innovation.

## Concept.

This project has two major, mutually supporting, efforts:  

+ The first is developing and executing the training itself. 
+ The second is building the community that can use the training and enabling community sharing and innovation.

## Training Concept

The training LOE is the most significant portion of this project.  The precise curriculum is defined below.  In general, the training consists of lessons, projects, and assessments.

### Lessons.

Lessons form the bulk of the curriculum.  We take an active learning approach, where instructors provide learning resources (readings, videos, and tutorials) for students who prepare ahead of the lesson meeting.  When students and instructors meet, they then use that time to answer any questions on the material and work through problems or projects by applying the material from the lesson.  This: 1) allows students to devote the appropriate amount of time toward preparing for their lesson based on their own background knowledge and learning style, 2) affords flexibility for basic knowledge acquisition at a time that is convenient to each person, and 3) maximizes "in class" time for learning by doing.

The general flow of each lesson follows the format below:

#### Develop lesson. (Instructor)

For each lesson, the instructor will do the following:

1. Identify lesson objectives.
2. Develop / provide resources.
3. Develop / provide practice problems.
4. Develop / provide assessment mechanism.

#### Prepare for lesson. (Student)

For each lesson students will (ahead of the lesson):

1. Study any assigned readings / videos.
2. Work through any assigned tutorials.
3. Prepare for the lesson lab (i.e., install appropriate software, download appropriate data).

#### Conduct lesson lab. (Student & Instructor)

For each lesson lab, the students and instructors will:

1. Review and answer any questions about the material.
2. Work through a set of problems.

<font color = 'red'> Lesson labs will **NOT** be a rehashing of the reading and videos.  Students who do not prepare ahead of time will likely not be able to work through the lab. </font>

#### Assess progress. (Student & Instructor)

For each lesson, the students and instructors will jointly assess their progress, either formally or through an informal discussion.  Instructors will then decide if and how to modify the curriculum to either provide additional instruction or speed up the pace of the instruction.

For each lesson, students will provide feedback on the reading, videos, and/or tutorial so that the final published version of the lesson captures any lessons learned.

### Projects.

We find that projects are the most useful means of learning.  Due to the nature of the course, most of the projects will involve the use of TRAC's internal simulations which reside on classified networks.  Unfortunately, we will not be able to share these openly.

### Assessments.

Each section will have a problem set with an associated solution set.  Students may work these problem sets and the course directors will provide feedback for local students.

### Curriculum.

The curriculum for this course is divided into sections.  Each section has multiple lessons, and each lesson has multiple objectives.  These are seen as follows:

#### Sections




```{=html}
<div id="htmlwidget-e95af7e59d415b89b336" style="width:100%;height:auto;" class="datatables html-widget"></div>
<script type="application/json" data-for="htmlwidget-e95af7e59d415b89b336">{"x":{"filter":"none","data":[[1,2,3,4,5,6,7],["R Fundamentals","Statistics Review","Fundamentals of Design of Experiments (DOE)","Basic Regression","Applications","Advanced Topics","Optional Advanced Topics"]],"container":"<table class=\"display\">\n  <thead>\n    <tr>\n      <th>Number<\/th>\n      <th>Name<\/th>\n    <\/tr>\n  <\/thead>\n<\/table>","options":{"scrollX":true,"initComplete":"function(settings, json) {\n$(this.api().table().container()).css({'font-size': '50%'});\n}","columnDefs":[{"className":"dt-right","targets":0}],"order":[],"autoWidth":false,"orderClasses":false}},"evals":["options.initComplete"],"jsHooks":[]}</script>
```

#### Lessons


```{=html}
<div id="htmlwidget-b4d2333049ac684b8152" style="width:100%;height:auto;" class="datatables html-widget"></div>
<script type="application/json" data-for="htmlwidget-b4d2333049ac684b8152">{"x":{"filter":"top","filterHTML":"<tr>\n  <td data-type=\"number\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\"><\/span>\n    <\/div>\n    <div style=\"display: none; position: absolute; width: 200px;\">\n      <div data-min=\"1\" data-max=\"7\"><\/div>\n      <span style=\"float: left;\"><\/span>\n      <span style=\"float: right;\"><\/span>\n    <\/div>\n  <\/td>\n  <td data-type=\"factor\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\"><\/span>\n    <\/div>\n    <div style=\"width: 100%; display: none;\">\n      <select multiple=\"multiple\" style=\"width: 100%;\" data-options=\"[&quot;Advanced Topics&quot;,&quot;Applications&quot;,&quot;Basic Regression&quot;,&quot;Fundamentals of Design of Experiments (DOE)&quot;,&quot;Optional Advanced Topics&quot;,&quot;R Fundamentals&quot;,&quot;Statistics Review&quot;]\"><\/select>\n    <\/div>\n  <\/td>\n  <td data-type=\"number\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\"><\/span>\n    <\/div>\n    <div style=\"display: none; position: absolute; width: 200px;\">\n      <div data-min=\"1\" data-max=\"7\"><\/div>\n      <span style=\"float: left;\"><\/span>\n      <span style=\"float: right;\"><\/span>\n    <\/div>\n  <\/td>\n  <td data-type=\"factor\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\"><\/span>\n    <\/div>\n    <div style=\"width: 100%; display: none;\">\n      <select multiple=\"multiple\" style=\"width: 100%;\" data-options=\"[&quot;Aliasing&quot;,&quot;ANOVA&quot;,&quot;Assessing Designs&quot;,&quot;AWARS Project - Fundamentals&quot;,&quot;Basic Statistical Concepts&quot;,&quot;Blocking&quot;,&quot;Central Composite Designs&quot;,&quot;Classification and Regression Trees&quot;,&quot;Confounding&quot;,&quot;Decision Trees&quot;,&quot;Descriptive Statistics&quot;,&quot;Fractional Factorial Design&quot;,&quot;Full Factorial Design&quot;,&quot;Generalized Additive Model&quot;,&quot;Intro to DOE&quot;,&quot;Introduction to R&quot;,&quot;Lasso Regression&quot;,&quot;Latin Hypercubes&quot;,&quot;Logistic Regression&quot;,&quot;Markdown&quot;,&quot;Multiple Linear Regression&quot;,&quot;Nearly Orthogonal Latin Hypercubes&quot;,&quot;Neural Networks&quot;,&quot;Polynomial Regression&quot;,&quot;R for Data Science&quot;,&quot;Regression on Transformed Variables&quot;,&quot;Ridge Regression&quot;,&quot;Robust Design&quot;,&quot;Sequential Designs&quot;,&quot;Shifting &amp; Stacking&quot;,&quot;Simple Linear Regression&quot;,&quot;Statistical Inference&quot;,&quot;Support Vector Machines&quot;]\"><\/select>\n    <\/div>\n  <\/td>\n  <td data-type=\"character\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\"><\/span>\n    <\/div>\n  <\/td>\n<\/tr>","data":[[1,1,1,2,2,2,2,3,3,3,3,3,3,3,4,4,4,4,5,6,6,6,6,6,6,6,7,7,7,7,7,7,7],["R Fundamentals","R Fundamentals","R Fundamentals","Statistics Review","Statistics Review","Statistics Review","Statistics Review","Fundamentals of Design of Experiments (DOE)","Fundamentals of Design of Experiments (DOE)","Fundamentals of Design of Experiments (DOE)","Fundamentals of Design of Experiments (DOE)","Fundamentals of Design of Experiments (DOE)","Fundamentals of Design of Experiments (DOE)","Fundamentals of Design of Experiments (DOE)","Basic Regression","Basic Regression","Basic Regression","Basic Regression","Applications","Advanced Topics","Advanced Topics","Advanced Topics","Advanced Topics","Advanced Topics","Advanced Topics","Advanced Topics","Optional Advanced Topics","Optional Advanced Topics","Optional Advanced Topics","Optional Advanced Topics","Optional Advanced Topics","Optional Advanced Topics","Optional Advanced Topics"],[1,2,3,1,2,4,3,1,2,3,4,5,6,7,1,2,3,4,1,1,2,3,4,5,6,7,1,2,3,4,5,6,7],["Introduction to R","R for Data Science","Markdown","Descriptive Statistics","Basic Statistical Concepts","ANOVA","Statistical Inference","Intro to DOE","Full Factorial Design","Fractional Factorial Design","Blocking","Confounding","Aliasing","Assessing Designs","Simple Linear Regression","Multiple Linear Regression","Polynomial Regression","Regression on Transformed Variables","AWARS Project - Fundamentals","Central Composite Designs","Latin Hypercubes","Nearly Orthogonal Latin Hypercubes","Lasso Regression","Ridge Regression","Classification and Regression Trees","Generalized Additive Model","Shifting &amp; Stacking","Robust Design","Sequential Designs","Logistic Regression","Decision Trees","Support Vector Machines","Neural Networks"],["Introduce the programming language R, standard data types, basic functionality, and R resources.","Introduce R concepts for data science.","Introduce the concept of R markdown for analysis visualization.","Review foundational descriptive statistics and methods for conducting descriptive statistics in R.",null,null,null,"Montgomery Chapter 1",null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,"TBP","TBP","TBP","TBP","TBP","TBP","TBP"]],"container":"<table class=\"display\">\n  <thead>\n    <tr>\n      <th>Section #<\/th>\n      <th>Section Name<\/th>\n      <th>Lesson Number<\/th>\n      <th>Lesson_Name<\/th>\n      <th>Lesson Description<\/th>\n    <\/tr>\n  <\/thead>\n<\/table>","options":{"scrollX":true,"pagelength":5,"initComplete":"function(settings, json) {\n$(this.api().table().container()).css({'font-size': '50%'});\n}","columnDefs":[{"className":"dt-right","targets":[0,2]}],"order":[],"autoWidth":false,"orderClasses":false,"orderCellsTop":true}},"evals":["options.initComplete"],"jsHooks":[]}</script>
```

#### Objectives

The individual objectives for each lesson are listed in their corresponding chapter.

## Community Concept

Analytic skills and knowledge in of themselves are:

1. Useless in a vacuum.
2. Perishable.

As such, we believe it is important to build a self-sustaining community that innovates, shares, and includes others.  This course is purposefully being shared on the web (as opposed to a single organization's sharepoint) as it allows analysts from across the community to participate.  

As this project develops, we will advance the capacity to share DOE and simulation specific topics.  In the meantime, please contact us if you would like to participate.

## Admin

### Contact

If you need to contact us, please email us at stephen.e.gillespie.mil@mail.mil or john.f.king1.mil@mail.mil.

### Errors

If you identify errors:

1. The errors are ours alone and we sincerely apologize.
2. Please contact us and we will rectify them.

### Resources

As much as possible, we attempt to use freely available resources.  

+ In general, resources are cited as direct links to where the content is hosted.
+ We attempt to minimize the use of books with one exception:  *The Design and Analysis of Experiments* by Douglas Montgomery which is widely available.
+ Analytic resources:
    + We have opted to use *R* as it is 1) freely available and 2) widely used across the military analytic community.
    + We are developing this course using *R* on www.matrixds.com as it is 1) free and 2) free of the restrictions of NIPR.  
    + You are more than welcome to use other resources, programming languages, and other such things.  For example, the python package *pyDOE* is quite useful.  If you recreate any of our tutorials using a different language (or in R, but better), please share!
+ Simulation resources:
    + We will provide simple examples using toy simulations, but developing a large, open-source, easy to use simulation for everyone is beyond the scope of this project.  If someone has a good option, please share!
    + For analysts working at TRAC Fort Leavenworth, we will work examples for projects using the AWARS simulation.  Unfortunately, we cannot share this beyond TRAC Fort Leavenworth.

