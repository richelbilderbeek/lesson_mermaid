# First experience with mermaid

???- info "Learning objectives"

    - Learners get a first impression of what Mermaid is
    - Learners have practiced with the Mermaid editor
    - Learners may have seen a technical error

Mermaid is a markup language to create graphs.

Instead of talking about it, let's experience Mermaid first.

## Exercise: first experience

???- question "Need a video?"

    Here is a video of someone doing this exercise: [https://youtu.be/tObmaZp3fIg](https://youtu.be/tObmaZp3fIg)


```mermaid
mindmap
  root((Graphs))
```

> A mermaid thingie.

What do you associate with the word 'graphs'?

- Go to [https://mermaid.live](https://mermaid.live)
- Click on 'Sample Diagrams' then click 'Mindmap'
- Modify the mindmap so that the word 'Graphs' is at the center
- Modify the mindmap so that it shows your associations with the word 'graphs' visually
- (optional) visit [the mermaid documentation on mindmaps](https://mermaid.js.org/syntax/mindmap.html)

Questions:

- What can you express in a Mermaid mindmap?

???- question "Answer"

    A Mermaid mindmap allows one to create a tree-like structure
    of vertices/nodes/concepts in an outwards way.

- What can you not express in a Mermaid mindmap?

???- question "Answer"

    One cannot add links between concepts.
    One cannot determine where the nodes will end up.

- (optional) What happens if you do use the word `mindmap` in your mindmap?

???- question "Answer"

    You will get an error, as `mindmap` is a word that Mermaid reserves for
    indicating that a graph will be of the mindmap type.

- (optional) Are there characters forbidden, such as `.`, `!`, `[` or `(`?

???- question "Answer"

    You will get an error for `[` and `(`, as Mermaid uses these operators
    for special markup.

???- question "My associations with the word 'graphs' as a mindmap"

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
