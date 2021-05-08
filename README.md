# moonpie-template
This project is a base template for starting new [Moonpie](https://github.com/tredfern/moonpie) projects.

It includes a basic functioning demo to help lay the foundations and jump start any development.

## Setting up a new project

```bash
$ git clone https://github.com/tredfern/moonpie-template.git newProjectName
$ cd newProjectName
$ ./setup_project.sh
$ love .
```

## Organization

assets
: The data and images for your game should live here

game
: All the core game logic should live in this folder

game/app.lua
: The central router for displaying new screens

game/store.lua
: The state management system. Add your custom reducers here

game/rules
: The location to hold all the various logic for the game. Add subfolders to represent related logic and state. It
is not necessary for each rules folder to contain a reducer. Logically group functionality together is the goal.

game/ui
: Holds all the screens and widgets for rendering the visual elements of the game

