---
title: "Data Science, AI, and Machine Learning"
teaching: 30
exercises: 3
outline:
- "Overview of Data Science (process & life cycle)"
- "Introduction to AI and ML (types & techniques)"
- "Supervised, unsupervised, semi-supervised, reinforcement learning"
- "Deep Learning"
- "LLM"

questions:
- "What is Data Science?"
- "What is Artificial Intelligence?"
- "What is Machine Learning?"
- "What types of Machine Learning exist and how can they be applied in biomedical research?"
- "What biomedical applications exist for Deep Learning?"
- "What biomedical applications exist for Large Language Models?"

objectives:
- "Gaining an overview and general understanding of Data Science, AI, and ML in the biomedical context"
- "Being able to differentiate the different types of ML in a biomedical context with examples for Deep Learning and Large Language Models"


---
# An overview of Data Science 

**Data Science** is an interdisciplinary field that involves using statistical and computational techniques to extract knowledge and insights from large and complex data sets by applying advanced data analytics, Artificial Intelligence (AI) and Machine Learning (ML). Its process is a series of workflow steps that include data collection, mining, and cleaning, exploratory data analysis, modeling, and evaluation. Combining principles and practices from mathematics, statistics, computer engineering, and other fields, Data Science has a wide range of applications in healthcare, finance, marketing, and social sciences, and is becoming increasingly important in biomedical research. 

AI is increasingly used in biomedical research, with astonishing claims about the efficiency of AI and ML and has lately caught enxtensive interest and concern of policy makers and the general public. Where it is being applied in the Life Sciences and Healthcare, researchers are expected and requested ot have a thorough understanding of the potential positive and negative implications, also to explore possible use in underrepresented fields in the future. Therefore, this workshop provides an overview, guideline and a roadmap for the big picture view of what AI is, how it can be used in research, and how to critically assess the common challenges. 
While AI and ML can significantly increase the speed and efficiency of biomedical research workflows in data processing and analysis beyond the capability of the human brain, there are several limitations to what AI can achieve. Any generated output should always be treated with care and tested for biases with cautios interpreteation and conclusion.

Besides the benefits that Data Science applications and tools provide, we will address as well related ethical concerns such as privacy, data security, and bias and treat them as integral parts of the workflow and interpretation.

In this workshop, we describe the problems we can solve with Artificial Intelligence and how that is achieved. Without going into underlying technical details, we focus on a general overview and present selected case studies of biomedical relevance.

<!--_Recommended Data Science related courses and workshops developed by The Carpentries_
- …
- …
- …
-->

## An Introduction to Artificial Intelligence


**Artificial Intelligence (AI)** comprises task performences by machines (digital computers or computer-controlled robots) that aim to mimic human intelligence for problem-solving, decision-making, as well as language understanding and translation. AI is often utilised for speech recognition, computer vision, image labeling, spam filtering, robotics, smart assistants, and natural language processing.

The three types of AI are:
1) rule-based systems (rely on pre-defined rules to make decisions),
2) **machine learning** (algorithms learn from data to make predictions or decisions), and
3) deep learning (a subset of machine learning that uses neural networks to learn from large amounts of data).

Benefits: 
- reduce statistical errors, 
- reduce costs, and 
- increase efficiency

The ethical implications of AI are bias, privacy, and accountability and require continuous monitoring and correction addressed specifically to the applied context.

Examples of AI in 

**2. biomedical research**

- medical imaging analysis, 
- drug discovery, 
- predictive analytics, 

**2. general healthcare**

- personalized medicine, 
- virtual nursing assistants,
- disease diagnosis, 
- treatment planning, 
- clinical decision-making
- patient monitoring, 
- AI-powered chatbots and virtual assistants to provide patients with personalised care
 
### Types of AI 

AI could be defined as anything done by a computer that would require intelligence if performed by a person. This is a useful but limited definition as it is difficult to properly define intelligence objectively. 

#### Simulation

Also known as "running the equations", this may not seem like *real* AI. Simulations allow you to make predictions, which requires some sort of intelligence!

Predicting knowing where the planets will be in the solar system months or years in advance is possible because we know how the solar system works and can numerically simulate its working. 

Similarly, in cell automata we can set the rules of infection and susceptibility and watch how disease spreads between the neighbours over time steps. In this case, the susceptible cells are in blue, infected cells are white, and removed cells are red. We can adjust the model of the disease and the cell population to test the effects of disease spread. 

To create a simulation, you need to know exactly how the "world" works, also known as a model or a theory. Whether its Newtonian physics or the rules of infection or exactly the properties of stresses and strains on a steel bridge. You then need to know how the world is in a specific instance, so the model can be run forwards and learn what happens later. This knowledge is then captured by the computer.  

> **Research examples**
>
>At the Turing Institute, there are many research projects that involve simulations and are clustered under *DHarnessing the power of Digital Twins*. These projects look at the major challenge of coping with uncertainty in our knowledge of the world. 
> 
>- https://www.turing.ac.uk/research/harnessing-power-digital-twins
>- https://www.turing.ac.uk/research/research-projects/ecosystems-digital-twins
>- https://www.turing.ac.uk/research/research-projects/digital-twins-built-environment
>- https://www.turing.ac.uk/research/research-projects/real-time-data-assimilation-digital-twins


#### Symbolic (Good Old Fashioned) AI

When we think of well known AI cases, we might think of Deep Blue, a chess playing AI from the 1990s. The first time AI beat a reigning world champion was in 1997, where Kasparov was defeated. To understand how AI like Deep Blue works, we can use an easier game to demonstrate how it works. 
- https://www.britannica.com/topic/Deep-Blue
- https://en.wikipedia.org/wiki/Deep_Blue_(chess_computer)

In the game noughts and crosses (or tic-tac-toe), the objective is to alternate between two players, each of whom wants to get three of their counters in straight line. Using computational power, the AI can calculate all the probabilities of each possible move, and use this to determine the best move to make. 
- https://softwareengineering.stackexchange.com/questions/336015/building-a-simple-ai-for-noughts-crosses-game
- https://codereview.stackexchange.com/questions/138943/naughts-and-crosses-human-vs-computer-in-python
- https://www.101computing.net/a-python-game-of-noughts-and-crosses/

Chess and noughts and crosses are micro-domain games, an extremely limited "world" that the computer works within. The position of the chess piece can be described precisely and completely. The rules of the movement and the final end goal is well defined and unambiguous. 

**[out of context?]** trying to use this kind of AI to recognise handwriting doesn't work. 
Imagine trying to completely describe the way 7 is written, the rules are too rigid and brittle to distinguish 1s and 7s, and may miss all the 7s with a slash through them. It couldn't possibly hope to recognise a cat. 


## Introduction to Machine Learning 

As a subset of Data Science, Machine Learning (ML) involves using algorithms and statistical models to extract patterns from data and make predictions based on those patterns without being explicitly programmed. 
In biomedical research, ML has been described to accelerate research in areas such as viral infection, cardiovascular disease, and breast cancer. 
Analysing large datasets and identifying patterns that can help researchers better understand disease mechanisms and develop new treatments. 
Applications of ML algorithms include image and speech recognition, fraud detection, and natural language processing. 

3 main types of ML
1) Supervised Learning: training a model on labeled data, the correct output is known, to make predictions on new, unseen data. 
Examples: classification and regression tasks.

2) Unsupervised Learning: training a model on unlabeled data, the correct output is unknown, to find patterns or structure in the data. 
Examples: clustering and dimensionality reduction.

3) Reinforcement Learning: training a model to make decisions in an environment by rewarding or punishing the model based on its actions. 
Used in robotics and game-playing applications.

Be aware of the limitations and potential biases of their models, as well as the ethical implications.


Machine Learning (ML) makes use of data to improve computing performance on a given set of tasks, whereby ML algorithms are trained on sample data to make predictions or decisions.
Common applications of ML algorithms include email filtering, speech recognition, and computer vision, while they are also increasingly used for task optimization and efficiency in agriculture and medicine.

Subsets of ML can be grouped into 4 different types of machine learning: supervised, unsupervised, semi-super-vised and reinformcement learning. 


## Supervised learning
...

## Unsupervised learning
- Data mining: explorative data analysis

Applications in Biomedicine: 
- https://www.nature.com/articles/s41598-020-75715-0 // Unsupervised and supervised learning with neural network for human transcriptome analysis and cancer diagnosis
- Polanski, J. Unsupervised Learning in Drug Design from Self-Organization to Deep Chemistry. Int. J. Mol. Sci. 2022, 23, 2797. https://doi.org/10.3390/ijms23052797 

## Semi-supervised learning

Developments within Deep Learning and Large Language Models have given rise to an extensive list of applications to automate and scale data performance and processing


### A new era for Large Language Models
Ref: https://en.wikipedia.org/wiki/Large_language_model

With the release of Chat GPT-3 in early 2023, Large Language Models gained the interest and engagement of the general public and mainstream userbase.




## Reinforcement learning




## AI Applications in Biomedicine
- 
- 
- 

### Chatbots do not *understand*

Siri and Alexa can answer simple instructions but use scripted interactions, there is not an understanding of the world like fictional intelligent robots. There is currently nothing close to Artificial General Intelligence, and we wouldn't know where to start in building it. The idea that a computer "understands" a problem is in a narrow, technical sense, not the way a human understands. 

Based on the the seemingly interactive tone of a conversation, chatbots can fool us into thinking there is understanding. 

> “I had not realized ... that extremely short exposures to a relatively simple computer program could induce powerful delusional thinking in quite normal people.”
>
> Author of Eliza, the first chatbot


**References**
- National Academy of Engineering. 2018. Frontiers of Engineering: Reports on Leading-Edge Engineering from the 2017 Symposium. Washington, DC: The
National Academies Press. doi: https://doi.org/10.17226/24906.
- https://medicine.yale.edu/news-article/david-van-dijk-the-role-of-machine-learning-in-biomedical-discovery/
- …

keypoints:
- "There are three main types of AI: Simulations, Symbolic AI, Machine Learning"
- "Computers are very unlikely to ever replace human cognizance and intellect."
- "Simulation AI uses equations to run a model forwards from a given state."
- "Symbolic AI was used to beat the grand chess master in the 90s and works by calculating many eventualities in order to find the best solution."
- "The most recent type and one that has made extensive progress in recent years is Machine Learning."



# Exercises:

I think the first question needs to be multiple-choice question -- we don't expect people to write or explain what the know.


As a facilitator, you can choose 2-3 specific exercises as you see fit to your course concept. 


- How comfortable are you with AI/ML practices in relation to your research field: (A) Not comfortable, (B) somewhat comfortable, (C) comfortable, (D) very comfortable.
- Which of the above types of ML can you apply in your research projects? 
- Share and discuss in the group possible applications of Deep Learning and/or LLMs in your research field.

- Reflect on (and discuss with your colleagues) the potential benefits, limitations, and biases of AI and ML if applied to your current research projects.
- What are examples of successful and promising AI applications in your research field?
- What are the potential risks and negative outcomes if your team would overly rely on the results generated by AI/ML?



---
previous version here below:
---


### Machine Learning

Instead, with machine learning humans do not bother to try and find and apply rules. Instead, the computer finds its own rules. You start with a large dataset of known examples of the task we are trying to do. So in this case, 60,000 examples of handwritten digits, each one the same size. With this data set, it is labeled by a human and so every digit is "known". This becomes the training data set for the machine. When given a new, unknown example, the machine can look through the known examples to find the groups that the new digit most likely fits within. 

There are more complexities than this brief description, but machine learning fundamentally works this way. For all sorts of tasks, "big data" is becoming critical for machine learning. 

The machine does not "understand" the task, or know what handwriting is, the criteria for the solution is to match what the human labeler would classify the handwritten digit. 

Machine learning is already changing the way the world works. We can design novel architecture and quickly and cheaply ensure it will be structurally sound; your iPhone will find all photos of your kids with only a few examples; we can optimal driving directions within seconds, taking into account the current and predicted road conditions. It really is amazing, and only possible through breakthroughs and year-on-year advances in principles, algorithms, and computer hardware.

# Summary

- AI can be defined as anything a computer can do would require intelligence if a human performed it. 
- Regardless of the type of AI, we are far from computers *understanding* the world or problems. 
- The first kinds of AI were simulations, which use equations to run a model forwards from a given state. 
- The next kind is Symbolic AI, which was used to beat the grand chess master in the 90s and works by calculating many eventualities in order to find the best solution. 
- The most recent type and one that has made huge leaps in recent years is Machine Learning.  

In the next episodes, we will consider what tasks AI can do and its role in scientific research.

{% include links.md %}
