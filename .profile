export PATH=$PATH:$HOME/.composer/vendor/bin
export PATH="/usr/local/sbin:$PATH"
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# zip a folder
function tr() {
  tar -cjf $1.tar.bz2 $1;
}

# Open Chrome with security settings disabled
function chr() {
  /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --disable-web-security
}

# open Atom in current directory
function a(){
  atom .
}

# open the webpage being served on a given port
function l(){
  open http://localhost:$1;
}

# open Finder at the current working directory
function o() {
  open ./$1
}

# open .profile
function prof() {
  atom ~/.profile
}

# apply .profile
function sprof() {
  source ~/.profile
}

# move downloads to working directory
function grdl() {
  mv ~/Downloads/* .
}

# open lodash CLI
function _() {
  n_
}

# open Desktop in Finder
function desk() {
  open ~/Desktop;
}

# serve the current folder on the given port
function serve() {
  lute open -p $1
}

# sync the given git branch
function sync () {
  git pull origin $1 && git push origin $1;
}

# DOCKER

# docker-compose shortcut
function dkrc() {
  docker-compose $@;
}

# restart docker network
function dkrrs() {
  dkrc restart;
}
# start docker network
function dkrs() {
  dkrc start;
}
# start docker network in detached mode
function up() {
  dkrc up -d;
}

# shut down docker network
function down() {
  dkrc down;
}

# ssh into docker container
function dsh() {
  docker exec -ti $1 bash
}
