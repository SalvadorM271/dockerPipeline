# dockerPipeline

The main functionality of this repository is to create a chain reaction when we finish a feature and push it to the
main repository, we archive this by creating a pull request for the review of the code, and when this pull request is approve
it will be merge into the develop branch, same process will be repeated from develop to main.

This 3 main yml files execute the following functionality to make it possible:

workflow.yml ----------------- adds the version tag when there is a merge to main and deploys the page

pull_req_to_dev.yml ---------- when there is a push from the feature branch to develop creates a pull request

pull_req_to_main.yml --------- when there is a push or merge into develop creates a pull request to add code to main

**Important**

When working with a repository it is important to remember to keep our local repository up to date, so it is
advise to run a git pull command in our local branches after pushing code to this repository

**Usage** 

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
a pull request to add our changes into the main branch, once this request is approve, the actions will deploy
the website.

**Credits for the source code use to test the pipeline**
LearnWebCode
