---
title: "What is Artificial Intelligence or AI?"
teaching: 0
exercises: 0
questions:
- "What is AI and how can we define it?"
- "What types of AI exist and what doesn't exist?"
objectives:
- "Gain broad picture overview of AI and its history"
keypoints:
- "Three types of AI - Simulations, Symbolic, Machine Learning"
---

# Introduction

Artificial intelligence (AI) is increasingly used in biomedical research, with published papers often making describing automations and analyses performed using AI. 
The growing role of AI in healthcare, policy, and fundamental biomedical and life sciences is of great public interest. 
However, for scientists without specialist training the complexity and opaque use of buzzwords makes it difficult to know who to trust and where to begin. 
Researchers and funding bodies may want to explore new computational options for biomedical and life sciences, and this guide should provide a big picture view of what AI is, how it can be used in research, and how to critically assess the common problems that can arise. 

On the one hand, AI and machine learning can greatly improve the workflows in data processing and analysis, and can provide insight no human has time to achieve themselves. 
On the other hand, there are many limitations to what AI can do and is not magic. 
This chapter outlines what today's AI is capable of and gives examples of how these programs are being used in the real world.

# What is AI?
 
AI can be described as a branch of computer programming that aims to builds machines (software or integrated with specific hardware) that demonstrate "intelligent behavior". 
However, describing AI is often more about what we *wish* existed rather than describing what actually exists. 
It can instead be more informative to describe the problems we can solve with Artificial Intelligence and how it is achieved. 
This is not a deeply technical introduction, instead it is written to describe case studies and overview. 

## I've also heard the term "Machine Learning", but ...

The terms AI and Machine Learning sometimes get used interchangeably, however that isn't quite the case. 
Where AI describes intelligent systems that we wish to design, machine learning refers to the mathematical concepts and algorithms that form the basic building blocks of AI. 
We might combine multiple ML methods that each have a specific task to learn into a larger system. 
It is the process of bringing together multiple, highly specified ML algorithms (maybe also rules that humans have written) that give us an image of how AI is achieved and why it makes it so challenging.   

AI is often described by what we *wish* existed rather than what actually exists. 
It is however, more informative to describe the problems we face that can be solved with AI, and where AI provides an advantage over traditional methods. 
This introduction will focus on real-world examples in order to demonstrate how AI can contribute to research and engineering.

## What does not exist?

Siri and Alexa can answer simple instructions using scripted interactions, but they lack what is known as Artificial General Intelligence (AGI) - an understanding of the world that has been imagined in science fiction and is usually represented in the form of humanoid robots that can outthink humans. 
There is currently nothing close to AGI, and we wouldn't know where to start in building it. 
When AI researchers speak in terms of a computer "understanding" a problem this is a technical definition that describes how a computer has learned a specific task, and does not mean that a computer program has gained the ability to think like a human.

However, our daily exposure to AI such as chatbots can fool us into thinking there is understanding. 

> “I had not realized ... that extremely short exposures to a relatively simple computer program could induce powerful delusional thinking in quite normal people.”
>
> Author of Eliza, the first chatbot

## Types of AI that DO Exist

AI can be defined as anything done by a computer that would require intelligence if performed by a person. This is a useful but limited definition as it is difficult to properly define intelligence objectively. 

### Simulation

Also known as "running the equations", this may not seem like *real* AI. 
Simulations allow you to make predictions, which requires some sort of intelligence! Predicting where the planets will be in the solar system months or years in advance is possible because we know how the solar system works and we can mathematically simulate its movements. 
To create a simulation, you need to understand how the system you are studying behaves, which allows you to create a model of that system. 
Today's simulations are more advanced than ever because they use what's known as "digital twinning" to incorporate real-time data to update the model based on the actual behavior of the system being modeled.

# Case Study : Digital twins

https://www.turing.ac.uk/sites/default/files/inline-images/3D%20printed%20bridhe%20digital%20twin%20FE%20model.png

At the Turing Institute, many researchers work on advanced simulations known as "digital twins". 
A digital twin is a virtual replica of a complex system that incorporates real-time data, increasing the accuracy of the simulation and allowing researchers to better predict changes in the physical system based on real-world inputs.

In 2021, the city of Amsterdam installed a 3D-printed steel bridge that has a digital twin, allowing researchers to monitor the physical properties of the bridge during real-world use by pedestrians and cyclists. 
The cutting-edge 3D printing process used to create the bridge is a promising technology that designers hope to apply to larger and more complex projects, and the digital twin will allow them to better understand the properties of this unique material and how it can be optimized for future projects. 

### Symbolic (Good Old Fashioned) AI

When we think of well known AI cases, we might think of Deep Blue, a chess-playing AI from the 1990s. In 1997 AI made headline news when Deep Blue defeated chess champion Garry Kasparov. 
To understand how AI like Deep Blue works, we can use the example of a simpler game. 

In the game noughts and crosses (or tic-tac-toe), the objective is to alternate between two players, each of whom wants to get three of their counters in a straight line. 
Using computational power, an AI opponent can calculate all the probabilities of each possible move, allowing it to determine the best possible move in any given scenario.

Chess and noughts and crosses are micro-domain games, an extremely limited "world" that the computer works within. The position of the chess piece can be described precisely and completely. 
The rules of the movement and the final end goal is well defined and unambiguous. 

However, trying to use this kind of AI to recognise handwriting doesn't work. Imagine trying to describe each and every possible way that the number 7 could be written, and how to distinguish between a 1 and a 7. 
For complex tasks without a finite set of rules, we need to train AI to distinguish features itself rather than giving it a precise definition. This process is known as machine learning, and it allows us to apply AI to a much broader array of tasks. 

### Machine Learning

In machine learning the computer finds its own rules, starting with a large dataset of known examples of the task we are trying to complete. 
In one example, the computer is given 60,000 samples of handwritten digits, with each digit labelled by a human so that every data point is "known", and this becomes the training data set for the machine. 
When given a new, unknown handwritten digit, the machine can look through the known examples to find the groups that the new digit most likely fits within. 
The machine creates its own rules to match the unknown data point to a classification based on the labelled dataset. 
This is a simplified example used to demonstrate the fundamental principles of machine learning, but in real world applications machine learning is a broad term used to describe a variety of algorithms in which the computer program learns and improves as it is fed more and more data.

Machine learning is already changing the way the world works. 
We can design novel architecture and quickly and cheaply ensure it will be structurally sound; your iPhone will find all photos of your kids with only a few examples; we can optimise driving directions within seconds, taking into account the current and predicted road conditions. 
It really is amazing, and only possible through continuous advances in principles, algorithms, and computer hardware.

# Case Study: MapReader

https://raw.githubusercontent.com/Living-with-machines/MapReader/main/figs/tutorial_classification_one_inch_maps_001.png

In recent decades libraries have begun to digitize their map collections, which presents a huge opportunity as well as a unique challenge for librarians and historians who want to categorize and sort vast archives of visual material. 
[MapReader](https://github.com/Living-with-machines/MapReader) is a project that relies on a type of machine learning known as computer vision, which is the process that computers use to recognize and classify information contained in visual mediums such as images or video. 
The user inputs a map that they are interested in and trains the model by adding annotations to label the map's features, then the algorithm learns how to identify those features and can be used to examine a much larger set of maps for the same types of information. 
In this example, the researcher is training the machine to perform visual analysis so that they can sort through entire visual archives in a fraction of the time it would take for a human to categorize each map individually. 

# Summary

- AI can be defined as any task performed by a computer that requires intelligence when performed by a human. 
- Regardless of the type of AI, we are far from computers *understanding* the world or complex problems. 
- The first kinds of AI were simulations, which use equations to run a model and predict future changes in a system. 
- The next kind is Symbolic AI, which was used to beat the grand chess master in the 90s and works by calculating many eventualities in order to find the best solution. 
- The most recent type and one that has made huge leaps in recent years is Machine Learning.  

In the next episodes we will consider what tasks AI can do and its role in scientific research.

{% include links.md %}
