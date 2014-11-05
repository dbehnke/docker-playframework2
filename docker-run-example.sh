#!/bin/bash
appdir=$PWD/app

#patch to common ivy2 cache to be on host system usually $HOME/.ivy2
ivy2dir=$HOME/.ivy2
echo Expecting Play Application in ${appdir}
echo Ivy2 cache pointing to ${ivy2dir}

docker run -p 0.0.0.0:9000:9000 -v $appdir:/app -v $ivy2dir:/root/.ivy2 -it dbehnke/playframework2:latest 

