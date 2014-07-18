WZTableViewDemo
===============

针对 UITableView 而进行的 UIViewController 轻量化。
  
一、具体实现方法

    1.通过把 UITableViewDataSource 分离放入到一个单独且可复用 dataSource类中。
    2.创建可复用的UITableViewCell,针对不同的数据源单独创建一个 cell 扩展类。
    3.将数据请求移动到对应的 data 类中完成，ViewController 里仅需要通过Block完成后续操作。
    4.最后将业务逻辑封装到 Model 中。
    
    
    通过以上的操作，我们的UIViewController便可以成功的瘦身了，么么哒！
