import os
import re

# 定义要操作的文件夹路径
folder_path = '/mnt/c/Users/shawn/Downloads/Kids_Phonics/'
# 遍历文件夹中的文件
print("hello world")

def replace_to_under_line(filename):
    pattern=re.compile('[ -]+')
    return pattern.sub("_", filename)

def delete_meanness_word(filename):
    pattern=re.compile("\(Av\d+,P\d+\)")
    return pattern.sub('', filename)

def pattern_repl_head(filename):
    pattern = re.compile('[0-9]+.([0-9]{2}).Kids_[Vv]ocabulary')   
    def repl_func(match):     
        new_format = "{}".format(match.group(1))
        return new_format
    new_filename =  re.sub(pattern,repl_func,filename)
    return new_filename
for filename in os.listdir(folder_path):
    # print(filename)
    new_filename=filename
    new_filename=replace_to_under_line(new_filename)
    new_filename=pattern_repl_head(new_filename)
    new_filename=delete_meanness_word(new_filename)
    print(new_filename)    
    # # 构建完整的旧文件路径和新文件路径
    old_file_path = os.path.join(folder_path, filename)
    new_file_path = os.path.join(folder_path, new_filename)
    
    # # 重命名文件
    if old_file_path != new_file_path:
        try:
            os.rename(old_file_path, new_file_path)
            print(f"{filename} -> {new_filename}")
        except OSError as e:
            print(f"Error: {e}")
