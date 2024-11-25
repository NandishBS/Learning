
# GIT & GITHUB

it is used for
- **version control** : get back to any save point
- **collaboration coding** : many members can code on same project by forking or branching

## vedios

 - [Shraddha didi (Apna College)](https://youtu.be/Ez8F0nW6S-w?si=hSJJZdAWD9rhWmDY)


## links
- **github account** - https://github.com/


### GIT Configuration

- user name Configuration
```bash
    git config --global user.name 'your name'
```
- user email Configuration
```bash
    git config --global user.email 'your email'
```
- Configuration list
```bash
    git config --list
```
## Setup & Init

- initialize any local directory as git directory. it will be controlled by local git. and adds .git file
```bash
    git init
```

- clone/copy entire remote repository into local directory
```bash
    git clone 'your_url'
```

- add local directory to remote repository
```bash
    git remote add origin 'your_url'
```
## Stages and Snapshots
- shows modified files in working directory, staged for your next commit
```bash
    git status
```
- add the changes to (stage) the changes takes place but still not saved the changes.
```bash
    git add 'file_name'
```
```bash
    git add .
```
- commit all the changes in the staged content
```bash
    git commit -m 'your_message'
```
- unstage a file while retaining the changes in working directory
```bash
    git reset 'file_name'
```
- difference of what is changed but not staged
```bash
    git diff
```
- difference of what is staged but not yet committed
```bash
    git diff --staged
```


## Types of changes

### 1) untracked
- these files are newly created files.
- this is shown by symbol 'u' in vs code
- red color in cmd

### 2) modified
- any changes in existing files.
- this is shown by symbol 'm' in vs code
- red color in cmd

### 3) staged
- files ready to commit.
- green color in cmd


## Share and Update

### copying
- add remote repository from local directory
```bash
    git remote add origin
```
- remove repository
```bash
    git remote remove origin
```
- fetch down all the branches from that Git remote
```bash
    git fetch origin 'branch_name'
```
```bash
    git fetch origin
```
- merge a remote branch into your current branch to bring it up to date
```bash
    git merge origin/'branch_name'
```

### push command
- Transmit local branch commits to the remote repository branch
```bash
    git push origin 'branch_name'
```
- to set default push
```bash
    git push -u origin 'branch_name'
```
### pull command
- fetch and merge any commits from the tracking remote branch
```bash
    git pull
```
```bash
    git pull origin 'branch_name'
```
## Branch and Merge
### Branch

- list all the branches. * symbol shows the current branch
```bash
    git branch
```
- create a new branch at the current commit
```bash
    git branch 'branch_name'
```
- rename the branch
```bash
    git branch -M 'new_branch_name'
```
- switch to another branch
```bash
    git checkout 'branch_name'
```
- create and switch to new branch
```bash
    git checkout -b 'branch_name'
```
- delete the branch (we should switch to other branch before deleting current branch)
```bash
    git branch -d 'branch_name'
```
- to compare the current branch with other branch
```bash
    git diff 'other_branch_name'
```
### Merge
- merge the specified branch’s history into the current one
```bash
    git merge 'branch_name'
```
- send pull request in github repository, if merge conflict choose to resolve the conflict

### Merge conflicts resolve options
* Accept current change
* Accept incoming change
* Accept Both changes
* manually change the code

### logs
- show all commits in the current branch’s history and enter 'q' to exit
```bash
    git log
```
## Undoing changes
- reverting the staged changes to modified changes (undoing add)
```bash
    git reset 'file_name'
```
```bash
    git reset
```

- reverting the committed changes to staged changes (undoing commit)
```bash
    git reset HEAD~1
```

- taking the HEAD back by n number of commits
```bash
    git reset HEAD~'n'
```

- going back to specific commit using *Hash code*
```bash
    git reset 'hash_code'
```

- to change the code along with changes in commit
```bash
    git reset --hard 'hash_code'
```

## Fork

- fork copies the existing repository into your repository
- commit changes in the copy and send pull request
- original user can review changes and merge your changes into original repository
## Tracking the path

delete/removes the file from project and stage the removal for commit
```bash
    git rm 'file_name'
```
change an existing file path and stage the move
```bash
    git mv 'existing-path' 'new-path'
```
show all commit logs with indication of any paths that moved
```bash
    git log --stat -M
```
## Ignoring pattern

create .gitignore file and add the files that are to be ignored by the git. each files are added in each line
- **.env** - *ignores .env file*
- **index.js** - *ignores index.js file*
- **logs/** - *ignores all the files in logs folder*
- ***.txt** - *ignores all the files with .txt extension*
- ***pattern*/** - *ignores all the files matches the pattern*