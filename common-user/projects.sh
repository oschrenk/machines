# Create default directory layout
cd $HOME
mkdir -p Projects/devops
mkdir -p Projects/external


## devops projects
cd $HOME/Projects/devops
git clone git@github.com:oschrenk/machines.git
git clone git@github.com:oschrenk/maven-archetype.git


## external projects

### Install git-sh
cd $HOME/Projects/external
git clone git://github.com/rtomayko/git-sh.git
cd git-sh
make
sudo make install
