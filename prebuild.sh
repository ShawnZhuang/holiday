wget -q -c https://repo.anaconda.com/archive/Anaconda3-2021.05-Linux-x86_64.sh
# wget 
bash  Anaconda3-2021.05-Linux-x86_64.sh  -p $HOME/.local/anaconda
source  $HOME/.local/anaconda/bin/activate
conda init 


# https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh

conda install python3 python3-pip -y