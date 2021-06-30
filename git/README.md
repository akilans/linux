# Git Quick Reference

### Basic

```bash
git init # initialize empty git repository
echo "feature 1" > fileA.txt # Make a change
git add . # Move to staging area
git commit -m "commit message"
git remote add origin $URL # add remote url
git push -u origin master
git remote -v #to view the remote url
git remote rm origin # remove remote url
git show HEAD # shows the parent of the latest commit
git show master # shows the parent of the latest commit
git show $hash # shows the parent of the latest commit
```

### Tag

```bash
# creates tag with specific commit
git tag # list all the tags
git tag -a -m "feature 1 added" v0.1 # create a tag with msg, name. It holds author, date etc
git show v0.1
git push origin v0.1 # push it to remote repository
git tag -a -m "just a temp tag" temp HEAD~ # tag with previous commit
git tag -d temp # delete a tag
```

### Branching and Merging

```bash
git branch # list all branches
git branch -a # list local and remote branches
git branch $NAME # create a new branch
git checkout $NAME # switch to new branch
git checkout -b $NAME # Create a new branch and switch to the new branch
git branch -d $NAME # delete a local branch
git branch -D $NAME # Delete a unmerged branch
git checkout master && git merge $NAME # merge to master
```

### Log

```bash
git log --oneline
```

### Revert and Reset

```bash
git revert HEAD~2 --no-edit #revert the change done in 2 commits before head and commit a new change
git reset $HASH #committed in staged env - move the repository back to a previous commit, discarding any changes made after that commit
git commit --amend -m "ignore my previous commit as it has typo" #used to modify the most recent commit
git reset --soft HASH_value #it changes the pointer to that head [ keeps untracked files, staging changes, local changes and deletes all the commit logs ]
git reset --mixed HASH_value #It changes the pointer to that head [ changing staging index not working directory ]
git reset --hard HASH_value #It changes the pointer to that head [ keeps untracked files, deletes the staging changes, local changes, and all the commit logs]
```
