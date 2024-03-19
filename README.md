# "Exploring the Dynamics of Football Scoring: A Statistical Analysis Inspired by Maher’s Model"

## Overview
This study applies a simplified version of Maher’s 1982 Poisson distribution
model to recent English Premier League data to analyze football scores. Using
the engsoccerdata dataset, we calculated team-specific attacking and defensive
strengths and employed these in Poisson regression models to predict the number
of goals scored by home and away teams. Our results validate Maher’s approach,
showing a significant correlation between team strengths and goal-scoring. However,
the positive association between defensive strength and goals scored indicates
complexities not fully addressed by the model. This analysis highlights the utility
of statistical methods in sports analytics and suggests avenues for further research,
including the development of more sophisticated models to better capture the dynamics
of football scoring.

## File Structure

The repo is structured as:

-   `other` contains etails about LLM chat interactions, and sketches.
-   `paper` contains the files used to generate the paper, including the Quarto document and reference bibliography file, as well as the PDF of the paper.
-   `scripts` conontains R scripts for data processing and analysis

## Statement on LLM usage

The abstract was written with the help of Chatgpt and the entire chat history is available in inputs/llms/usage.txt.
