# UIDevice-Hardware
iOS获取设备相关信息

```
UIDevice *device = [UIDevice currentDevice];
NSLog(@"设备型号：%@", device.platformString);
NSLog(@"MAC地址：%@", device.macAddress);
NSLog(@"IP地址：%@", device.ipAddresses);
```
