//
//  UIDevice.m
//
//  Created by Geniune on 2020/4/23.
//  Copyright © 2020 Geniune. All rights reserved.
//

#import "UIDevice+Hardware.h"

#include <sys/socket.h> // Per msqr
#include <sys/sysctl.h>
#include <net/if.h>
#include <net/if_dl.h>
#import <sys/utsname.h>
#import <SystemConfiguration/CaptiveNetwork.h>
// 下面是获取IP需要的头文件
#import <sys/ioctl.h>
#include <ifaddrs.h>
#import <arpa/inet.h>

@implementation UIDevice (Hardware)

#pragma mark - 获取当前设备Model Identifier
- (NSString *)platform{
    
    struct utsname systemInfo;
    uname(&systemInfo);
    NSString *deviceString = [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];

    return deviceString;
}

#pragma mark - 将设备Model Identifier转为Generation
- (NSString *)platformString{
    
    NSString *platform = [self platform];
    
    if ([platform isEqualToString:@"i386"])             return @"Simulator";
    if ([platform isEqualToString:@"x86_64"])        return @"Simulator";
    
    if([platform rangeOfString:@"iPhone"].location != NSNotFound){
        return iPhonePlatform(platform);
    }
    if([platform rangeOfString:@"iPad"].location != NSNotFound){
        return iPadPlatform(platform);
    }
    if([platform rangeOfString:@"iPod"].location != NSNotFound){
        return iPodPlatform(platform);
    }
    if([platform rangeOfString:@"AirPods"].location != NSNotFound){
        return AirPodsPlatform(platform);
    }
    if([platform rangeOfString:@"AppleTV"].location != NSNotFound){
        return AppleTVPlatform(platform);
    }
    if([platform rangeOfString:@"Watch"].location != NSNotFound){
        return AppleWatchPlatform(platform);
    }
    if([platform rangeOfString:@"HomePod"].location != NSNotFound){
        return HomePodPlatform(platform);
    }
    
    return @"Unknown iOS Device";
}

#pragma mark - iPhone
NSString *iPhonePlatform(NSString *platform){
    
    if ([platform isEqualToString:@"iPhone1,1"])    return @"iPhone";
    if ([platform isEqualToString:@"iPhone1,2"])    return @"iPhone 3G";
    if ([platform isEqualToString:@"iPhone2,1"])    return @"iPhone 3GS";
    if ([platform isEqualToString:@"iPhone3,1"])    return @"iPhone 4";
    if ([platform isEqualToString:@"iPhone3,2"])    return @"iPhone 4";
    if ([platform isEqualToString:@"iPhone3,3"])    return @"iPhone 4";
    if ([platform isEqualToString:@"iPhone4,1"])    return @"iPhone 4S";
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
    if ([platform isEqualToString:@"iPhone12,8"])  return  @"iPhone SE (2nd generation)";
    
    return @"Unknown iPhone";
}

#pragma mark - iPad
NSString *iPadPlatform(NSString *platform){
    
    //iPad
    if ([platform isEqualToString:@"iPad1,1"])   return @"iPad";
    if ([platform isEqualToString:@"iPad2,1"])   return @"iPad 2";
    if ([platform isEqualToString:@"iPad2,2"])   return @"iPad 2";
    if ([platform isEqualToString:@"iPad2,3"])   return @"iPad 2";
    if ([platform isEqualToString:@"iPad2,4"])   return @"iPad 2";
    if ([platform isEqualToString:@"iPad3,1"])   return @"iPad (3rd generation)";
    if ([platform isEqualToString:@"iPad3,2"])   return @"iPad (3rd generation)";
    if ([platform isEqualToString:@"iPad3,3"])   return @"iPad (3rd generation)";
    if ([platform isEqualToString:@"iPad3,4"])   return @"iPad (4th generation)";
    if ([platform isEqualToString:@"iPad3,5"])   return @"iPad (4th generation)";
    if ([platform isEqualToString:@"iPad3,6"])   return @"iPad (4th generation)";
    if ([platform isEqualToString:@"iPad6,11"])  return @"iPad (5th generation)";
    if ([platform isEqualToString:@"iPad6,12"])  return @"iPad (5th generation)";
    if ([platform isEqualToString:@"iPad7,5"])   return @"iPad (6th generation)";
    if ([platform isEqualToString:@"iPad7,6"])   return @"iPad (6th generation)";
    if ([platform isEqualToString:@"iPad7,11"])   return @"iPad (7th generation)";
    if ([platform isEqualToString:@"iPad7,12"])   return @"iPad (7th generation)";

    //iPad Air
    if ([platform isEqualToString:@"iPad4,1"])   return @"iPad Air";
    if ([platform isEqualToString:@"iPad4,2"])   return @"iPad Air";
    if ([platform isEqualToString:@"iPad4,3"])   return @"iPad Air";
    if ([platform isEqualToString:@"iPad5,3"])   return @"iPad Air 2";
    if ([platform isEqualToString:@"iPad5,4"])   return @"iPad Air 2";
    if ([platform isEqualToString:@"iPad11,3"])   return @"iPad Air (3rd generation)";
    if ([platform isEqualToString:@"iPad11,4"])   return @"iPad Air (3rd generation)";
    
    //iPad Pro
    if ([platform isEqualToString:@"iPad6,7"])   return @"iPad Pro (12.9-inch) ";
    if ([platform isEqualToString:@"iPad6,8"])   return @"iPad Pro (12.9-inch) ";
    if ([platform isEqualToString:@"iPad6,3"])   return @"iPad Pro (9.7-inch)";
    if ([platform isEqualToString:@"iPad6,4"])   return @"iPad Pro (9.7-inch)";
    if ([platform isEqualToString:@"iPad7,1"])   return @"iPad Pro (12.9-inch) (2nd generation) ";
    if ([platform isEqualToString:@"iPad7,2"])   return @"iPad Pro (12.9-inch) (2nd generation) ";
    if ([platform isEqualToString:@"iPad7,3"])   return @"iPad Pro (10.5-inch)";
    if ([platform isEqualToString:@"iPad7,4"])   return @"iPad Pro (10.5-inch)";
    if ([platform isEqualToString:@"iPad8,1"])   return @"iPad Pro (11-inch)";
    if ([platform isEqualToString:@"iPad8,2"])   return @"iPad Pro (11-inch)";
    if ([platform isEqualToString:@"iPad8,3"])   return @"iPad Pro (11-inch)";
    if ([platform isEqualToString:@"iPad8,4"])   return @"iPad Pro (11-inch)";
    if ([platform isEqualToString:@"iPad8,5"])   return @"iPad Pro (12.9-inch) (3rd generation)";
    if ([platform isEqualToString:@"iPad8,6"])   return @"iPad Pro (12.9-inch) (3rd generation)";
    if ([platform isEqualToString:@"iPad8,7"])   return @"iPad Pro (12.9-inch) (3rd generation)";
    if ([platform isEqualToString:@"iPad8,8"])   return @"iPad Pro (12.9-inch) (3rd generation)";
    if ([platform isEqualToString:@"iPad8,9"])   return @"iPad Pro (11-inch) (2nd generation)";
    if ([platform isEqualToString:@"iPad8,10"])   return @"iPad Pro (11-inch) (2nd generation)";
    if ([platform isEqualToString:@"iPad8,11"])   return @"iPad Pro (12.9-inch) (4th generation)";
    if ([platform isEqualToString:@"iPad8,12"])   return @"iPad Pro (12.9-inch) (4th generation)";
    
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
    if ([platform isEqualToString:@"iPad11,1"])   return @"iPad mini (5th generation)";
    if ([platform isEqualToString:@"iPad11,2"])   return @"iPad mini (5th generation)";

    return @"Unknown iPad";
}

#pragma mark - iPod
NSString *iPodPlatform(NSString *platform){
    
    if ([platform isEqualToString:@"iPod1,1"])      return @"iPod Touch";
    if ([platform isEqualToString:@"iPod2,1"])      return @"iPod touch (2nd generation)";
    if ([platform isEqualToString:@"iPod3,1"])      return @"iPod touch (3rd generation)";
    if ([platform isEqualToString:@"iPod4,1"])      return @"iPod touch (4th generation)";
    if ([platform isEqualToString:@"iPod5,1"])      return @"iPod Touch (5th generation)";
    if ([platform isEqualToString:@"iPod7,1"])      return @"iPod touch (6th generation)";
    //2019年5月发布，更新一种机型：iPod touch (7th generation)
    if ([platform isEqualToString:@"iPod9,1"])      return @"iPod touch (7th generation)";

    return @"Unknown iPod";
}

#pragma mark - AirPods
NSString *AirPodsPlatform(NSString *platform){
    
    if ([platform isEqualToString:@"AirPods1,1"])      return @"AirPods (1st generation)";
    if ([platform isEqualToString:@"AirPods2,1"])      return @"AirPods (2nd generation)";
    if ([platform isEqualToString:@"AirPods8,1"])      return @"AirPods Pro";

    return @"Unknown AirPods";
}

#pragma mark - Apple TV
NSString *AppleTVPlatform(NSString *platform){
    
    if ([platform isEqualToString:@"AppleTV2,1"])      return @"Apple TV (2nd generation)";
    if ([platform isEqualToString:@"AppleTV3,1"])      return @"Apple TV (3rd generation)";
    if ([platform isEqualToString:@"AppleTV5,3"])      return @"Apple TV (4th generation)";
    if ([platform isEqualToString:@"AppleTV6,2"])      return @"Apple TV 4K ";

    return @"Unknown Apple TV";
}

#pragma mark - Apple Watch
NSString *AppleWatchPlatform(NSString *platform){
    
    if ([platform isEqualToString:@"Watch1,1"])      return @"Apple Watch (1st generation)";
    if ([platform isEqualToString:@"Watch1,2"])      return @"Apple Watch (1st generation)";
    if ([platform isEqualToString:@"Watch2,6"])      return @"Apple Watch Series 1";
    if ([platform isEqualToString:@"Watch2,7"])      return @"Apple Watch Series 1";
    if ([platform isEqualToString:@"Watch2,3"])      return @"Apple Watch Series 2";
    if ([platform isEqualToString:@"Watch2,4"])      return @"Apple Watch Series 2";
    if ([platform isEqualToString:@"Watch3,1"])      return @"Apple Watch Series 3";
    if ([platform isEqualToString:@"Watch3,2"])      return @"Apple Watch Series 3";
    if ([platform isEqualToString:@"Watch3,3"])      return @"Apple Watch Series 3";
    if ([platform isEqualToString:@"Watch3,4"])      return @"Apple Watch Series 3";
    if ([platform isEqualToString:@"Watch4,1"])      return @"Apple Watch Series 4";
    if ([platform isEqualToString:@"Watch4,2"])      return @"Apple Watch Series 4";
    if ([platform isEqualToString:@"Watch4,3"])      return @"Apple Watch Series 4";
    if ([platform isEqualToString:@"Watch4,4"])      return @"Apple Watch Series 4";

    return @"Unknown Apple Watch";
}

#pragma mark - HomePod
NSString *HomePodPlatform(NSString *platform){
    
    if ([platform isEqualToString:@"AudioAccessory1,1"])      return @"HomePod";
    if ([platform isEqualToString:@"AudioAccessory1,2"])      return @"HomePod";

    return @"Unknown HomePod";
}

#pragma mark - MAC Address
- (NSString *)macAddress{
    
    int                 mib[6];
    size_t              len;
    char                *buf;
    unsigned char       *ptr;
    struct if_msghdr    *ifm;
    struct sockaddr_dl  *sdl;
    
    mib[0] = CTL_NET;
    mib[1] = AF_ROUTE;
    mib[2] = 0;
    mib[3] = AF_LINK;
    mib[4] = NET_RT_IFLIST;
    
    if ((mib[5] = if_nametoindex("en0")) == 0) {
        printf("Error: if_nametoindex error\n");
        return NULL;
    }
    
    if (sysctl(mib, 6, NULL, &len, NULL, 0) < 0) {
        printf("Error: sysctl, take 1\n");
        return NULL;
    }
    
    if ((buf = malloc(len)) == NULL) {
        printf("Error: Memory allocation error\n");
        return NULL;
    }
    
    if (sysctl(mib, 6, buf, &len, NULL, 0) < 0) {
        printf("Error: sysctl, take 2\n");
        free(buf); // Thanks, Remy "Psy" Demerest
        return NULL;
    }
    
    ifm = (struct if_msghdr *)buf;
    sdl = (struct sockaddr_dl *)(ifm + 1);
    ptr = (unsigned char *)LLADDR(sdl);
    NSString *outstring = [NSString stringWithFormat:@"%02X:%02X:%02X:%02X:%02X:%02X", *ptr, *(ptr+1), *(ptr+2), *(ptr+3), *(ptr+4), *(ptr+5)];

    free(buf);
    return outstring;
}

#pragma mark - IP Address
- (NSString *)ipAddresses{
    
    int sockfd = socket(AF_INET, SOCK_DGRAM, 0);
    
    NSMutableArray *ips = [NSMutableArray array];
    
    int BUFFERSIZE = 4096;
    
    struct ifconf ifc;
    
    char buffer[BUFFERSIZE], *ptr, lastname[IFNAMSIZ], *cptr;
    
    struct ifreq *ifr, ifrcopy;
    
    ifc.ifc_len = BUFFERSIZE;
    ifc.ifc_buf = buffer;
    
    if (ioctl(sockfd, SIOCGIFCONF, &ifc) >= 0){
        
        for(ptr = buffer; ptr < buffer + ifc.ifc_len; ){
            
            ifr = (struct ifreq *)ptr;
            int len = sizeof(struct sockaddr);
            
            if(ifr->ifr_addr.sa_len > len) {
                len = ifr->ifr_addr.sa_len;
            }
            
            ptr += sizeof(ifr->ifr_name) + len;
            if(ifr->ifr_addr.sa_family != AF_INET) continue;
            if((cptr = (char *)strchr(ifr->ifr_name, ':')) != NULL) *cptr = 0;
            if(strncmp(lastname, ifr->ifr_name, IFNAMSIZ) == 0) continue;
            
            memcpy(lastname, ifr->ifr_name, IFNAMSIZ);
            ifrcopy = *ifr;
            ioctl(sockfd, SIOCGIFFLAGS, &ifrcopy);
            
            if((ifrcopy.ifr_flags & IFF_UP) == 0) continue;
            
            NSString *ip = [NSString stringWithFormat:@"%s", inet_ntoa(((struct sockaddr_in *)&ifr->ifr_addr)->sin_addr)];
            [ips addObject:ip];
        }
    }
    
    close(sockfd);
    NSString *deviceIP = @"";
    
    for(int i=0; i < ips.count; i++) {
        if(ips.count > 0) {
            deviceIP = [NSString stringWithFormat:@"%@",ips.lastObject];
        }
    }
    return deviceIP;
}

#pragma mark sysctlbyname utils
- (NSString *) getSysInfoByName:(char *)typeSpecifier
{
    size_t size;
    sysctlbyname(typeSpecifier, NULL, &size, NULL, 0);
    
    char *answer = malloc(size);
    sysctlbyname(typeSpecifier, answer, &size, NULL, 0);
    
    NSString *results = [NSString stringWithCString:answer encoding: NSUTF8StringEncoding];

    free(answer);
    return results;
}

#pragma mark sysctl utils
- (NSUInteger) getSysInfo: (uint) typeSpecifier
{
    size_t size = sizeof(int);
    int results;
    int mib[2] = {CTL_HW, typeSpecifier};
    sysctl(mib, 2, &results, &size, NULL, 0);
    return (NSUInteger) results;
}

- (NSUInteger) cpuFrequency
{
    return [self getSysInfo:HW_CPU_FREQ];
}

- (NSUInteger) busFrequency
{
    return [self getSysInfo:HW_BUS_FREQ];
}

- (NSUInteger) cpuCount
{
    return [self getSysInfo:HW_NCPU];
}

- (NSUInteger) totalMemory
{
    return [self getSysInfo:HW_PHYSMEM];
}

- (NSUInteger) userMemory
{
    return [self getSysInfo:HW_USERMEM];
}

- (NSUInteger) maxSocketBufferSize
{
    return [self getSysInfo:KIPC_MAXSOCKBUF];
}

/*
 extern NSString *NSFileSystemSize;
 extern NSString *NSFileSystemFreeSize;
 extern NSString *NSFileSystemNodes;
 extern NSString *NSFileSystemFreeNodes;
 extern NSString *NSFileSystemNumber;
*/
- (NSNumber *)totalDiskSpace{
    
    NSDictionary *fattributes = [[NSFileManager defaultManager] attributesOfFileSystemForPath:NSHomeDirectory() error:nil];
    return [fattributes objectForKey:NSFileSystemSize];
}

- (NSNumber *)freeDiskSpace{
    
    NSDictionary *fattributes = [[NSFileManager defaultManager] attributesOfFileSystemForPath:NSHomeDirectory() error:nil];
    return [fattributes objectForKey:NSFileSystemFreeSize];
}

@end
