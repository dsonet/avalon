
<h1>Avalon</h1>
<p>迷你简单易用的MVVM框架</p>
<p>前端做久了就会发现HTML(DOM)才是所有前端的真正精髓汇聚地。不管JS和CSS都是为DOM服务的。但是DOM遍布荆棘与陷阱，因此才出现像jQuery那样专门为它填坑的库，
当下的前端开发就是一边填坑一边写业务中进行。avalon的诞生改变了这一切，让我们摆脱DOM的掣肘，专注于需求本身，将可变的数据与操作数据的方法封装成模型。
在更高的层次上组织代码，提高软件的可维护性，可扩展性和可重用性。</p>
<hr>
* core 核心模块 
  *  classic(<IE9,兼容IE6)
  *  modern(>IE9，支持IE10及其以上版本，及标准浏览器)
  *  es6(支持Object.observe特性,适合支持ES6标准的浏览器)
* features 特性模块
  *  touch(支持触屏)
  *  require（amd规范加载器）
  *  ajax, route, animate
  *  filters(从core中抽离出来预置的过滤器) 
  *  promise
  *  live, store, browser, validate...
* ui (widgets) 界面组件模块
  *  datepicker
  *  tabpanel...
<h3>优势</h3>
<ul>
    <li>使用简单，在HTML中添加绑定，在JS中用avalon.define定义ViewModel，再调用avalon.scan方法，它就能动了！</li>
    <li>兼容到IE6(其他mvvm框架， knockoutjs IE6, angularjs IE8, emberjs IE8, winJS IE9 )</li>
    <li>没有任何依赖，不到4000行，压缩后不到50KB</li>
    <li>支持管道符风格的过滤函数，方便格式化输出</li>
    <li>局部刷新的颗粒度已细化到一个文本节点，特性节点</li>
    <li>要操作的节点，在第一次扫描就与视图刷新函数相绑定，并缓存起来，因此没有选择器出场的余地。</li>
    <li>让DOM操作的代码近乎绝迹</li>
    <li>使用类似CSS的重叠覆盖机制，让各个ViewModel分区交替地渲染页面</li>
    <li>节点移除时，智能卸载对应的视图刷新函数，节约内存</li>
    <li><strong>操作数据即操作DOM</strong>，对ViewModel的操作都会同步到View与Model去。</li>
</ul>
<div><img src="https://raw2.github.com/RubyLouvre/avalon/master/examples/images/ecosphere.jpg" width="400" height="640"></div>
<p>相关学习教程: <a href="http://limodou.github.io/avalon-learning/zh_CN/index.html">《avalon-learning 教程》</a>→<a href="http://www.cnblogs.com/rubylouvre/p/3181291.html">《入门教程》</a>→<a href="http://rubylouvre.github.io/mvvm/">官网</a>→
<a href="http://vdisk.weibo.com/s/aMO9PyIQCnLOF/1375154475">HTML5交流会有关avalon的PPT</a>→<a href="http://www.cnblogs.com/rubylouvre/p/3385373.html">《avalon最佳实践》</a>
</p>
<h3>运行github中的示例</h3>
<p>配合node使用。点击它然后打开里面与index开头的HTML文件，一边看运行效果，一边看源码进行学习。</p>
<p><img src="https://raw.github.com/RubyLouvre/avalon/master/examples/images/example.jpg"/></p>
<h3>JS文件的压缩</h3>
```
java -jar compiler.jar --js avalon.js --js_output_file avalon.min.js
java -jar compiler.jar --js avalon.modern.js --js_output_file avalon.modern.min.js
```
<p>大家也可以在<a href="http://huati.weibo.com/k/avalon%E5%BF%AB%E6%8A%A5?from=501&order=time">新浪微博</a>第一时间了解它的变更或各种秘笈分享！</p>


<h3>源码内部的模块划分</h3>
<p>从上至下，依次是</p>
- 全局变量及方法
- avalon的静态方法定义区
- modelFactory
- javascript 底层补丁  
- DOM 底层补丁    
- 配置系统
- avalon的原型方法定义区
- HTML处理(parseHTML, innerHTML, clearHTML)  
- 自定义事件系统
- 依赖调度系统  
- 扫描系统
- 编译系统
- 绑定处理系统
- 监控数组
- DOMReady
