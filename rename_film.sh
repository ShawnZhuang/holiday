
# path_to_folder=/mnt/c/Users/shawn/Downloads/English_sing_sing/
path_to_folder=/mnt/c/Users/shawn/Downloads/Kids_Phonics/
cd ${path_to_folder}
ls  | sed -n "s/\([0-9]\)kid/\1/g"
cd -

# rename -n 's/_/-/g' *_*
