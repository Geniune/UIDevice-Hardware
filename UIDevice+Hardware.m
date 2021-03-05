//
//  UIDevice.m
//
//  Created by Geniune on 2020/4/23.
//  Copyright © 2020 Geniune. All rights reserved.
//

#import "UIDevice+Hardware.h"
#import <sys/utsname.h>

#pragma mark - AirPods
NSString *AirPodsPlatform(NSString *platform){
    
    if ([platform isEqualToString:@"AirPods1,1"])      return @"AirPods";
    if ([platform isEqualToString:@"AirPods2,1"])      return @"AirPods 2";
    if ([platform isEqualToString:@"iProd8,1"])          return @"AirPods Pro";

    NSLog(@"Unknown AirPods: %@", platform);
    return platform;
}

#pragma mark - Apple TV
NSString *AppleTVPlatform(NSString *platform){
    
    if ([platform isEqualToString:@"AppleTV1,1"])      return @"Apple TV";
    if ([platform isEqualToString:@"AppleTV2,1"])      return @"Apple TV 2";
    if ([platform isEqualToString:@"AppleTV3,1"])      return @"Apple TV 3";
    if ([platform isEqualToString:@"AppleTV5,3"])      return @"Apple TV 4";
    if ([platform isEqualToString:@"AppleTV6,2"])      return @"Apple TV 4K ";

    NSLog(@"Unknown Apple TV: %@", platform);
    return platform;
}

#pragma mark - Apple Watch
NSString *AppleWatchPlatform(NSString *platform){
    
    if ([platform isEqualToString:@"Watch1,1"])      return @"Apple Watch";
    if ([platform isEqualToString:@"Watch1,2"])      return @"Apple Watch";
    if ([platform isEqualToString:@"Watch2,6"])      return @"Apple Watch Series 1";
    if ([platform isEqualToString:@"Watch2,7"])      return @"Apple Watch Series 1";
    if ([platform isEqualToString:@"Watch2,3"])      return @"Apple Watch Series 2";
    if ([platform isEqualToString:@"Watch2,4"])      return @"Apple Watch Series 2";
    if ([platform isEqualToString:@"Watch3,1"])      return @"Apple Watch Series 3";
    if ([platform isEqualToString:@"Watch3,2"])      return @"Apple Watch Series 3";
    if ([platform isEqualToString:@"Watch3,3"])      return @"Apple Watch Series 3";
    if ([platform isEqualToString:@"Watch3,4"])      return @"Apple Watch Series 3";
    //2018年9月发布，更新一种机型：Apple Watch S4
    if ([platform isEqualToString:@"Watch4,1"])      return @"Apple Watch Series 4";
    if ([platform isEqualToString:@"Watch4,2"])      return @"Apple Watch Series 4";
    if ([platform isEqualToString:@"Watch4,3"])      return @"Apple Watch Series 4";
    if ([platform isEqualToString:@"Watch4,4"])      return @"Apple Watch Series 4";
    //2019年9月发布，更新一种机型：Apple Watch S5
    if ([platform isEqualToString:@"Watch5,1"])      return @"Apple Watch Series 5";
    if ([platform isEqualToString:@"Watch5,2"])      return @"Apple Watch Series 5";
    if ([platform isEqualToString:@"Watch5,3"])      return @"Apple Watch Series 5";
    if ([platform isEqualToString:@"Watch5,4"])      return @"Apple Watch Series 5";
    //2020年9月发布，更新两种机型：Apple Watch SE、Apple Watch S6
    if ([platform isEqualToString:@"Watch5,9"])      return @"Apple Watch SE";
    if ([platform isEqualToString:@"Watch5,10"])      return @"Apple Watch SE";
    if ([platform isEqualToString:@"Watch5,11"])      return @"Apple Watch SE";
    if ([platform isEqualToString:@"Watch5,12"])      return @"Apple Watch SE";
    if ([platform isEqualToString:@"Watch6,1"])      return @"Apple Watch Series 6";
    if ([platform isEqualToString:@"Watch6,2"])      return @"Apple Watch Series 6";
    if ([platform isEqualToString:@"Watch6,3"])      return @"Apple Watch Series 6";
    if ([platform isEqualToString:@"Watch6,4"])      return @"Apple Watch Series 6";

    NSLog(@"Unknown Apple Watch: %@", platform);
    return platform;
}

#pragma mark - HomePod
NSString *HomePodPlatform(NSString *platform){
    
    //2017年6月发布，更新一种机型：HomePod
    if ([platform isEqualToString:@"AudioAccessory1,1"])      return @"HomePod";
    if ([platform isEqualToString:@"AudioAccessory1,2"])      return @"HomePod";
    //2020年10月发布，更新一种机型：HomePod mini
    if ([platform isEqualToString:@"AudioAccessory5,1"])      return @"HomePod mini";

    NSLog(@"Unknown HomePod: %@", platform);
    return platform;
}

#pragma mark - iPad
NSString *iPadPlatform(NSString *platform){
    
    //iPad
    if ([platform isEqualToString:@"iPad1,1"])   return @"iPad";
    if ([platform isEqualToString:@"iPad2,1"])   return @"iPad 2";
    if ([platform isEqualToString:@"iPad2,2"])   return @"iPad 2";
    if ([platform isEqualToString:@"iPad2,3"])   return @"iPad 2";
    if ([platform isEqualToString:@"iPad2,4"])   return @"iPad 2";
    if ([platform isEqualToString:@"iPad3,1"])   return @"iPad 3";
    if ([platform isEqualToString:@"iPad3,2"])   return @"iPad 3";
    if ([platform isEqualToString:@"iPad3,3"])   return @"iPad 3";
    if ([platform isEqualToString:@"iPad3,4"])   return @"iPad 4";
    if ([platform isEqualToString:@"iPad3,5"])   return @"iPad 4";
    if ([platform isEqualToString:@"iPad3,6"])   return @"iPad 4";
    if ([platform isEqualToString:@"iPad6,11"])  return @"iPad 5";
    if ([platform isEqualToString:@"iPad6,12"])  return @"iPad 5";
    if ([platform isEqualToString:@"iPad7,5"])   return @"iPad 6";
    if ([platform isEqualToString:@"iPad7,6"])   return @"iPad 6";
    if ([platform isEqualToString:@"iPad7,11"])   return @"iPad 7";
    if ([platform isEqualToString:@"iPad7,12"])   return @"iPad 7";
    if ([platform isEqualToString:@"iPad11,6"])   return @"iPad 8";
    if ([platform isEqualToString:@"iPad11,7"])   return @"iPad 8";
    
    //iPad Air
    if ([platform isEqualToString:@"iPad4,1"])   return @"iPad Air";
    if ([platform isEqualToString:@"iPad4,2"])   return @"iPad Air";
    if ([platform isEqualToString:@"iPad4,3"])   return @"iPad Air";
    if ([platform isEqualToString:@"iPad5,3"])   return @"iPad Air 2";
    if ([platform isEqualToString:@"iPad5,4"])   return @"iPad Air 2";
    if ([platform isEqualToString:@"iPad11,3"])   return @"iPad Air 3";
    if ([platform isEqualToString:@"iPad11,4"])   return @"iPad Air 3";
    if ([platform isEqualToString:@"iPad13,1"])   return @"iPad Air 4";
    if ([platform isEqualToString:@"iPad13,2"])   return @"iPad Air 4";
    
    //iPad Pro
    if ([platform isEqualToString:@"iPad6,7"])   return @"iPad Pro (12.9-inch) ";
    if ([platform isEqualToString:@"iPad6,8"])   return @"iPad Pro (12.9-inch) ";
    if ([platform isEqualToString:@"iPad6,3"])   return @"iPad Pro (9.7-inch)";
    if ([platform isEqualToString:@"iPad6,4"])   return @"iPad Pro (9.7-inch)";
    if ([platform isEqualToString:@"iPad7,1"])   return @"iPad Pro 2 (12.9-inch)";
    if ([platform isEqualToString:@"iPad7,2"])   return @"iPad Pro 2 (12.9-inch)";
    if ([platform isEqualToString:@"iPad7,3"])   return @"iPad Pro (10.5-inch)";
    if ([platform isEqualToString:@"iPad7,4"])   return @"iPad Pro (10.5-inch)";
    if ([platform isEqualToString:@"iPad8,1"])   return @"iPad Pro (11-inch)";
    if ([platform isEqualToString:@"iPad8,2"])   return @"iPad Pro (11-inch)";
    if ([platform isEqualToString:@"iPad8,3"])   return @"iPad Pro (11-inch)";
    if ([platform isEqualToString:@"iPad8,4"])   return @"iPad Pro (11-inch)";
    if ([platform isEqualToString:@"iPad8,5"])   return @"iPad Pro 3 (12.9-inch)";
    if ([platform isEqualToString:@"iPad8,6"])   return @"iPad Pro 3 (12.9-inch)";
    if ([platform isEqualToString:@"iPad8,7"])   return @"iPad Pro 3 (12.9-inch)";
    if ([platform isEqualToString:@"iPad8,8"])   return @"iPad Pro 3 (12.9-inch)";
    if ([platform isEqualToString:@"iPad8,9"])   return @"iPad Pro 2 (11-inch)";
    if ([platform isEqualToString:@"iPad8,10"])   return @"iPad Pro 2 (11-inch)";
    if ([platform isEqualToString:@"iPad8,11"])   return @"iPad Pro 4 (12.9-inch)";
    if ([platform isEqualToString:@"iPad8,12"])   return @"iPad Pro 4 (12.9-inch)";
    
    //iPad mini
    if ([platform isEqualToString:@"iPad2,5"])   return @"iPad mini";
    if ([platform isEqualToString:@"iPad2,6"])   return @"iPad mini";
    if ([platform isEqualToString:@"iPad2,7"])   return @"iPad mini";
    if ([platform isEqualToString:@"iPad4,4"])   return @"iPad mini 2";
    if ([platform isEqualToString:@"iPad4,5"])   return @"iPad mini 2";
    if ([platform isEqualToString:@"iPad4,6"])   return @"iPad mini 2";
    if ([platform isEqualToString:@"iPad4,7"])   return @"iPad mini 3";
    if ([platform isEqualToString:@"iPad4,8"])   return @"iPad mini 3";
    if ([platform isEqualToString:@"iPad4,9"])   return @"iPad mini 3";
    if ([platform isEqualToString:@"iPad5,1"])   return @"iPad mini 4";
    if ([platform isEqualToString:@"iPad5,2"])   return @"iPad mini 4";
    if ([platform isEqualToString:@"iPad11,1"])   return @"iPad mini 5";
    if ([platform isEqualToString:@"iPad11,2"])   return @"iPad mini 5";

    NSLog(@"Unknown iPad: %@", platform);
    return platform;
}

#pragma mark - iPhone
NSString *iPhonePlatform(NSString *platform){
    
    if ([platform isEqualToString:@"iPhone1,1"])    return @"iPhone";
    //2008年6月发布，更新一种机型：iPhone 3G
    if ([platform isEqualToString:@"iPhone1,2"])    return @"iPhone 3G";
    //2009年6月发布，更新一种机型：iPhone 3G
    if ([platform isEqualToString:@"iPhone2,1"])    return @"iPhone 3GS";
    //2010年6月发布，更新一种机型：iPhone 4
    if ([platform isEqualToString:@"iPhone3,1"])    return @"iPhone 4";
    if ([platform isEqualToString:@"iPhone3,2"])    return @"iPhone 4";
    if ([platform isEqualToString:@"iPhone3,3"])    return @"iPhone 4";
    //2011年10月发布，更新一种机型：iPhone 4s
    if ([platform isEqualToString:@"iPhone4,1"])    return @"iPhone 4s";
    //2012年9月发布，更新一种机型：iPhone 5
    if ([platform isEqualToString:@"iPhone5,1"])    return @"iPhone 5";
    if ([platform isEqualToString:@"iPhone5,2"])    return @"iPhone 5";
    //2013年9月发布，更新二种机型：iPhone 5c、iPhone 5s
    if ([platform isEqualToString:@"iPhone5,3"])    return @"iPhone 5c";
    if ([platform isEqualToString:@"iPhone5,4"])    return @"iPhone 5c";
    if ([platform isEqualToString:@"iPhone6,1"])    return @"iPhone 5s";
    if ([platform isEqualToString:@"iPhone6,2"])    return @"iPhone 5s";
    //2014年9月发布，更新二种机型：iPhone 6、iPhone 6 Plus
    if ([platform isEqualToString:@"iPhone7,2"])    return @"iPhone 6";
    if ([platform isEqualToString:@"iPhone7,1"])    return @"iPhone 6 Plus";
    //2015年9月发布，更新二种机型：iPhone 6s、iPhone 6s Plus
    if ([platform isEqualToString:@"iPhone8,1"])    return @"iPhone 6s";
    if ([platform isEqualToString:@"iPhone8,2"])    return @"iPhone 6s Plus";
    //2016年3月发布，更新一种机型：iPhone SE
    if ([platform isEqualToString:@"iPhone8,4"])    return @"iPhone SE";
    //2016年9月发布，更新二种机型：iPhone 7、iPhone 7 Plus
    if ([platform isEqualToString:@"iPhone9,1"])    return @"iPhone 7";
    if ([platform isEqualToString:@"iPhone9,3"])    return @"iPhone 7";
    if ([platform isEqualToString:@"iPhone9,2"])    return @"iPhone 7 Plus";
    if ([platform isEqualToString:@"iPhone9,4"])    return @"iPhone 7 Plus";
    //2017年9月发布，更新三种机型：iPhone 8、iPhone 8 Plus、iPhone X
    if ([platform isEqualToString:@"iPhone10,1"])  return @"iPhone 8";
    if ([platform isEqualToString:@"iPhone10,4"])  return @"iPhone 8";
    if ([platform isEqualToString:@"iPhone10,2"])  return @"iPhone 8 Plus";
    if ([platform isEqualToString:@"iPhone10,5"])  return @"iPhone 8 Plus";
    if ([platform isEqualToString:@"iPhone10,3"])  return @"iPhone X";
    if ([platform isEqualToString:@"iPhone10,6"])  return @"iPhone X";
    //2018年10月发布，更新三种机型：iPhone XR、iPhone XS、iPhone XS Max
    if ([platform isEqualToString:@"iPhone11,8"])  return  @"iPhone XR";
    if ([platform isEqualToString:@"iPhone11,2"])  return @"iPhone XS";
    if ([platform isEqualToString:@"iPhone11,4"])  return @"iPhone XS Max";
    if ([platform isEqualToString:@"iPhone11,6"])  return @"iPhone XS Max";
    //2019年9月发布，更新三种机型：iPhone 11、iPhone 11 Pro、iPhone 11 Pro Max
    if ([platform isEqualToString:@"iPhone12,1"])  return  @"iPhone 11";
    if ([platform isEqualToString:@"iPhone12,3"])  return  @"iPhone 11 Pro";
    if ([platform isEqualToString:@"iPhone12,5"])  return  @"iPhone 11 Pro Max";
    //2020年4月发布，更新一种机型：iPhone SE2
    if ([platform isEqualToString:@"iPhone12,8"])  return  @"iPhone SE2";
    //2020年10月发布，更新四种机型：iPhone 12 mini、iPhone 12、iPhone 12 Pro、iPhone 12 Pro Max
    if ([platform isEqualToString:@"iPhone13,1"])  return  @"iPhone 12 mini";
    if ([platform isEqualToString:@"iPhone13,2"])  return  @"iPhone 12";
    if ([platform isEqualToString:@"iPhone13,3"])  return  @"iPhone 12 Pro";
    if ([platform isEqualToString:@"iPhone13,4"])  return  @"iPhone 12 Pro Max";
    
    NSLog(@"Unknown iPhone: %@", platform);
    return platform;
}

#pragma mark - iPod
NSString *iPodPlatform(NSString *platform){
    
    if ([platform isEqualToString:@"iPod1,1"])      return @"iPod Touch";
    if ([platform isEqualToString:@"iPod2,1"])      return @"iPod touch 2";
    if ([platform isEqualToString:@"iPod3,1"])      return @"iPod touch 3";
    if ([platform isEqualToString:@"iPod4,1"])      return @"iPod touch 4";
    if ([platform isEqualToString:@"iPod5,1"])      return @"iPod Touch 5";
    if ([platform isEqualToString:@"iPod7,1"])      return @"iPod touch 6";
    //2019年5月发布，更新一种机型：iPod touch (7th generation)
    if ([platform isEqualToString:@"iPod9,1"])      return @"iPod touch 7";

    NSLog(@"Unknown iPod: %@", platform);
    return platform;
}

@implementation UIDevice (Hardware)

#pragma mark - 设备Model Identifier
- (NSString *)model{
    
    struct utsname systemInfo;
    uname(&systemInfo);
    return [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
}

#pragma mark - Model Identifier转Generation
- (NSString *)generation{
    
    NSString *model = [self model];
    
    //注意：请使用真机测试，使用模拟器会返回Simulator（与模拟器所对应的机型无关）
    if([model isEqualToString:@"i386"] || [model isEqualToString:@"x86_64"]){
        return @"Simulator";
    }
    if([model rangeOfString:@"iPhone"].location != NSNotFound){
        return iPhonePlatform(model);
    }
    if([model rangeOfString:@"iPad"].location != NSNotFound){
        return iPadPlatform(model);
    }
    if([model rangeOfString:@"iPod"].location != NSNotFound){
        return iPodPlatform(model);
    }
    if([model rangeOfString:@"AirPods"].location != NSNotFound ||
       [model rangeOfString:@"iProd"].location != NSNotFound){
        return AirPodsPlatform(model);
    }
    if([model rangeOfString:@"AppleTV"].location != NSNotFound){
        return AppleTVPlatform(model);
    }
    if([model rangeOfString:@"Watch"].location != NSNotFound){
        return AppleWatchPlatform(model);
    }
    if([model rangeOfString:@"AudioAccessory"].location != NSNotFound){
        return HomePodPlatform(model);
    }
    
    return [NSString stringWithFormat:@"Unknown Device: %@", model];
}

@end
