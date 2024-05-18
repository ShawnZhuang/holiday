
# common file name replacement 
import typing 
import os
import re
def replace_to_under_line(filename):
    "replace \space - to \underline"
    pattern=re.compile('[ -]+')
    return pattern.sub("_", filename)

def ApplyRenameToFile(old_file_path, new_file_path):
    if old_file_path != new_file_path:
        try:
            os.rename(old_file_path, new_file_path)             
        except OSError as e:
            print(f"Error: {e}")
    return
      

def ApplyRenameInFolder(folder_path, callback:typing.Callable[[str],str] ) ->None:    
    for filename in os.listdir(folder_path):
        new_filename=callback(filename)
        old_file_path = os.path.join(folder_path, filename)
        new_file_path = os.path.join(folder_path, new_filename)        
        ApplyRenameToFile(old_file_path, new_file_path)


