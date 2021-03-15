# UIDevice-Hardware
相关技术贴链接：https://www.jianshu.com/p/308a4a85e114

觉得用着还行记得给个star~ ：）

目前支持的苹果设备全家桶：
1. AirPods 全系列
2. Apple TV 全系列
3. Apple Watch 全系列
4. HomePod 全系列
5. iPad 全系列
6. iPhone 全系列
7. iPod 全系列

更新日志：
```
2021年1月，更新一款AirPods：

1. AirPods Pro
```
```
2020年10月，更新四款iPhone+一款HomePod：

1. iPhone 12 mini
2. iPhone 12
3. iPhone 12 Pro
4. iPhone 12 Pro Max
5. HomePod mini
```
```
2020年9月，更新两款Watch+两款iPad：

1. Apple Watch SE
2. Apple Watch（第六代）
3. iPad（第八代）
4. iPad Air（第四代）
```

使用方法如下
```
#import "UIDevice+Hardware.h" //导入头文件

UIDevice *device = [UIDevice currentDevice];
NSLog(@"%@", [device generation]); //设备型号
```

输出示例：
```
iPhone XS
```

