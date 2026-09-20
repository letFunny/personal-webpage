// Latex look.
#set page(margin: 2cm)
#set par(leading: 0.55em, first-line-indent: 1.8em, justify: true)
// #set text(font: "Tex Gyre Pagella")
#set text(font: "New Computer Modern")
#set heading(bookmarked: false)

// Translation support.
#let lang = "en"
#let t(dict) = {
    // #h(0pt, weak: true)
    dict.at(lang)
    // #h(0pt, weak: true)
}

// Formatting.
#show raw: set text(font: "New Computer Modern Mono")
#show par: set par(spacing: 0.55em)
#let section_color = rgb("#663300")
#show <section>: it => [
    #block(above: 1.4em, below: 1em)[
        #set text(fill: section_color, weight: "thin", size: 18pt)
        #smallcaps[#it.body]
        #v(5pt, weak: true)
        #line(length: 100%, stroke: 0.5pt + section_color)
    ]
]
#show <title_name>: it => [
    #block(above: 1.4em, below: 1em)[
    #text(size: 36pt, weight: "thin")[#it.body]
    ]
]
#let blue_link(content) = {
    // box to avoid breaking the link.
    box[#text(fill: blue)[#content]]
}

#let left_width = 2.7cm

#let two_cols(content) = {
    let formatted = ()
    for i in range(int(content.len()/2)) {
        let first = content.at(i*2)
        let second = content.at(i*2+1)

        formatted.push(align(center)[#first])
        formatted.push(align(left)[#second])
    }
    grid(
        columns: (left_width, 1fr),
        row-gutter: 0.3cm,
        column-gutter: (0.4cm),
        ..formatted
    )
}

#let date_desc(content) = {
    let formatted = ()
    for i in range(int(content.len()/3)) {
        let start = content.at(i*3)
        let end = content.at(i*3+1)
        let desc = content.at(i*3+2)

        formatted.push(align(right)[
          #set text(font: "Tex Gyre Pagella")
          #start
        ])
        formatted.push(align(center)[
          #set text(font: "Tex Gyre Pagella")
          --
        ])
        formatted.push(align(left)[
          #set text(font: "Tex Gyre Pagella")
          #end
        ])
        formatted.push(align(left)[#desc])
    }
    grid(
        columns: (1.3cm, 0.1cm, 1.3cm, 1fr),
        row-gutter: 0.5cm,
        column-gutter: (0.1cm, 0.1cm, 0.4cm),
        ..formatted
    )
}

= Ángel Alberto Carretero <title_name>
#[
#set text(size: 14pt, weight: "medium")
#link("mailto:angelalbertoc.r@gmail.com", "angelalbertoc.r@gmail.com"),
#link("https://letfunny.com", "letfunny.com")
]

== Experience <section>

#date_desc((
    [09/2025],
    [present],
    [
        *Performance and Correctness -- Office of the CTO*, #smallcaps[Canonical (Remote)]
        #linebreak()
        #set text(font: "Tex Gyre Pagella")
        My current focus is on correctness of distributed systems using formal
        (TLA+/TLAPS) and semi-formal methods (state machines, property-based
        testing, model-based testing). Some highlights:
        - Implemented Raft in Rust in a very short timeframe through careful
          use of TLA+ for model-based testing of the code and discrete event
          simulation.
        - Designed the core protocols using Hierarchical State Machines (HSM)
          which allows us to reason about correctness upfront and produced code
          that was significantly easier to read and to debug.
        - Led some company-wide sessions on TLA+ with a focus on producing
          careful designs which substantially decrease the cost of implementing
          distributed systems.
        - Co-designed a performant storage layer based on SQLite which uses a
          custom VFS.

        *Main skills*: Rust, Tokio, distrubted systems, systems programming,
        SQLite, TLA+/TLAPS, state machines, property-based testing, discrete event simulation.
    ],
    [09/2023],
    [09/2025],
    [
        *Software Engineer -- Office of the CTO*, #smallcaps[Canonical (Remote)]
        #linebreak()
        #set text(font: "Tex Gyre Pagella")
        Worked directly with the CTO to kickstart challenging projects used across
        Canonical. Some highlights:
        - Lead developer for
          #blue_link(link("https://github.com/canonical/chisel", [chisel])), a
          widely-used tool written in Go to create containers with small
          storage footprint and a reduced attack surface.
        - Contributor to #blue_link(link("https://github.com/canonical/dqlite",
          [dqlite])), a distributed database using Raft and SQLite, written in
          C. I developed a snapshot protocol to bring followers up to date,
          and I used state machines to reason about termination.
        - As part of my duties, I supervised and mentored developers, led
          planning, estimating, and architecting. In a few months I managed to
          deliver 1.0 for a project that had been stagnant for a year.

        *Main skills*: Deep experience in Go and its runtime, containers and
        OCI images, GNU/Linux.
    ],
    [09/2022],
    [09/2023],
    [
        *Software Developer Engineer I -- Books Detail Page*, #smallcaps[Amazon (Madrid)]
        #linebreak()
        #set text(font: "Tex Gyre Pagella")
        My team owned the book detail pages in all surfaces across
        www.amazon.com, a Tier-1 service that receives thousands of requests
        per second. Some highlights:
        - Developed features using Java/Spring for the backend, JSPs and JS for
          the frontend. This required complex debugging across many different
          architectures and surfaces on a custom stack with dozens of layers
          and many different teams working on the same codebase simultaneously.
        - Led a successful project coordinating two different teams in
          different organizations, PMs and design. Among my different duties, I
          carefully designed the experiment to ensure precise measurement of
          KPIs.
        - Debugged production issues across a multi-layer Tier-1 service and
          participated in on-call for Amazon’s primary website.

        #block[
        *Main skills*: Full stack, driving features from experiment planning to
        production deployment.
        ]
    ],
    [09/2021],
    [06/2022],
    [
        *Researcher (Collaboration grant) -- Computer Science department*,
        #smallcaps[UAM (Madrid)]
        #linebreak()
        #set text(font: "Tex Gyre Pagella")
        Designed an esoteric programming language and created an interpreter
        from scratch in Rust which included a library of parser combinators, a
        tree-walk interpreter, a typechecker, and more.

        #block[
        *Main skills*: Rust, programming language theory.
        ]
    ],
    [06/2021],
    [09/2021],
    [
        *Software Developer Engineer Intern -- Music ML*, #smallcaps[Amazon (Berlin)]
        #linebreak()
        #set text(font: "Tex Gyre Pagella")
        Worked on recommendation systems for Amazon Music which used an
        orchestrator written in functional async Java.

        #block[
        *Main skills*: Async functional Java, experiment design.
        ]
    ],
))

// #let langs = ("Go", "Rust", "Java", "C", "Python", "GNU/Linux", "SQLite (VFS, extensions, etc.)")
// *Experience in:* #{
//     let formatted = ()
//     let (..langs_commas, last) = langs
//     for lang in langs_commas {
//         [#lang, ]
//     }
//     [#last]
// }.

== Education <section>
#date_desc((
    [2017],
    [2022],
    [
        *BSc in Mathematics*, #smallcaps[Universidad Autónoma de Madrid] #linebreak()
    ],
    [2017],
    [2022],
    [
        *BSc in Computer Science*, #smallcaps[Universidad Autónoma de Madrid] #linebreak()
        #set text(font: "Tex Gyre Pagella")
        - Combined average of 9.02/10, 14 courses with honors (top 2%). Awarded
          three times the annual scholarship for the top 1% of all university
          students in Madrid.
        - Mathematics Bachelor's thesis: _Pseudo-Riemannian Geometry and Schwarzschild spacetime_. (9.9/10)
        - Computer Science Bachelor's thesis: _Formal design and implementation of a programming language based on facets_. (9.5/10)
    ],
))

== Talks <section>
#set text(font: "Tex Gyre Pagella")
#par(first-line-indent: 0pt)[
*Building a Reliable Database Protocol with AI, Formal Methods, and a Simulation Framework* -- #text(font: "New Computer Modern", smallcaps[Bug Bash - GOTO 2026])
]

#par(first-line-indent: 0pt)[
*Git gud: how Git works internally* -- #text(font: "New Computer Modern", smallcaps[Open South Code 2024])
#linebreak()
Explore how Git stores its state on disk inside the .git subdirectory. For each
command, inspect the results live using low-level tools to gain a deeper
intuition.
]

== Languages <section>
#two_cols((
    [Spanish], [First Language.],
    [English], [C1 Level, certified Cambridge English Advanced.
    ],
))

== Contact <section>
#table(
    columns: (40pt, 1fr, 40pt, 1fr),
    align: (left, right),
    inset: (x: 15pt),
    stroke: none,
    [Mail],
    blue_link(link("mailto:angelalbertoc.r@gmail.com", "angelalbertoc.r@gmail.com")),
    [LinkedIn],
    blue_link(link("https://www.linkedin.com/in/angel-alberto-carretero", "angel-alberto-carretero")),
    [Github],
    blue_link(link("https://github.com/letFunny")),
    [Web],
    blue_link(link("https://letfunny.com")),
    table.vline(x: 2, stroke: 0.5pt),
)
