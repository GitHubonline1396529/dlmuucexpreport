import numpy as np
from sklearn.preprocessing import StandardScaler
from scipy.cluster.hierarchy import linkage, dendrogram
import matplotlib.pyplot as plt

# 生成随机数据
np.random.seed(42)
data = np.random.rand(20, 2) * 100

# 标准化数据
scaler = StandardScaler()
data_normalized = scaler.fit_transform(data)

# 进行系统聚类
Z = linkage(data_normalized, method='ward')

# 绘制树状图
plt.figure(figsize=(10, 5))
dendrogram(Z, leaf_rotation=90, leaf_font_size=10)
plt.title('Hierarchical Clustering Dendrogram')
plt.xlabel('Sample index')
plt.ylabel('Distance')
plt.grid(True)
plt.tight_layout()
plt.show()