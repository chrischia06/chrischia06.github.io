---
layout: post
title: Introduction to C++
---

This tutorial assumes no knowledge of C++, but knowledge of <a href = 'http://www.lse.ac.uk/resources/calendar/courseGuides/ST/2018_ST213.htm'> ST213 - Introduction to Pricing, Hedging and Optimization </a>. The aim of this tutorial is to introduce you to the basics of C++, in prepration for <a href = 'http://www.lse.ac.uk/resources/calendar/courseGuides/MA/2019_MA332.htm'>MA322 </a> and <a href = 'http://www.lse.ac.uk/resources/calendar/courseGuides/MA/2019_MA323.htm'> MA323 - Computational Methods in Financial Mathematics </a>


1. The basics of how to use C++
2. Turning ST213 Models into C++ Code
2. Making an online calculator by importing the C++ Code you will make using _WebAssembly_

# What is a programming language

In one sentence, a programming language is a set of rules and _syntax_, so that we can translate mathematics and _business logic_ (what we want to achieve), into a format that a computer can understand and do something with.

# What is C++

C++ is a programming language created by Bjarne Strousoup (fun fact: he works at Morgan Stanley). It is widely used for quant finance and quant development in hedge funds and banks, and other applications (High Performance Computing, ), due to its speed.

# Setup
C++ is a _compiled_ language. What this means is that we first write our C++ code in a text editor, or _IDE_ (Integrated Development Environment), and then it through the _compiler_, which is a system tool that translates or _compiles_ our C++ code to a format our computer can run as a program. You therefore need:

+ A text editor or _IDE_, recommended [Visual Studio Code]()
+ A Compiler:  
	+ Mac - You need to install
	+ Windows - 

Alternatively, you can install [Virtualbox](https://www.virtualbox.org/) and install a Linux virtual machine

For the second half of the tutorial, we will export the functions we have written in C++ so that it can be used in a website, an online calculator for the ST213 pricing models we have learnt. More specifically, we will use _WebAssembly_, a new framework that allows for the compiling of C++ to _Javascript_, a web scripting language (which our browsers can understand).


Next, you need :

+ A browser that supports Javascript
+ Install WebAssembly

# Data Types

The first thing to understand is a 

https://webassembly.org/docs/c-and-c++/
https://developer.mozilla.org/en-US/docs/WebAssembly/C_to_wasm
https://emscripten.org/docs/getting_started/downloads.html

https://moodle.lse.ac.uk/pluginfile.php/1293500/mod_resource/content/60/ST213.pdf