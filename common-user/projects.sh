# Create default directory layout
cd $HOME
mkdir -p Projects/devops
mkdir -p Projects/external

## devops projects
cd $HOME/Projects/devops
git clone git@github.com:oschrenk/machines.git
git clone git@github.com:oschrenk/maven-archetype.git
