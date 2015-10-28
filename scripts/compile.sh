DIR=$( cd `dirname $BASH_SOURCE[0]`  && pwd )
cd $DIR  
cd ../
PROJECT_ROOT=$(pwd)

export WAPITI_INSTALL_DIR=$PROJECT_ROOT/dist
setenv_filename="setenv-wapiti.sh"


mkdir $WAPITI_INSTALL_DIR
pushd $WAPITI_INSTALL_DIR
  echo "export WAPITI_INSTALL_DIR=$WAPITI_INSTALL_DIR"   >  $setenv_filename
popd


mkdir build
cd build
  cmake ..
  make
  make install
