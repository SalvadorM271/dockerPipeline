## Docker Pipeline

This main propuse of this repo is to function as an example of how gitflow can be implemented with docker
so when there is a finish feature and it is push to the remote repository, we trigger a gitflow define by 
the workflow in the yml to push the finish images to docker hub.

The yml files mention above are the following:

- workflow.yml -
Adds the version tag when there is a merge to main and generates and publishes an image to docker hub.

- pull_req_to_dev.yml -
When there is a push from the feature branch to develop creates a pull request.

- pull_req_to_main.yml -
When there is a push or merge into develop creates a pull request to add code to main.

## Important

When working with a repository it is important to remember to keep our local repository up to date, so it is
advise to run a git pull command in our local branches after pushing code to this repository

## Usage 

following the git workflow guidelines in order to add new features to our code we must work first
in the feature branch, after the feature is complete we can then push our changes to the feature branch
by using the following commands:

first we mast check if we are in the feature branch for that we use

`git branch`

then we must add the changes

`git add .`

after that we need to commit our changes adding something special to the end of the commit message, #minor or #major
depending on the importance of the feature

`git commit -m "example commit #major"`

and finally

`git push`

after that a pull request will be raise in the develop branch to add our changes, this pull request must be
approve in order to continue the workflow, if changes were approve then the workflow will continue, creating
a pull request to add our changes into the main branch, once this request is approve, the action will create and push
an image base on the code to a repository on docker hub.

## Credits for the source code use to test the pipeline
[LearnWebCode](https://github.com/LearnWebCode/express-youtube-basics) 
