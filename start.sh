#!/bin/bash
NOT_INSTALLED="0"

function docker_install_check() {
  CHECK=$(docker -v)
  if [[ $CHECK == bash* ]];
  then
      echo "install Docker first!! (https://www.docker.com/get-started)"
      RET_CHECK="1"
  fi
}
function repo_unpack() {
  sudo docker pull hangpark/pintos-dev-env-kaist
  tar -xvf ./pintos.tar.gz
  sudo docker run -t -d -v $PWD/pintos:/pintos --name pintos_test hangpark/pintos-dev-env-kaist
  chmod +x pintos.sh
  alias pintos=$PWD/pintos.sh
}

docker_install_check
if [[ $NOT_INSTALLED == 0 ]];
then
    echo "existing docker found"
    repo_unpack
fi
