# UIDevice-Hardware
相关技术贴链接：https://www.jianshu.com/p/308a4a85e114

获取苹果设备相关信息，目前支持的全家桶：
1. iPhone 全系列
2. iPad 全系列
3. iPod 全系列
4. AirPods 全系列
5. Apple Watch 全系列
6. HomePod（目前苹果只推出过一款）


客官觉得用着还行记得给个star~ ：）

更新：
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
#import "UIDevice+Hardware.h" //需要导入.h文件

UIDevice *device = [UIDevice currentDevice];
NSLog(@"设备型号：%@", device.platformString); 
NSLog(@"MAC地址：%@", device.macAddress);
NSLog(@"IP地址：%@", device.ipAddresses);
NSLog(@"系统：%@%@", theDevice.systemName, theDevice.systemVersion);
```

输出示例：
```
设备型号：iPhone 8
MAC地址：38:C9:86:41:7C:4E
IP地址：192.168.3.1
系统：iOS13.1
```


