## 列表性能优化
> FlutterSDK 3.16.0

## 优化方法
1. 使用ListView.builder，只会渲染屏幕上可见的数据，减少内存占用。
2. 图片优化：使用小图、延迟（懒加载）加载图片
3. 缓存处理：将图片缓存到磁盘或者内存，减少内存占用。考虑使用NetworkImage或cached_network_image

## 博客
- [ListView列表性能优化](https://ibrave.blog.csdn.net/article/details/134683836?spm=1001.2014.3001.5502)

