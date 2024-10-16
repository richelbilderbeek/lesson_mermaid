# Lesson on mermaid

<!-- markdownlint-disable MD013 -->

[![Check links](https://github.com/richelbilderbeek/lesson_mermaid/actions/workflows/check_links.yaml/badge.svg?branch=main)](https://github.com/richelbilderbeek/lesson_mermaid/actions/workflows/check_links.yaml)
[![Check markdown](https://github.com/richelbilderbeek/lesson_mermaid/actions/workflows/check_markdown.yaml/badge.svg?branch=main)](https://github.com/richelbilderbeek/lesson_mermaid/actions/workflows/check_markdown.yaml)
[![Check spelling](https://github.com/richelbilderbeek/lesson_mermaid/actions/workflows/check_spelling.yaml/badge.svg?branch=main)](https://github.com/richelbilderbeek/lesson_mermaid/actions/workflows/check_spelling.yaml)
[![Create website](https://github.com/richelbilderbeek/lesson_mermaid/actions/workflows/create_website.yaml/badge.svg?branch=main)](https://github.com/richelbilderbeek/lesson_mermaid/actions/workflows/create_website.yaml)

<!-- markdownlint-enable MD013 -->

[Go to the nicely rendered website](https://richelbilderbeek.github.io/lesson_mermaid/).

## Files used by continuous integration scripts

<!-- markdownlint-disable MD013 -->

Filename                                  |Descriptions
------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------
[mlc_config.json](mlc_config.json)        |Configuration of the link checker, use `markdown-link-check --config mlc_config.json --quiet docs/**/*.md` to do link checking locally
[.spellcheck.yml](.spellcheck.yml)        |Configuration of the spell checker, use `pyspelling -c .spellcheck.yml` to do spellcheck locally
[.wordlist.txt](.wordlist.txt)            |Whitelisted words for the spell checker, use `pyspelling -c .spellcheck.yml` to do spellcheck locally
[.markdownlint.jsonc](.markdownlint.jsonc)|Configuration of the markdown linter, use `markdownlint "**/*.md"` to do markdown linting locally. The name of this file is a default name.
[.markdownlintignore](.markdownlintignore)|Files ignored by the markdown linter, use `markdownlint "**/*.md"` to do markdown linting locally. The name of this file is a default name.

<!-- markdownlint-enable MD013 -->
