26th International Conference on Advanced Information Systems Engineering (CAiSE 2014)
================================================================================

Ross Fenning, Senior Software Engineer, Content Discovery, BBC Future Media
---------------------------------------------------------------------------

On 16 June, I presented a paper at the EMMSAD[^emmsad] workshop as part
of the 26th International Conference
on Advanced Information Systems Engineering (CAiSE). This year's conference was
held in Thessaloniki, Greece.

Paper
-----

The paper I presented explored possibilities of utilising Soft
Systems Methodology combined with formal UML modelling to design an application
such as BBC Search from the ground up. This hints at further possibilities for
projects within BBC Future Media to benefit from such analysis, continuous
monitoring and systems design. The use of soft systems can also
emphasise a focus on the whole BBC as “One Service” and how decisions we make
affect our relationships with the audience (and the relationships with other
development teams).

The work stemmed out of a collaboration between BBC Academy and Bournemouth
University to produce a masters-level module on Systems Design as part
of the MSc in Software Engineering offered by BBC Academy. The course tutor,
Huseyin Dogan, had done previous work to explore transitioning from soft systems
built up through interactive workshops to “hard” models
traditionally done through modelling languages, e.g. UML.

This previous work inspired me to explore beyond traditional modelling based on
technical knowledge and assumptions alone and seek to find better ways to
contextualise and gather input on the problems we solve day to day (and perhaps
effectively monitor and evaluate our solutions for success).

EMMSAD
------

The 2-day EMMSAD workshop explores, evaluates and tries to improve modelling
methods and methodologies themselves. Papers presented included using
domain constraints to validation domain models and ontologies, analysis of
approaches to non-functional requirements and applying Design Science Research
to model business strategy.

Of particular interest was the work of Guerson, Almeida and Guizzardi in
transforming OntoUML[^ontouml] into OWL and Alloy. The Alloy language thus
allows the use
of the MIT Alloy tool to explore states and worlds permitted by a particular
domain ontology. The extensive work within the BBC to model ontologies for
different online product domains -- and moreover the necessity for Search
and Content Discovery as a whole to find an overarching, unifying model --
may well benefit from formal validation to ensure the models can only express
that which was intended.

Theory and Practice
-------------------

My exploration of bringing more formal analysis and modelling methods into
day-to-day development practice was serendipitously aligned with the theme of
the keynote that opened both EMMSAD and BPMDS[^bpmds] workshops.

The opening keynote talk by Gil Regev[^regev] focused on the gap between
academia and industry in the domain of business process and systems modelling.
The presentation highlighted that both workshops combined
only four different papers from industry practitioners (one of which
was my own) and urged researchers to take up positions in companies for 1-2
years to gain more experience of real world problems and reinforce the
theory in their research.

The talk also covered the difficulty in bringing new ideas or approaches into
teams within enterprises due to change aversion. Many teams in industry are
set on the norms and practices to which they have become accustomed and outside
suggestion of changes to their processes can be met with disinterest or even
scepticism.

To build on this theme, I feel there is much value in practising software
engineers looking to incorporate (and perhaps validate) ideas and approaches
that are well formed and development in the research sphere. The BBC are
big proponents of Agile methodologies that advocate regular introspection of
and improvements to process and practices, so it follows naturally that we
should welcome small, iterative introduction of new (even if unfamiliar) ideas
and techniques.

I would hope that my attending such a conference is a step in the direction
of bringing together the best of the research and enterprise worlds.
Maintaining a presence amongst those in research and contributing our
practical experiences to the scientific literature can raise the profile of
BBC Future Media as a world-class
centre of software engineering practices in addition to its existing global
name in the realm of broadcast technologies.

Soft Systems and Agile
----------------------

In BBC Future Media, we have a lot of love for Agile. However, one drawback to
Agile methods can be to focus on building and changing
software systems without substantial analysis of the context in which they are
used. It is arguably correct to view “substantial” analysis as anathema to
the Agile ethos, but there is promising research on applying Soft Systems
Methodology in ways that integrate well with Agile approaches.

In future work, I think there is much to gain by drawing parallels between
Agile user stories and some of the elements of Soft Systems Methodology.
In practical terms, even a small application of soft systems methodology
could produce enough holistic context to bring what we do closer to the audience
members that benefit from our work.

[^emmsad]: Exploring Modelling Methods for Systems Analysis and Design
[^bpmds]: Business Process Modeling, Development, and Support
[^regev]: “Systems and Business Process Modeling: Are We Confusing the Map with the Territory?”
[^ontouml]: OntoUML is a UML Profile (defined originally by Giancarlo Guizzardi in his Ph.D. thesis) whose elements represent finer-grained distinctions between different kinds of types and encompasses a set of constraints defining the admissible relations between these elements. It is particularly suited for modeling domain ontologies.
