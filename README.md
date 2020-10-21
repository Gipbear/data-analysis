> 本笔记C:\Users\10990\Documents\ml-notebook\z总结.md主要是用于记录一些有关数据分析处理的一些知识。依旧在学习中，非专业。

## 机器学习总结

内容并不包括完整的推导过程，主要是算法的一些简单介绍、模型特征和应用场景、以及相关的python案例。
* [chapter01 K近邻](https://github.com/Gipbear/data-analysis/blob/master/%E6%9C%BA%E5%99%A8%E5%AD%A6%E4%B9%A0%E6%80%BB%E7%BB%93/ch01_K%E8%BF%91%E9%82%BB%E7%AE%97%E6%B3%95.ipynb)
* [chapter02 决策树](https://github.com/Gipbear/data-analysis/blob/master/%E6%9C%BA%E5%99%A8%E5%AD%A6%E4%B9%A0%E6%80%BB%E7%BB%93/ch02_%E5%86%B3%E7%AD%96%E6%A0%91.ipynb)
* [chapter03 支持向量机](https://github.com/Gipbear/data-analysis/blob/master/%E6%9C%BA%E5%99%A8%E5%AD%A6%E4%B9%A0%E6%80%BB%E7%BB%93/ch03_%E6%94%AF%E6%8C%81%E5%90%91%E9%87%8F%E6%9C%BASVM.ipynb)
* [chapter04 朴素贝叶斯](https://github.com/Gipbear/data-analysis/blob/master/%E6%9C%BA%E5%99%A8%E5%AD%A6%E4%B9%A0%E6%80%BB%E7%BB%93/ch04_%E6%9C%B4%E7%B4%A0%E8%B4%9D%E5%8F%B6%E6%96%AF.ipynb)
* [chapter05 线性回归](https://github.com/Gipbear/data-analysis/blob/master/%E6%9C%BA%E5%99%A8%E5%AD%A6%E4%B9%A0%E6%80%BB%E7%BB%93/ch05_%E7%BA%BF%E6%80%A7%E5%9B%9E%E5%BD%92.ipynb)
* [chapter06 逻辑回归](https://github.com/Gipbear/data-analysis/blob/master/%E6%9C%BA%E5%99%A8%E5%AD%A6%E4%B9%A0%E6%80%BB%E7%BB%93/ch06_%E9%80%BB%E8%BE%91%E5%9B%9E%E5%BD%92LR.ipynb)
* [chapter07 K均值](https://github.com/Gipbear/data-analysis/blob/master/%E6%9C%BA%E5%99%A8%E5%AD%A6%E4%B9%A0%E6%80%BB%E7%BB%93/ch07_k%E5%9D%87%E5%80%BCKmeans.ipynb)
* [chapter08 DBSCAN](https://github.com/Gipbear/data-analysis/blob/master/%E6%9C%BA%E5%99%A8%E5%AD%A6%E4%B9%A0%E6%80%BB%E7%BB%93/ch08_DBSCAN%E8%81%9A%E7%B1%BB.ipynb)
* [chapter09 期望最大化EM](https://github.com/Gipbear/data-analysis/blob/master/%E6%9C%BA%E5%99%A8%E5%AD%A6%E4%B9%A0%E6%80%BB%E7%BB%93/ch09_%E6%9C%9F%E6%9C%9B%E6%9C%80%E5%A4%A7%E5%8C%96EM.ipynb)
* [chapter10 XGBoost](https://github.com/Gipbear/data-analysis/blob/master/%E6%9C%BA%E5%99%A8%E5%AD%A6%E4%B9%A0%E6%80%BB%E7%BB%93/ch10_GBDT-Xgboost.ipynb)

## 数据分析实战

* [用户购物行为分析](https://github.com/Gipbear/data-analysis/blob/master/%E6%95%B0%E6%8D%AE%E5%88%86%E6%9E%90%E5%AE%9E%E6%88%98/%E7%94%A8%E6%88%B7%E8%B4%AD%E7%89%A9%E8%A1%8C%E4%B8%BA/%E7%94%A8%E6%88%B7%E8%B4%AD%E7%89%A9%E8%A1%8C%E4%B8%BA%E5%88%86%E6%9E%90.ipynb)


### 出现的问题

* github上的版本和本地版本冲突的解决方法[参考该博客解决](https://blog.csdn.net/shiren1118/article/details/7761203)
    > 记得看评论！被笑死！团队合作不建议直接覆盖！
    > 自己确认本地是完全最新且正确的可以使用强制更新 `git push -u origin master -f `
    
* 在用户购物行为分析中，出现git push数据文件过大，而无法成功，于是取消文件上传，尝试了很多方法，最终选择
    > 查看log日志，找到上传文件的前一个节点：git log --diff-filter= --summary
    > 恢复至该节点号：git reset --hard ID

* 下一个