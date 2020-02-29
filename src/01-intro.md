# Introduction

## Scope

Learn the Gatsby site generator for React while using Typescript. Typescript allows you to scale your application and keep it maintainable through static typing. Finally you will deploy your application on AWS. As the current market leader AWS has been proven to be enterpise ready and scalable on many occasions.

My aim with this book is to organize these techniques, so you can get to work with Gatsby in an enterprise setting right away. We’ll get into setup the application, layout, component development, GraphQL, Images, Integration a headless CMS, templates, the SEO setup and finally deploy the application to AWS. Further I want to equip you with the 20% of full stack skills (e.g. design) to be dangerous in an enterprise environment.

Basic knowledge of React and Typescript would be beneficial. But you can also learn them on the go. In future verions of the book more detailed sections on those topics will be referenced.

Along the way, check out the [GitHub repository](https://github.com/TODO). All of the examples are there and will allow you to practice with hands-on examples.

## Use Case and Architectural Decision

Before we start setting up the development environment let's look at the use case and the architectural decison.

> We work in an enterpise organisation. And we observed that serveral teams build analytics functionality. We would like to test the hypothesis "That the organisation would use an standardized analytics self services to save time and cost".
> A good way to test an hypothesis is to build a landing page for this service and market it to the organization. We would expect "x teams to sign up for a newsletter", "x teams to contribute some funding" and "x to sign up as paid users". Only if we have some indication that the product is required we will build it.
> We want to build the landing page fast. The page should be extenable and maintainable in the cases we extend it to a full product.  The landing page does not require complex server side logic e.g. a portal that updates the content based on a signed in user.
> The other frontends in the organisation use React.

Given this use cases we have to make 3 architectural decisions: `programming language`, `frontend framework` and `site generator`.

### Programming language

In the context of *writing a landing page for an analytics self service*, facing the concern *that we need to make sure it is mentainable in the future and fits to the technology stack at the time while developing fast. The options for the programming language are Typescript or Javascript.* We decided for **Typescript**. To achieve *long term maintainablility and technology stack fit*, accepting *slower speed and less examples the Javascript*.

### Frontend Framework

In the context of *writing a landing page for an analytics self service*, facing the concern *that we need to make sure it is mentainable in the future and fits to the technology stack at the time while developing fast. The options for the frontend framework are React, AngualarJS and VueJS.* We decided for **ReactJS**. To achieve *technology stack fit with the existing ReactJS and ReactNative applications, use the largest ecosystem (documentation, programmers)*, accepting *worse fit with Typescript then AngularJS, and higher complexity then VueJS*.

### Site Generator

In the context of *writing a landing page for an analytics self service*, facing the concern *that we need to make sure it is mentainable in the future and fits to the technology stack at the time while developing fast. The options for the site generators are Gatsby, Next.JS, create-react-app SPA or hugo.* We decided for **Gatsby**. To achieve *fit with the technology stack (Typescript & React), higher customizability and extenablility if required later when extending it to the full application and higher development speed through plugins*, accepting *higher complexity then hugo and no server site dynamic logic like in Next.JS*. More on [Gatsby vs Next.JS](https://dev.to/jameesy/gatsby-vs-next-js-what-why-and-when-4al5) and [Gatsby vs Hugo](https://www.freecodecamp.org/news/gatsby-vs-hugo-a-detailed-comparison-e78d94f640fc/).

### Cloud

- AWS
- Netlify
- Other major clouds Azure or GCP


