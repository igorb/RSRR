# RSRR

TODO: Write a description
Rails Sugar React Redux

## Installation

Add this line to your application's Gemfile:

```ruby
git clone git@github.com:igorb/RSRR.git
cd RSRR && rake db:create && rake db:migrate && rake db:seed
```
Feel free to use <a href='https://github.com/burke/zeus' target='_blank'>Zeus</a> in dev.

### Process

Here's how we develop software.  Some high level goals are:
1. Iterate quickly - Deploy changes to production on a daily, not weekly basis.
2. Get better - Improve as a software developer every day.
3. Transparent and Open - It should be easy for any interested party to learn anything they want about the project.

#### Features

Decide what you want to work on. A feature from the backlog(github issues) is a good place to start.

#### Branches
For each discrete feature or change, create a branch to work in.

The branch name should reflect who you are and what you're working on e.g. bob/process or john/password-bug.

#### Tickets
Reference a ticket in every commit you make.

If there is no ticket for what you're working on, create a ticket for it.

#### Pull requests
Push your code to github and make a PR early so that you can get feedback quickly.

Push the branch to github and make a pull request so you can start getting feedback on the code.
You don't have to wait until you want to merge the code to open the PR.
Open the PR as soon as you start working on a new branch so everyone can see what you're doing and has a place to comment on it.
90% of the time you will like and want to incorporate suggestions from the people reviewing your code.

#### Code review
Reviewing pending pull requests is your most urgent task at all times.

When you think you're done with branch, commit, or feature, alert QA and PM that there's work to review, deploy to the QA server.
When you see a PR go up, quickly get to a stopping point with what you're doing and review the code.
If everything looks good to them, i.e. somebody gives you a thumbs up or +1, merge the PR to master and deploy to production.

For changes that don't affect the UI, can skip the QA + PM approval step, since there isn't anything to see there.
The QA and PM are still welcome to review and comment on the PR.

#### Testing!
You should write tests for your code.

Tests
1. Let other developers have confidence your code works as advertised.
2. Help prevent regressions.
3. Provide clues about how to use and/or integrate with your code.

## Sweeping generalizations

Everything is developed on a branch.
If it's a topic branch, you have to get buy-in from the team before merging and deploying.
Rarely, there will be a terrible bug on production that has to be fixed outside normal channels.
Develop the fix on a 'hotfix/XXX' branch.  ASK FOR REVIEW.  Open a PR.
If for some reason you can't get review in a timely fashion, you can merge and deploy hotfix branches yourself.
Do not unilaterally merge or deploy a branch that does not have the word hotfix in it.
