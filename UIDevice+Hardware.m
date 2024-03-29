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
    
    if ([platform isEqualToString:@"AirPods1,1"])      return @"AirPods (1st generation)";
    if ([platform isEqualToString:@"AirPods1,2"])      return @"AirPods (2nd generation)";
    if ([platform isEqualToString:@"AirPods2,1"])      return @"AirPods (2nd generation)";
    if ([platform isEqualToString:@"AirPods1,3"])      return @"AirPods (3rd generation)";
    if ([platform isEqualToString:@"Audio2,1"])         return @"AirPods (3rd generation)";
    if ([platform isEqualToString:@"AirPods2,2"])            return @"AirPods Pro";
    if ([platform isEqualToString:@"AirPodsPro1,1"])       return @"AirPods Pro";
    if ([platform isEqualToString:@"AirPodsPro1,2"])       return @"AirPods Pro (2nd generation)";
    if ([platform isEqualToString:@"iProd8,1"])                 return @"AirPods Pro";
    if ([platform isEqualToString:@"iProd8,6"])                 return @"AirPods Max";
    if ([platform isEqualToString:@"AirPodsMax1,1"])      return @"AirPods Max";

    return platform;
}

#pragma mark - AirTag
NSString *AirTagPlatform(NSString *platform){
    
    if ([platform isEqualToString:@"AirTag1,1"])      return @"AirTag";
    
    return platform;
}

#pragma mark - Apple TV
NSString *AppleTVPlatform(NSString *platform){

    if ([platform isEqualToString:@"AppleTV1,1"])      return @"Apple TV (1st generation)";
    if ([platform isEqualToString:@"AppleTV2,1"])      return @"Apple TV (2nd generation)";
    if ([platform isEqualToString:@"AppleTV3,1"])      return @"Apple TV (3rd generation)";
    if ([platform isEqualToString:@"AppleTV5,3"])      return @"Apple TV (4th generation) ";
    if ([platform isEqualToString:@"AppleTV6,2"])      return @"Apple TV 4K (1st generation)";
    if ([platform isEqualToString:@"AppleTV11,1"])    return @"Apple TV 4K (2nd generation)";

    return platform;
}

#pragma mark - Apple Watch
NSString *AppleWatchPlatform(NSString *platform){
    
    if ([platform isEqualToString:@"Watch1,1"])      return @"Apple Watch (1st generation) (38mm)";
    if ([platform isEqualToString:@"Watch1,2"])      return @"Apple Watch (1st generation) (42mm)";
    if ([platform isEqualToString:@"Watch2,6"])      return @"Apple Watch Series 1 (38mm)";
    if ([platform isEqualToString:@"Watch2,7"])      return @"Apple Watch Series 1 (42mm)";
    if ([platform isEqualToString:@"Watch2,3"])      return @"Apple Watch Series 2 (38mm)";
    if ([platform isEqualToString:@"Watch2,4"])      return @"Apple Watch Series 2 (42mm)";
    if ([platform isEqualToString:@"Watch3,1"])      return @"Apple Watch Series 3 (38mm)";
    if ([platform isEqualToString:@"Watch3,2"])      return @"Apple Watch Series 3 (42mm)";
    if ([platform isEqualToString:@"Watch3,3"])      return @"Apple Watch Series 3 (38mm)";
    if ([platform isEqualToString:@"Watch3,4"])      return @"Apple Watch Series 3 (42mm)";
    if ([platform isEqualToString:@"Watch4,1"])      return @"Apple Watch Series 4 (40mm)";
    if ([platform isEqualToString:@"Watch4,2"])      return @"Apple Watch Series 4 (44mm)";
    if ([platform isEqualToString:@"Watch4,3"])      return @"Apple Watch Series 4 (40mm)";
    if ([platform isEqualToString:@"Watch4,4"])      return @"Apple Watch Series 4 (44mm)";
    if ([platform isEqualToString:@"Watch5,1"])      return @"Apple Watch Series 5 (40mm)";
    if ([platform isEqualToString:@"Watch5,2"])      return @"Apple Watch Series 5 (44mm)";
    if ([platform isEqualToString:@"Watch5,3"])      return @"Apple Watch Series 5 (40mm)";
    if ([platform isEqualToString:@"Watch5,4"])      return @"Apple Watch Series 5 (44mm)";
    if ([platform isEqualToString:@"Watch5,9"])      return @"Apple Watch SE (40mm)";
    if ([platform isEqualToString:@"Watch5,10"])    return @"Apple Watch SE (44mm)";
    if ([platform isEqualToString:@"Watch5,11"])    return @"Apple Watch SE (40mm)";
    if ([platform isEqualToString:@"Watch5,12"])    return @"Apple Watch SE (44mm)";
    if ([platform isEqualToString:@"Watch6,1"])      return @"Apple Watch Series 6 (40mm)";
    if ([platform isEqualToString:@"Watch6,2"])      return @"Apple Watch Series 6 (44mm)";
    if ([platform isEqualToString:@"Watch6,3"])      return @"Apple Watch Series 6 (40mm)";
    if ([platform isEqualToString:@"Watch6,4"])      return @"Apple Watch Series 6 (44mm)";
    if ([platform isEqualToString:@"Watch6,6"])      return @"Apple Watch Series 7 (41mm)";
    if ([platform isEqualToString:@"Watch6,7"])      return @"Apple Watch Series 7 (45mm)";
    if ([platform isEqualToString:@"Watch6,8"])      return @"Apple Watch Series 7 (41mm)";
    if ([platform isEqualToString:@"Watch6,9"])      return @"Apple Watch Series 7 (45mm)";
    if ([platform isEqualToString:@"Watch6,18"])    return @"Apple Watch Ultra";

    return platform;
}

#pragma mark - HomePod
NSString *HomePodPlatform(NSString *platform){
    
    if ([platform isEqualToString:@"AudioAccessory1,1"])      return @"HomePod";
    if ([platform isEqualToString:@"AudioAccessory1,2"])      return @"HomePod";
    if ([platform isEqualToString:@"AudioAccessory5,1"])      return @"HomePod mini";

    return platform;
}

#pragma mark - iPad
NSString *iPadPlatform(NSString *platform){
    
    if ([platform isEqualToString:@"iPad1,1"])   return @"iPad (1st generation)";
    if ([platform isEqualToString:@"iPad2,1"])   return @"iPad (2nd generation)";
    if ([platform isEqualToString:@"iPad2,2"])   return @"iPad (2nd generation)";
    if ([platform isEqualToString:@"iPad2,3"])   return @"iPad (2nd generation)";
    if ([platform isEqualToString:@"iPad2,4"])   return @"iPad (2nd generation)";
    if ([platform isEqualToString:@"iPad2,5"])   return @"iPad mini";
    if ([platform isEqualToString:@"iPad2,6"])   return @"iPad mini";
    if ([platform isEqualToString:@"iPad2,7"])   return @"iPad mini";
    if ([platform isEqualToString:@"iPad3,1"])   return @"iPad (3rd generation)";
    if ([platform isEqualToString:@"iPad3,2"])   return @"iPad (3rd generation)";
    if ([platform isEqualToString:@"iPad3,3"])   return @"iPad (3rd generation)";
    if ([platform isEqualToString:@"iPad3,4"])   return @"iPad (4th generation)";
    if ([platform isEqualToString:@"iPad3,5"])   return @"iPad (4th generation)";
    if ([platform isEqualToString:@"iPad3,6"])   return @"iPad (4th generation)";
    if ([platform isEqualToString:@"iPad4,1"])   return @"iPad Air (1st generation)";
    if ([platform isEqualToString:@"iPad4,2"])   return @"iPad Air (1st generation)";
    if ([platform isEqualToString:@"iPad4,3"])   return @"iPad Air (1st generation)";
    if ([platform isEqualToString:@"iPad4,4"])   return @"iPad mini (2nd generation)";
    if ([platform isEqualToString:@"iPad4,5"])   return @"iPad mini (2nd generation)";
    if ([platform isEqualToString:@"iPad4,6"])   return @"iPad mini (2nd generation)";
    if ([platform isEqualToString:@"iPad4,7"])   return @"iPad mini (3rd generation)";
    if ([platform isEqualToString:@"iPad4,8"])   return @"iPad mini (3rd generation)";
    if ([platform isEqualToString:@"iPad4,9"])   return @"iPad mini (3rd generation)";
    if ([platform isEqualToString:@"iPad5,1"])   return @"iPad mini (4th generation)";
    if ([platform isEqualToString:@"iPad5,2"])   return @"iPad mini (4th generation)";
    if ([platform isEqualToString:@"iPad5,3"])   return @"iPad Air (2nd generation)";
    if ([platform isEqualToString:@"iPad5,4"])   return @"iPad Air (2nd generation)";
    if ([platform isEqualToString:@"iPad6,3"])   return @"iPad Pro (9.7-inch)";
    if ([platform isEqualToString:@"iPad6,4"])   return @"iPad Pro (9.7-inch)";
    if ([platform isEqualToString:@"iPad6,7"])   return @"iPad Pro (12.9-inch) (1st generation)";
    if ([platform isEqualToString:@"iPad6,8"])   return @"iPad Pro (12.9-inch) (1st generation)";
    if ([platform isEqualToString:@"iPad6,11"]) return @"iPad (5th generation)";
    if ([platform isEqualToString:@"iPad6,12"]) return @"iPad (5th generation)";
    if ([platform isEqualToString:@"iPad7,1"])   return @"iPad Pro (12.9-inch) (2nd generation)";
    if ([platform isEqualToString:@"iPad7,2"])   return @"iPad Pro (12.9-inch) (2nd generation)";
    if ([platform isEqualToString:@"iPad7,3"])   return @"iPad Pro (10.5-inch)";
    if ([platform isEqualToString:@"iPad7,4"])   return @"iPad Pro (10.5-inch)";
    if ([platform isEqualToString:@"iPad7,5"])   return @"iPad (6th generation)";
    if ([platform isEqualToString:@"iPad7,6"])   return @"iPad (6th generation)";
    if ([platform isEqualToString:@"iPad7,11"]) return @"iPad (7th generation)";
    if ([platform isEqualToString:@"iPad7,12"]) return @"iPad (7th generation)";
    if ([platform isEqualToString:@"iPad8,1"])   return @"iPad Pro (11-inch) (1st generation)";
    if ([platform isEqualToString:@"iPad8,2"])   return @"iPad Pro (11-inch) (1st generation)";
    if ([platform isEqualToString:@"iPad8,3"])   return @"iPad Pro (11-inch) (1st generation)";
    if ([platform isEqualToString:@"iPad8,4"])   return @"iPad Pro (11-inch) (1st generation)";
    if ([platform isEqualToString:@"iPad8,5"])   return @"iPad Pro (12.9-inch) (3rd generation)";
    if ([platform isEqualToString:@"iPad8,6"])   return @"iPad Pro (12.9-inch) (3rd generation)";
    if ([platform isEqualToString:@"iPad8,7"])   return @"iPad Pro (12.9-inch) (3rd generation)";
    if ([platform isEqualToString:@"iPad8,8"])   return @"iPad Pro (12.9-inch) (3rd generation)";
    if ([platform isEqualToString:@"iPad8,9"])   return @"iPad Pro (11-inch) (2nd generation)";
    if ([platform isEqualToString:@"iPad8,10"]) return @"iPad Pro (11-inch) (2nd generation)";
    if ([platform isEqualToString:@"iPad8,11"]) return @"iPad Pro (12.9-inch) (4th generation)";
    if ([platform isEqualToString:@"iPad8,12"]) return @"iPad Pro (12.9-inch) (4th generation)";
    if ([platform isEqualToString:@"iPad11,1"]) return @"iPad mini (5th generation)";
    if ([platform isEqualToString:@"iPad11,2"]) return @"iPad mini (5th generation)";
    if ([platform isEqualToString:@"iPad11,3"]) return @"iPad Air (3rd generation)";
    if ([platform isEqualToString:@"iPad11,4"]) return @"iPad Air (3rd generation)";
    if ([platform isEqualToString:@"iPad11,6"]) return @"iPad (8th generation)";
    if ([platform isEqualToString:@"iPad11,7"]) return @"iPad (8th generation)";
    if ([platform isEqualToString:@"iPad12,1"]) return @"iPad (9th generation)";
    if ([platform isEqualToString:@"iPad12,2"]) return @"iPad (9th generation)";
    if ([platform isEqualToString:@"iPad13,1"]) return @"iPad Air (4th generation)";
    if ([platform isEqualToString:@"iPad13,2"]) return @"iPad Air (4th generation)";
    if ([platform isEqualToString:@"iPad13,4"]) return @"iPad Pro (11-inch) (3rd generation)";
    if ([platform isEqualToString:@"iPad13,5"]) return @"iPad Pro (11-inch) (3rd generation)";
    if ([platform isEqualToString:@"iPad13,6"]) return @"iPad Pro (11-inch) (3rd generation)";
    if ([platform isEqualToString:@"iPad13,7"]) return @"iPad Pro (11-inch) (3rd generation)";
    if ([platform isEqualToString:@"iPad13,8"]) return @"iPad Pro (12.9-inch) (5th generation)";
    if ([platform isEqualToString:@"iPad13,9"]) return @"iPad Pro (12.9-inch) (5th generation)";
    if ([platform isEqualToString:@"iPad13,10"]) return @"iPad Pro (12.9-inch) (5th generation)";
    if ([platform isEqualToString:@"iPad13,11"]) return @"iPad Pro (12.9-inch) (5th generation)";
    if ([platform isEqualToString:@"iPad13,16"]) return @"iPad Air (5th generation)";
    if ([platform isEqualToString:@"iPad13,17"]) return @"iPad Air (5th generation)";
    if ([platform isEqualToString:@"iPad14,1"]) return @"iPad mini (6th generation)";
    if ([platform isEqualToString:@"iPad14,2"]) return @"iPad mini (6th generation)";

    return platform;
}

#pragma mark - iPhone
NSString *iPhonePlatform(NSString *platform){
    
    if ([platform isEqualToString:@"iPhone1,1"])    return @"iPhone";
    if ([platform isEqualToString:@"iPhone1,2"])    return @"iPhone 3G";
    if ([platform isEqualToString:@"iPhone2,1"])    return @"iPhone 3GS";
    if ([platform isEqualToString:@"iPhone3,1"])    return @"iPhone 4";
    if ([platform isEqualToString:@"iPhone3,2"])    return @"iPhone 4";
    if ([platform isEqualToString:@"iPhone3,3"])    return @"iPhone 4";
    if ([platform isEqualToString:@"iPhone4,1"])    return @"iPhone 4s";
    if ([platform isEqualToString:@"iPhone5,1"])    return @"iPhone 5";
    if ([platform isEqualToString:@"iPhone5,2"])    return @"iPhone 5";
    if ([platform isEqualToString:@"iPhone5,3"])    return @"iPhone 5c";
    if ([platform isEqualToString:@"iPhone5,4"])    return @"iPhone 5c";
    if ([platform isEqualToString:@"iPhone6,1"])    return @"iPhone 5s";
    if ([platform isEqualToString:@"iPhone6,2"])    return @"iPhone 5s";
    if ([platform isEqualToString:@"iPhone7,2"])    return @"iPhone 6";
    if ([platform isEqualToString:@"iPhone7,1"])    return @"iPhone 6 Plus";
    if ([platform isEqualToString:@"iPhone8,1"])    return @"iPhone 6s";
    if ([platform isEqualToString:@"iPhone8,2"])    return @"iPhone 6s Plus";
    if ([platform isEqualToString:@"iPhone8,4"])    return @"iPhone SE";
    if ([platform isEqualToString:@"iPhone9,1"])    return @"iPhone 7";
    if ([platform isEqualToString:@"iPhone9,3"])    return @"iPhone 7";
    if ([platform isEqualToString:@"iPhone9,2"])    return @"iPhone 7 Plus";
    if ([platform isEqualToString:@"iPhone9,4"])    return @"iPhone 7 Plus";
    if ([platform isEqualToString:@"iPhone10,1"])  return @"iPhone 8";
    if ([platform isEqualToString:@"iPhone10,4"])  return @"iPhone 8";
    if ([platform isEqualToString:@"iPhone10,2"])  return @"iPhone 8 Plus";
    if ([platform isEqualToString:@"iPhone10,5"])  return @"iPhone 8 Plus";
    if ([platform isEqualToString:@"iPhone10,3"])  return @"iPhone X";
    if ([platform isEqualToString:@"iPhone10,6"])  return @"iPhone X";
    if ([platform isEqualToString:@"iPhone11,2"])  return @"iPhone XS";
    if ([platform isEqualToString:@"iPhone11,4"])  return @"iPhone XS Max";
    if ([platform isEqualToString:@"iPhone11,6"])  return @"iPhone XS Max";
    if ([platform isEqualToString:@"iPhone11,8"])  return @"iPhone XR";
    if ([platform isEqualToString:@"iPhone12,1"])  return @"iPhone 11";
    if ([platform isEqualToString:@"iPhone12,3"])  return @"iPhone 11 Pro";
    if ([platform isEqualToString:@"iPhone12,5"])  return @"iPhone 11 Pro Max";
    if ([platform isEqualToString:@"iPhone12,8"])  return @"iPhone SE (2nd generation)";
    if ([platform isEqualToString:@"iPhone13,1"])  return @"iPhone 12 mini";
    if ([platform isEqualToString:@"iPhone13,2"])  return @"iPhone 12";
    if ([platform isEqualToString:@"iPhone13,3"])  return @"iPhone 12 Pro";
    if ([platform isEqualToString:@"iPhone13,4"])  return @"iPhone 12 Pro Max";
    if ([platform isEqualToString:@"iPhone14,2"])  return @"iPhone 13 Pro";
    if ([platform isEqualToString:@"iPhone14,3"])  return @"iPhone 13 Pro Max";
    if ([platform isEqualToString:@"iPhone14,4"])  return @"iPhone 13 mini";
    if ([platform isEqualToString:@"iPhone14,5"])  return @"iPhone 13";
    if ([platform isEqualToString:@"iPhone14,6"]) return @"iPhone SE (3rd generation)";
    if ([platform isEqualToString:@"iPhone14,7"]) return @"iPhone 14";
    if ([platform isEqualToString:@"iPhone14,8"]) return @"iPhone 14 Plus";
    if ([platform isEqualToString:@"iPhone15,2"]) return @"iPhone 14 Pro";
    if ([platform isEqualToString:@"iPhone15,3"]) return @"iPhone 14 Pro Max";

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
    if ([platform isEqualToString:@"iPod9,1"])      return @"iPod touch 7";

    return platform;
}

@implementation UIDevice (Hardware)

#pragma mark - model identifier
- (NSString *)model{
    
    struct utsname systemInfo;
    uname(&systemInfo);
    return [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
}

#pragma mark - identifier转generation
- (NSString *)generation{
    
    NSString *model = [self model];
    
    if([model isEqualToString:@"x86_64"] || [model isEqualToString:@"arm64"]){//适配：intel和M系列芯片
        return @"simulator";/// !! 注意：请使用真机，模拟器会固定返回simulator !!
    }
    if([model hasPrefix:@"iPhone"]){
        return iPhonePlatform(model);
    }
    if([model hasPrefix:@"iPad"]){
        return iPadPlatform(model);
    }
    if([model hasPrefix:@"Watch"]){
        return AppleWatchPlatform(model);
    }
    if([model hasPrefix:@"AppleTV"]){
        return AppleTVPlatform(model);
    }
    if([model hasPrefix:@"iPod"]){
        return iPodPlatform(model);
    }
    if([model hasPrefix:@"AudioAccessory"]){
        return HomePodPlatform(model);
    }
    if([model hasPrefix:@"AirPods"] || [model hasPrefix:@"iProd"] || [model hasPrefix:@"Audio"]){
        return AirPodsPlatform(model);
    }
    if([model hasPrefix:@"AirTag"]){
        return AirTagPlatform(model);
    }
        
    NSLog(@"Unknown Device Model: %@", model);
    
    return model;
}

@end
