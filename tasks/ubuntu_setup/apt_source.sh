# https://developer.aliyun.com/mirror/ubuntu

# usage: 
# sudo bash -ex  apt_source.sh /etc/apt/sources.list


SCRIPT_DIR=$(realpath $(dirname $BASH_SOURCE[0]))
output_file=${SCRIPT_DIR}/out.temp
if [ $# -ge 1 ]; then
    output_file=$1
fi
echo $output_file
cat ${SCRIPT_DIR}/sources.list | tee &>${output_file}

