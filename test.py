import os

def get_largest_file_size_by_extension(folder_path):
    extension_sizes = {}

    for root, _, files in os.walk(folder_path):
        for file in files:
            filepath = os.path.join(root, file)
            ext = os.path.splitext(file)[1].lower()  # 包含點，例如 .txt
            try:
                size = os.path.getsize(filepath)
            except OSError:
                continue  # 如果無法讀取檔案大小就跳過

            # 更新該副檔名對應的最大值
            if ext not in extension_sizes or size > extension_sizes[ext]:
                extension_sizes[ext] = size

    return extension_sizes

# 範例使用
folder = "C:/AppServ/www/theme"
result = get_largest_file_size_by_extension(folder)

# 顯示結果
for ext, size in result.items():
    print(f"{ext if ext else '[無副檔名]'}: {size} bytes")
