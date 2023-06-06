# R concept playground

The [R track on Exercism](https://exercism.org/tracks/r) currently lacks a Learning Syllabus, designed to lead novices to the language through a sequence of key concepts. Implementing this is nobody's priority right now, but this repo is an attempt to think about how it might one day look. It should be emphasized that this is just one person doodling: there is no expectation that it will be merged into the [Exercism/R](https://github.com/exercism/r) repo any time soon.

One table of possible concepts is laid out in [issue #198](https://github.com/exercism/r/issues/198)

Each concept has its own subdirectory under `concepts/`. There should eventually be 4 files in each:
- `introduction.md`: provides a brief introduction to a student who has not yet completed the corresponding concept exercise.
- `about.md:` provides more detailed information about the concept, for a student who has completed the corresponding concept exercise to learn from and refer back to.
- `links.json` lists useful URLs.
- `.meta/config.json` has some metadata.

Exercises illustrating and practicing each concept go under `exercises/concept/`, each in their own subdirectory. A minimal set of 8 files is:
- `{slug}.R` is the stub file for the student to edit.
- `test_{slug}.R` contains the test suite.
- `.docs/introduction.md` teches the relevant concept(s). Typically just a copy of the `introduction.md` file under each concept.
- `.docs/instructions.md` briefly lists steps needed to complete this exercise.
- `.docs/hints.md` is to help a student get unstuck (can be empty).
- `.meta/exemplar.R` is a working implementation, hidden from the student but used to validate the tests.
- `.meta/design.md` notes decisions that led to the current version of the exercise.
- `.meta/config.json` is metadata needed by the website.


Progress in implementing things is tracked [on Google sheets](https://docs.google.com/spreadsheets/d/1xW5WDL5Xp2yQ9ZFJY-oVj1c19kNkZLwCiSEjH1H2SGI/edit?usp=sharing). There are separate tabs, listing

- concepts for R
- concept exercises for R
- multiple tabs on concept exercises used by other tracks implementing a learning mode

There should eventually be a flow diagram showing how everything fits together (TODO).
