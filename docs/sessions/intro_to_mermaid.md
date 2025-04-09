# Intro to mermaid

???+ info "Learning outcomes"

    - Learners understand what Mermaid is
    - Learners understand when to consider Mermaid
    - Learners have practiced with the Mermaid editor to create a mindmap
    - Learners have practiced with the Mermaid editor to create a flowchart
    - Learners have uploaded a Mermaid diagram to a GitHub `README.md` file
    - Learners have improved the layout of a flowchart using subgraphs

???- info "For teachers"

    - Prior knowledge:
        - How do you work together?
        - How do you make a quick sketch of a schematic drawing?
        - What do you associate the word 'diagram' with?
        - What types of diagrams are there? Mention mindmap and flowchart
        - How to create diagrams?
        - How to publish diagrams?
        - What is a mindmap?
        - How to create a mindmap?
    - Present: go to <mermaid.live>, show mindmap, show syntax
    - Challenge: exercise
    - Feedback:
        - ask 1 random learner to show mindmap, else show mine
        - ask drawback of mindmaps. Cannot link between nodes

???- question "Why use mermaid?"

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

???- question "When to use mermaid?"

    <!-- markdownlint-disable MD013 -->

    ```mermaid
    flowchart TD
      need_data[Need data?]
      need_fast[Need fast or sloppy or text-only?]
      need_render[Need online rendering?]
      need_data --> |yes| R[Programming languages. R and ggplot2. Python and matplotlib. Others]
      need_data --> |no| need_fast
      need_fast --> |no| Adobe[Adobe Illustrator. GIMP. Other tools]
      need_fast --> |yes| need_render
      need_render --> |yes| Mermaid
      need_render --> |no| GraphViz[GraphViz. Others]
    ```

    <!-- markdownlint-enable MD013 -->

???- question "What are all these graph terminology thingies?"

    ```mermaid
    flowchart TD
      root_node[The root node]
      concept_1[A concept]  
      concept_2[A vertex]  
      concept_3[A node]  
      root_node --> |A relation| concept_1
      root_node --> |An edge| concept_2
    ```

    The 'circles with text' can be called a node, a concept or a vertex.
    The 'lines between things' can be called a relation or an edge.
