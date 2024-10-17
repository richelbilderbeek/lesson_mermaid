# Improving the layout of a mermaid graph

???+ info "Learning objectives"

    - Learners understand what Mermaid is
    - Learners have practiced with the Mermaid editor
    - Learners have uploaded a Mermaid diagram to a GitHub README.md file
    - Learners have improved the layout of a flowchart using subgraphs

Mermaid is a markup language to create graphs.

## subgraphs

From the markup text,
Mermaid uses algorithms to make a graph look pretty.
However, sometimes this does not work out.

One solution in flowcharts is to use subgraphs:

````text
```mermaid
flowchart TD
  graphs[Graphs]
  images[Images that convey information]
  subgraph types[Types]
    subgraph self_contained[Self-contained]
    mindmap[Mindmap]
    a_flowchart[Flowchart]
    end
    subgraph need_data[Need data]
      scatter_plot[Scatter plot]
    end
  end
  subgraph tools[Tools]
    mermaid_live[mermaid.live]
    python[Python]
    r[R]
  end

  graphs --> |are| images
  images --> |depend on| types
  graphs --> |have| types
  mindmap --> |usually| self_contained
  a_flowchart --> |usually| self_contained
  scatter_plot --> need_data

  graphs --> |drawn by| tools

  mermaid_live <--> |works on|self_contained
  python --> |works on| need_data
  r --> |works on| need_data
```
````

## Coloring nodes

Coloring the nodes can be helpful.
Mermaid allows one to define a style (technically: a class definition)
and apply it to nodes:

````text
```mermaid
flowchart TD

  classDef bjorn_node fill:#ddf,color:#000,stroke:#00f
  classDef lars_node fill:#dfd,color:#000,stroke:#0f0
  classDef richel_node fill:#fdd,color:#000,stroke:#f00

  subgraph day_1[Monday]
    git_basic[git basic workflow]:::bjorn_node
    class_design[Class design]:::lars_node
  end
  subgraph day_2[Tuesday]
    class_diagram[Create project's class diagram]:::lars_node
    pair_programming[Pair programming]:::richel_node
    tdd[TDD]:::richel_node
  end

  git_basic --> pair_programming
  pair_programming --> tdd
  class_design --> class_diagram
  class_diagram --> tdd
  git_basic --> tdd
```
````

### Exercise: improve layout

Try to create a prettier graph using subgraphs
and colored nodes.
Pick any topic you want.

