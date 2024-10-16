# Intro to mermaid

???- info "Learning objectives"

    - Learners understand what Mermaid is
    - Learners understand when to consider Mermaid
    - Learners have practiced with the Mermaid editor to create a mindmap
    - Learners have practiced with the Mermaid editor to create a flowchart
    - Learners have uploaded a Mermaid diagram to a GitHub README.md file
    - Learners have improved the layout of a flowchart using subgraphs

???- info "For teachers"

    ```mermaid
    gantt
      title Lesson plan
      dateFormat X
      axisFormat %s
      section Coarse setup
      Introduction : intro, 0, 5s
      Theory 1: theory_1, after intro, 5s
      Exercise 1: crit, exercise_1, after theory_1, 10s
      Feedback 1: feedback_1, after exercise_1, 5s
      Theory 2: theory_2, after feedback_1, 5s
      Exercise 2: crit, exercise_2, after theory_2, 15s
      Break 1: crit, break_1, 45, 15s
      Feedback 2: feedback_2, after break_1, 10s
      Theory 3: theory_3, after feedback_2, 10s
      Exercise 3: crit, exercise_3, after theory_3, 10s
      Feedback 3: feedback_3, after exercise_3, 5s
      Extra/Break: after feedback_3, 10s
      Break 2: crit, 105, 15s
    ```

    Lesson plan:

    - Who I am
    - Cycle 1:
        - Prior knowledge:
            - What do you associate the word 'diagram' with?
            - What types of diagrams are there? Mention mindmap and flowchart
            - How to create diagrams?
            - How to publish diagrams?
            - What is a mindmap?
            - How to create a mindmap?
        - Present: go to <mermaid.live>, show mindmap, show syntax
        - Challenge: exercise 1
        - Feedback:
            - ask 1 random learner to show mindmap, else show mine
            - ask drawback of mindmaps. Cannot link between nodes
    - Cycle 2:
        - Prior knowledge:
            - What do you associate the word 'flowchart' with?
            - How to create a flowchart?
        - Present:
            - what is mermaid?
            - why use mermaid?
            - go to <mermaid.live>, show flowchart, show syntax
        - Challenge: exercise 2
        - Feedback: ask 1 random learner to show mindmap

## Why

You want to express the rules for the game
[Rock Paper Scissors](https://en.wikipedia.org/wiki/Rock_paper_scissors)
in a graph.

In 1 minute you create this graph:

```mermaid
flowchart TD
  Paper --> |beats| Rock 
   --> |beats| Scissors
   --> |beats| Paper
```

Mermaid allows you to create such graphs.
Sometimes, these are good enough, sometimes they are used as a
first draft for a more pretty graph.

## Bigger picture

```mermaid
flowchart TD
  need_data[Need data?]
  need_fast[Need fast or sloppy or text-only?]
  need_render[Need online rendering?]
  need_data --> |yes| R[Programming languages\nR and ggplot2\nPython and matplotlib\nOthers]
  need_data --> |no| need_fast
  need_fast --> |no| Adobe[Adobe Illustrator\nGIMP\nOther tools]
  need_fast --> |yes| need_render
  need_render --> |yes| Mermaid
  need_render --> |no| GraphViz[GraphViz\nOthers]
```



## Lesson overview

- [Theory 1: introduction](#theory-1-introduction)
- [Exercise 1: first experience](#exercise-1-first-experience)
- [Theory 2: terminology](#theory-2-terminology)
- [Exercise 2: a Mermaid flowchart](#exercise-2-a-flowchart)
- [Theory 3: publishing graphs](#theory-3-publishing-graphs)
- [Exercise 3: publish a graph](#exercise-3-publish-a-graph)
- (optional) [Theory 4: improving layout](#theory-4-improving-layout)
- (optional) [Exercise 4: improve layout](#exercise-4-improve-layout)
