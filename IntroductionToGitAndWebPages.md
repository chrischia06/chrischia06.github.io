---
layout: post
title: Introduction to Git, Github and Webpages
---

This tutorial will introduce the basics of how to use Git/Github. At the end of this tutorial, you will have created your own webpage which will be hosted on github pages.

# What is Git? Why Git? What is Github?

Git is a distributed version control system made by Linus Torvalds, the creator of Linux. What "distributed version control system", means that a group of coders can collaborate together in real-time on the same project in a scalable, robust way, keeping track of all changes made, and developing projects in a efficient manner.

Github is a platform that support Git. There are alternatives such as Gitlab and Atlassian, but for now we will stick Github as it allows free hosting for your webpage.

You should learn at learn Git and Github are used widely among industry, academia, and hobbyists, and moreover Git it is a crucial tool in any aspiring programmer's toolkit that you will definitely run into should you pursue coding in the future

# Intro to Git/ Github
To begin with, sign up for a github account at [https://github.com/](https://github.com/)

![github](/img/github.png)

After you have logged in, create a repository at [https://github.com/new](https://github.com/new)

It needs to be in the format ```$YOURUSERNAME.github.io```, e.g. ```chrischia06.github.io```

![github](/img/createrepo.png)

Now install git at [https://git-scm.com/downloads](https://git-scm.com/downloads)

![github](/img/git.png)

Create a new folder on your computer and call it ```$YOURUSERNAME.github.io```

Download "website.zip" from  [here](/img/website.zip) and unzip the "index.html","style.css", "image.png" and place them in your folder

Open up your terminal in macOS/Linux or Powershell in Windows and type the following:
```
git init

git add index.html

git commit -m "First Commit - adding webpage"

git remote add origin https://github.com/$YOURUSERNAME/$YOURUSERNAME.github.io.git

git push -u origin master
```

Let's break this down:

```git init``` - This initialises a git repository on your computer

```git add index.html ``` This adds the file "index.html" to the staging area, which is the list of files you have changed

```git commit -m "First Commit - adding webpage"``` - This commits your file changes, with a meaningful commit message after the "-m" flag

```git remote add origin https://github.com/$YOURUSERNAME/$YOURUSERNAME.github.io.git ``` - This adds the domain where changes will be deploying changes to, in this case  https://github.com/$YOURUSERNAME/$YOURUSERNAME.github.io.git 

```git push -u origin master``` This commits your changes to the server

You can now view your website at ```http://$YOURUSERNAME.github.io```	, which should look something like this

![htmlsite](/img/htmlsite.png)


# Intro to Webpages

If you're familiar with the basis of HTML and CSS you can skip this part

![htmlsitesyntax](/img/htmlsitesyntax.png)

Let's break this down. HTML is a markup language, in which we wrap content in tags, such as ```<h1> Heading 1 </h1>```

If you want to learn more about HTML and CSS you can visit Mozilla Developer Network's excellent resources here:
https://developer.mozilla.org/en-US/docs/Web/HTML
https://developer.mozilla.org/en-US/docs/Web/CSS


# Intro to static pages

Instead of creating a webpage from scratch, we can reuse the brilliant work that others have done, and build a website using a static site generator. These make use of Markdown, a markup language similar to HTML which is also used in Jupyter notebooks

















