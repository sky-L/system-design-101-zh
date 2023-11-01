- [GIT](#git)
    - [How Git Commands work](#how-git-commands-work)
    - [How does Git Work?](#how-does-git-work)
    - [Git merge vs. Git rebase](#git-merge-vs-git-rebase)


## GIT

### How Git Commands work

To begin with, it's essential to identify where our code is stored. The common assumption is that there are only two locations - one on a remote server like Github and the other on our local machine. However, this isn't entirely accurate. Git maintains three local storages on our machine, which means that our code can be found in four places:

<p>
  <img src="images/git-commands.png" style="width: 600px" />
</p>


- Working directory: where we edit files
- Staging area: a temporary location where files are kept for the next commit
- Local repository: contains the code that has been committed
- Remote repository: the remote server that stores the code

Most Git commands primarily move files between these four locations.

### How does Git Work?

The diagram below shows the Git workflow.

<p>
  <img src="images/git-workflow.jpeg" style="width: 520px" />
</p>


Git is a distributed version control system.

Every developer maintains a local copy of the main repository and edits and commits to the local copy.

The commit is very fast because the operation doesn’t interact with the remote repository.

If the remote repository crashes, the files can be recovered from the local repositories.

### Git merge vs. Git rebase

What are the differences?

<p>
  <img src="images/git-merge-git-rebase.jpeg" style="width: 680px" />
</p>


When we **merge changes** from one Git branch to another, we can use ‘git merge’ or ‘git rebase’. The diagram below shows how the two commands work.

**Git merge**

This creates a new commit G’ in the main branch. G’ ties the histories of both main and feature branches.

Git merge is **non-destructive**. Neither the main nor the feature branch is changed.

**Git rebase**

Git rebase moves the feature branch histories to the head of the main branch. It creates new commits E’, F’, and G’ for each commit in the feature branch.

The benefit of rebase is that it has a linear **commit history**.

Rebase can be dangerous if “the golden rule of git rebase” is not followed.

**The Golden Rule of Git Rebase**

Never use it on public branches!