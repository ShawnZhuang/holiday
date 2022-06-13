SCRIPT_DIR=$(realpath $(dirname $BASH_SOURCE[0]))
# set

# git config --global user.name "Your Name"
# git config --global user.email you@example.com
git config --global core.editor vim


USER_BIN_DIR=${HOME}/.local/bin
# curl https://mirrors.tuna.tsinghua.edu.cn/git/git-repo -o ${USER_BIN_DIR}/repo
cp ${SCRIPT_DIR}/repo  ${USER_BIN_DIR}/repo
chmod +x ${USER_BIN_DIR}/repo


