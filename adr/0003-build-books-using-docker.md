# 3. Build Books using docker

Date: 2020-02-23

## Status

Accepted

## Context

To build the book into a pdf or ebub this template requires pandoc. On Mac pandoc does not include images correctly. Therefore the question is how can I build the books.

## Decision

Build books using docker.

## Consequences

This makes it easy to run pandoc on all plattforms as well as a github actions for continous CI/CD.
