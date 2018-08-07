# mass_clone
This is a shell script that will clone multiple repositories for pulling Student assignments from GitHub Classroom for a given  assignment.  The script will create a folder based on the repository identifier (assignment name), and then creates a subdirectory for each Student who has accepted the assignment with a clone of their current assignment repository.

These scripts should be used on on a Linux (based) system or from a Git shell on Windows, as it relies on popular Linux utilities including bash, curl and grep.

## Setup Instructions
* Modify your git config to cache credentials using the command ```git config --global credential.helper cache``` otherwise you will be prompted for your credentials over and over for each Student```
* Edit the shell script ```clone_assignments.sh``` and set the values of organization and Github account as necessary:
```
  organization="cs-fullstack-fall-2018"
  username="Kevin-CodeCrew
```
* You *may* have to add executable privilige to the 3 shell scripts before they will run using ```chmod```
* NOTE that *all* shell scripts must be executed from the ```mass_clone``` directory

# clone_assignments.sh

This script is just for convenience, and actually runs clone_all.sh with three arguments as defaults, Organization, username, and protocol (https)

The script takes one argument, the repository identifier (assignment repository prefix/assignment name). You can get this by clicking/viewing 'Assignment Settings' in GitHub.

# clone_all.sh

This script takes 4 arguments in order to clone repos based on organization (github classroom), a unique identifier(assignment), username, and protocol.

This script will make a new folder based on the assignment repository prefix/assignment name), and then clones each to their own subfolder.

# push_all.sh

After the Student's work has been reviewed and the Instructor has added their notes/comments/corrections, this script adds all files, commits, then pushes all changes to each Student's assignment repository.

Takes 1 argument, the unique repository identifier(i.e. subdirectory containing the Student repos)

Presently uses the commit message "Graded", but this can be changed by editing the ```push_all.sh```script.

```git commit -m "Graded ${date} ${time}"```

