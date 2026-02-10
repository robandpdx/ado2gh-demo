# ado2gh-demo
Demo of ado2gh migration tool.

## Prerequisites

1. [GitHub CLI](https://cli.github.com/)
1. [ado2gh enxtension](https://github.com/github/gh-gei)
1. [direnv](https://direnv.net/)

## Playbook
A playbook for migrating repos from Azure DevOps to GitHub can be followed [here](https://devblogs.microsoft.com/all-things-azure/azure-devops-to-github-migration-playbook-unlocking-agentic-devops/).  

## Demo
Start by renaming the `envrc.sample` file to `.envrc`. Edit the values as needed and populate the values needed for the authentication tokens.

Generate an inventory report by running `./inventory-report.sh`.  
Generate a migration script by running `./generate-script.sh`.  
Migrate an individual repository by running `./migrate-repo.sh`.  
