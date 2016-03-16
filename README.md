###Xcode快速预览插件--injectionforxcode

#####简介
做 iOS 开发的都知道，当我们写UI时经常要重复编译工程查看效果，每一次的重新编译累计起来浪费了我们大量的时间。injectionforxcode这个插件可以快速帮助我们实时预览效果，无须重启应用。

#####先上效果图
 <div align='center'>
        <img src="http://ww1.sinaimg.cn/large/ad695ba9gw1f1ymto2u5eg21380lh1kx.gif" width = "600" height = "354" alt=“” align=center />  
 </div>
 
 
#####安装方法

1、通过 [Alcatraz](http://alcatraz.io/) 安装
 <div align='center'>
        <img src="http://ww1.sinaimg.cn/large/ad695ba9gw1f1yn4b169fj20uc0lwjv8.jpg" width = "600" height = "406" alt=“” align=center />  
 </div>  
  
2、

 ```
  2.1 、git clone https://github.com/johnno1962/injectionforxcode.git 
  2.2 、编译 InjectionPluginLite/InjectionPlugin.xcodeproj
     
```

#####使用方法
 在你修改完代码后按下面的组合健即可 
 
 ```
 shift + control + =        //(以MBP为例，shift健 ＋ control健 ＋ 等于号)
 ```
 
 你也可以监听Injection的回调方法(可选)
 
 ```
 [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(injected) name:@"INJECTION_BUNDLE_NOTIFICATION" object:nil];
 
 - (void)injected
{
    NSLog(@"I've been injected: %@", self);
}
 
 ```
 
#####原理图

 <div align='center'>
        <img src="http://ww4.sinaimg.cn/large/ad695ba9gw1f1ynd421c1j20ki08jq46.jpg " width = "600" height = "250" alt=“原理图” align=center />  
 </div> 
 
#####相关链接：
作者twitter    :[@orta](https://twitter.com/orta)

GitHUb        :[https://github.com/johnno1962/injectionforxcode](https://github.com/johnno1962/injectionforxcode)

作者亲自录的教程 :[https://www.youtube.com/watch?v=uftvtmyZ8TM&feature=youtu.be](https://www.youtube.com/watch?v=uftvtmyZ8TM&feature=youtu.be)

Demo           :[https://github.com/lioonline/Injection4XcodeDemo](https://github.com/lioonline/Injection4XcodeDemo)
