# Property list app 🏡🏢
An iOS app that works as GraphQL server client. It is part of my CocoaHeads SP meetup presentation.

It renders a list of properties (name, neighborhood, price, likes) and interested people.  
All presented data is queried from the mocked [graphql server](https://github.com/marinofelipe/graphql-properties-server).

## Workspace
The workspace has both starter and final project.  
You can follow the installation steps below for both of them, in except of the schema downloading part where the folder varies according to the project you are building for.  
The snippets used at the presentation are stored in `StarterProject/snippets`.

## How to install
#### clone the repo
`git clone git@github.com:marinofelipe/graphql-property-list-app.git`

#### install [Apollo-iOS](https://github.com/apollographql/apollo-ios)
run `pod install`

#### install [GraphQL cli](https://github.com/graphql-cli/graphql-cli)
run `npm install -g graphql-cli`

#### Download server schema
`cd PropertyListApp && graphql get-schema`
##### or
`cd StarterProject && graphql get-schema`

## How to run
Don't forget to download, setup and run its [graphql server](https://github.com/marinofelipe/graphql-properties-server).  
Run the app and have some fun 🤘🚀.
