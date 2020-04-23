# UIDevice-Hardware
iOS获取设备相关信息，相关简书贴：https://www.jianshu.com/p/308a4a85e114

使用方法如下:
```
#import "UIDevice+Hardware.h" //需要导入.h文件

UIDevice *device = [UIDevice currentDevice];
NSLog(@"设备型号：%@", device.platformString); 
NSLog(@"MAC地址：%@", device.macAddress);
NSLog(@"IP地址：%@", device.ipAddresses);
NSLog(@"iOS版本：%@", device.systemVersion);
```
输出示例：
```
设备型号：iPhone 8
MAC地址：38:C9:86:41:7C:4E
IP地址：192.168.3.1
iOS版本：12.1
```
