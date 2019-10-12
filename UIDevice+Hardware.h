
#import <UIKit/UIKit.h>

@interface UIDevice (Hardware)

- (NSString *)platform;
- (NSString *)platformString;
- (float)iOSVersion;

- (NSUInteger)cpuFrequency;
- (NSUInteger)busFrequency;
- (NSUInteger)cpuCount;
- (NSUInteger)totalMemory;
- (NSUInteger)userMemory;

- (NSNumber *)totalDiskSpace;
- (NSNumber *)freeDiskSpace;

- (NSString *)macAddress;
- (NSString *)ipAddresses;

@end
