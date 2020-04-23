# UIDevice-Hardware
相关技术贴链接：https://www.jianshu.com/p/308a4a85e114

获取苹果设备相关信息，目前支持的全家桶：
1. iPhone全系列（包括2020年最新推出的iPhone SE2）
2. iPad全系列（包括iPad、iPad Air、iPad Pro、iPad mini）
3. iPod全系列（包括iPod touch 7）
4. AirPods（包括AirPods Pro）
5. Apple Watch全系列
6. HomdPod（目前苹果只推出过一款）


觉得用着还行记得给个star~ ：）

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
