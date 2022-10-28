SCRIPT_DIR=$(realpath $(dirname ${BASH_SOURCE[0]}))
source ${SCRIPT_DIR}/env.source


BUILD_DIR=${TVM_HOME}/build

mkdir -p ${BUILD_DIR}
cp ${TVM_HOME}/cmake/config.cmake   ${BUILD_DIR}/

cmake -B ${BUILD_DIR} -S ${TVM_HOME}
cmake -j16 -build ${BUILD_DIR}  -S ${TVM_HOME}