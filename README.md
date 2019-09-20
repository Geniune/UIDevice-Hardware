# UIDevice-Hardware
iOS获取设备相关信息
由于苹果为iPad打造了一套独立的系统：PadOS，因此Pad相关设备型号将不再更新

```
#import "UIDevice+Hardware.h"

UIDevice *device = [UIDevice currentDevice];
NSLog(@"设备型号：%@", device.platformString);
NSLog(@"MAC地址：%@", device.macAddress);
NSLog(@"IP地址：%@", device.ipAddresses);
```
