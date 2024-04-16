# Lesson on mermaid

> [!NOTE]
>
> Learning objectives:
>
> - Learners understand what Mermaid is
> - Learners have practiced with the Mermaid editor to create a mindmap
> - Learners have practiced with the Mermaid editor to create a flowchart
> - Learners have uploaded a Mermaid diagram to a GitHub README.md file
> - Learners have improved the layout of a flowchart using subgraphs

<details>
<summary>For teachers</summary>
<br>

```mermaid

gantt
  title Lesson plan
  dateFormat X
  axisFormat %s
  Introduction : 0, 5s
  Theory 1: 5, 5s
  Exercise 1: crit, 10, 5s
  Feedback 1: 15, 5s
  Theory 2: 20, 10s
  Exercise 2: crit, 30, 10s
  Feedback 2: 40, 5s
  Theory 3: 45,55
  Exercise 3: crit, 55,15s
  Feedback 3: 70,5s
  Extra/Break: 75,90
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

</details>

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

## Relation to other SciViz sessions

```mermaid
flowchart TD
  need_data[Need data?]
  need_fast[Need fast or sloppy or text-only?]
  need_render[Need online rendering?]
  need_data --> |yes| R[Programming languages\nR and ggplot2\nPython and matplotlib\nOthers]
  need_data --> |no| need_fast
  need_fast --> |no| Adobe[Adone Illustrator\nGIMP\nOther tools]
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

## Theory 1: introduction

Mermaid is a markup language to create graphs.

Instead of talking about it, let's experience Mermaid first.

## Exercise 1: first experience

<details>
<summary>Learning objectives</summary>
<br>

- Learners get a first impression of what Mermaid is
- Learners have practiced with the Mermaid editor
- Learners may have seen a technical error

</details>


```mermaid
mindmap
  root((Graphs))
```

What do you associate with the word 'graphs'?

- Go to [https://mermaid.live](https://mermaid.live) 
- Click on 'Sample Diagrams' then click 'Mindmap'
- Modify the mindmap so that the word 'Graphs' is at the center
- Modify the mindmap so that it shows your associations with the word 'graphs' visually
- (optional) visit [the mermaid documentation on mindmaps](https://mermaid.js.org/syntax/mindmap.html)

Questions:

- What can you express in a Mermaid mindmap?
- What can you not express in a Mermaid mindmap?
- (optional) What happens if you do use the word `mindmap` in your mindmap?
- (optional) Are there characters forbidden, such as `.`, `!`, `[` or `(`?

<details>
<summary>Need a video?</summary>
<br>

Here is a video of someone doing this exercise: [https://youtu.be/tObmaZp3fIg](https://youtu.be/tObmaZp3fIg)

</details>

<details>
<summary>Possible answers</summary>
<br>

> What can you express in a Mermaid mindmap?

A Mermaid mindmap allows one to create a tree-like structure
of vertices/nodes/concepts in an outwards way. 

> What can you not express in a Mermaid mindmap?

One cannot add links between concepts.
One cannot determine where the nodes will end up.

> (optional) What happens if you do use the word `mindmap` in your mindmap?

You will get an error, as `mindmap` is a word that Mermaid reserves for
indicating that a graph will be of the mindmap type.

> (optional) Are there characters forbidden, such as `.`, `!`, `[` or `(`?

You will get an error for `[` and `(`, as Mermaid uses these operators
for special markup.

</details>

## My associations with the word 'graphs' as a mindmap

```mermaid
mindmap
  root((Graphs))
    Images that convey information
      work on data
      **self-contained**
    Types
      **Mindmap**
      Flowchart
      Gantt chart
    Tools
      **mermaid.live**
      Visual programs
      **Text editor**
    Defined/created by ...
      A markup language
        DOT
        SVG
        **Mermaid**
      WYSIWYG
```

## Theory 2: terminology

Mermaid is a markup language to create graphs.

A markup language is a language that describes the markup of something.
In case of a mindmap, the Mermaid markup language uses indentation
to indicate the structure of the mindmap.

The [https://mermaid.live](https://mermaid.live) website is an online editor 
with direct visualization.

Mermaid will do the layout for you.
Options to decide upon the layout are absent or limited. 
This is a strength: you **should** let Mermaid do the layout for you,
as the goal is to create graphs quickly, not to create graphs for publication.

A mindmap is a graph that does not have relations between its 
nodes/vertices/concepts. 
For complex information, however, one would enjoy to express this
by adding edges/relations.
A mermaid flowchart allows one to create graphs of a complex structure.

```mermaid
flowchart TD
  concept_1[This is a vertex/node/concept]
  concept_2[Another one]  
  concept_3[Another one]  
  concept_1 <--> |this is an edge/relation| concept_2
  concept_1 --> concept_3 --> concept_2
```

## Exercise 2: a flowchart

<details>
<summary>Learning objectives</summary>
<br>

- Learners understand what Mermaid is
- Learners have practiced with the Mermaid editor

</details>

What do you associate with the word 'graph'?

- Go to [https://mermaid.live](https://mermaid.live) 
- Click on 'Sample Diagrams' then click 'Flow'
- Modify the flowchart so that the word 'Graphs' is at the center
- If needed, visit [the Mermaid documentation on flowcharts](https://mermaid.js.org/syntax/flowchart.html)
- (optional) On the edges, describe the relationships between the concepts.

Questions:

- What can you express in a Mermaid flowchart?
- What can you not express in a Mermaid flowchart?

<details>
<summary>Need a video?</summary>
<br>

Here is a video of someone doing this exercise: [https://youtu.be/I9UI7DUM81k](https://youtu.be/I9UI7DUM81k)

</details>



<details>
<summary>Possible answers</summary>
<br>

> What can you express in a Mermaid flowchart?

A Mermaid flowchart allows one to create a complex structure
of vertices/nodes/concepts in any way

> What can you not express in a Mermaid flowchart?

One cannot determine where the nodes will end up.

</details>

## My associations with the word 'graph' as a flowchart

```mermaid
flowchart TD
  graphs[Graphs]
  images[Images that convey information]
  self_contained[Self-contained]
  need_data[Need data]
  types[Types]
  scatter_plot[Scatter plot]
  mindmap[Mindmap]
  a_flowchart[Flowchart]
  tools[Tools]
  mermaid_live[mermaid.live]
  python[Python]
  r[R]

  graphs --> |are| images
  images --> |may be| self_contained
  images --> |may be| need_data

  graphs --> |have| types
  types --> |for example| mindmap
  types --> |for example| a_flowchart    
  types --> |for example| scatter_plot
  mindmap --> |usually| self_contained
  a_flowchart --> |usually| self_contained
  scatter_plot --> need_data

  graphs --> |drawn by| tools
  tools --> |for example| mermaid_live
  tools --> |for example| python
  tools --> |for example| r

  mermaid_live <--> |works on|self_contained
  python --> need_data
  r --> need_data
```

## Theory 3: publishing graphs

Mermaid is a markup language to create graphs.

One probably wants to share these graphs.

GitHub is a website primarily to host code.
It is the current most popular code hosting website
and host more than only code.
Per project, a typical user creates one website, 
called a GitHub repository.
All GitHub repositories are version controlled,
i.e. one can always go back in history to recover
(older versions of) files.

## Exercise 3: publish a graph

<details>
<summary>Learning objectives</summary>
<br>

- Learners understand what Mermaid is
- Learners have practiced with the Mermaid editor
- Learners have uploaded a Mermaid diagram to a GitHub README.md file

</details>

Here we publish a Mermaid graph on GitHub.
In this exercise, the graph is unimportant: pick your favorite :-)

- Create a GitHub account at [https://github.com](https://github.com)
- Create a new GitHub repository and add a check to 'Create README.md'
- Your own GitHub repository now shows its `README.md` file
- Edit the file `README.md`
- In the editor, put your Mermaid markdown in a Mermaid code block, 
  like this website does:

````
```mermaid
[your mermaid code here]
```
````

- Click on 'Commit'
- Refresh the website: it shows your Mermaid graph!

<details>
<summary>Need a video?</summary>
<br>

Here is a video of someone doing this exercise: [https://youtu.be/OcZvo8Y5hzE](https://youtu.be/OcZvo8Y5hzE)

</details>

## Theory 4: improving layout

Mermaid is a markup language to create graphs.

### subgraphs

From the markup text, 
Mermaid uses algorithms to make a graph look pretty.
However, sometimes this does not work out.

One solution in flowcharts is to use subgraphs:

````
```
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

### coloring nodes

Coloring the nodes can be helpful.
Mermaid allows one to define a style (technically: a class definition)
and apply it to nodes:

````
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

### Exercise 4: improve layout

<details>
<summary>Learning objectives</summary>
<br>

- Learners understand what Mermaid is
- Learners have practiced with the Mermaid editor
- Learners have uploaded a Mermaid diagram to a GitHub README.md file
- Learners have improved the layout of a flowchart using subgraphs

</details>

Try to create a prettier graph using subgraphs
and colored nodes.
Pick any topic you want.

## Links

- [Mermaid homepage](https://mermaid.js.org/)
- [NOTE testing](https://github.com/sinsukehlab/NOTE-test/blob/main/NOTE.md)
- [Dropdown tests](https://gist.github.com/citrusui/07978f14b11adada364ff901e27c7f61)
- [Mermaid at UPPMAX documentation](http://docs.uppmax.uu.se/getting_started/login_bianca/#overview)
- [Mermaid at NBIS course](https://uppmax.github.io/programming_formalisms/misc/exercise_procedure/)
