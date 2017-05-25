# HotFixDemo
官网文档给的例子太复杂，作为新手，我只想一个最干净最简单最直观的例子。看图说话：
![image](https://github.com/tomyZhou/HotFixDemo/blob/master/fix/old.png)  ![image](https://github.com/tomyZhou/HotFixDemo/blob/master/fix/new.png)

我使用的是hotfixt3.0版本：https://www.aliyun.com/product/hotfix


补丁修复成功要素要注意以下几点：

	一. 最重要的“版本号”一致：

		1.gradle 里配置的app版本号versionName，和Application里的setAppVersion 版本号一致，
		
		和阿里云后台配置的版本号一致，比如我的例子里面都是1.0  
	   
		2.修改后的代码版本号不要变。gradle里的versionName和和Application里的setAppVersion，都保持不变。
		
		例如，我给1.0版本打补丁，修改完bug后的代码还是1.0版本。
		
	   
	二. gradle 配置文件，最简单的就要像我例子里的一样，少一点就会出现本地测试可以修复成功，从网上下发补丁不成功的现象。
	
	    调查了很久发现就出现code =14，初始化报错信息是“loadPatch not found any patch file to load”


	三. 生产补丁包的工具，和测试用的apk文件都要下载hotfix3.0对应的版本，这个我已经都放fix目录下了。
	

	四. 签名放在了fix/fix.jks里面，keyPassword 和 key store password都是111111，Key alias是fix，
	  
	    另外亲测签名也照样可以成功补丁修复成功。
	
	五. 如果一切正常就可以测试了。
	
	
	步骤如下：1.安装old.apk看看原效果 
	          
			  2.去网站后台发布补丁 
	
			  3. 过5秒(亲测有几秒的延迟)，把app进程清掉，再点击进去。
			  如果成功的话效果就如上面两张图。


备注：我在fix里面还放了我生产的例子，old.apk 表示原始程序，new.apk 表示修改后的程序一，new2.apk表示修改后的

	  程序二，sophix-patch.jar是 new2.apk 和 old.apk “搞”出来的补丁包。