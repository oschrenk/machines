#!/bin/sh

# hub
curl http://chriswanstrath.com/hub/standalone -sLo ~/bin/hub && chmod 755 ~/bin/hub
# git flow
wget --no-check-certificate -q -O - https://github.com/nvie/gitflow/raw/develop/contrib/gitflow-installer.sh | sudo sh
