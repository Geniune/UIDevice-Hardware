# UIDevice-Hardware
相关技术贴链接：https://www.jianshu.com/p/308a4a85e114

觉得用着还行记得给个star~ ：）

目前支持的苹果设备全家桶：
1. AirPods 全系列
2. AirTag 
3. Apple TV 全系列
4. Apple Watch 全系列
5. HomePod 全系列
6. iPad 全系列
7. iPhone 全系列
8. iPod 全系列

更新日志：
```
2021年5月

1. AirPods Max
2. AirTag
3. Apple TV 4K（第二代）
4. iPad Pro 11英寸（第三代）
5. iPad Pro 12.9英寸（第五代）
```
```
2021年1月

1. AirPods Pro（第二代）
```
```
2020年10月

1. iPhone 12 mini
2. iPhone 12
3. iPhone 12 Pro
4. iPhone 12 Pro Max
5. HomePod mini
```
```
2020年9月

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

