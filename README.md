# moonpie-template
A template project for configuring a new Love2D + Moonpie project


## Setting up a new project

### Downloading Release

### Using git directly
```bash
# Setting up from github directly
$ git clone https://github.com/tredfern/moonpie-template.git newProjectName
$ cd newProjectName
$ rm -rf .git
$ rm -rf ext/moonpie
$ git init .
$ git add --all
$ git commit -m "Initial Commit"
$ git submodule init
$ git submodule add https://github.com/tredfern/moonpie.git ext/moonpie
```