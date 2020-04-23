//
//  UIDevice.h
//
//  Created by Geniune on 2020/4/23.
//  Copyright © 2020 Geniune. All rights reserved.
//

@interface UIDevice (Hardware)

/// Model Identifier
- (NSString *)platform;
/// Model Identifier转为Generation
- (NSString *)platformString;
/// Mac地址
- (NSString *)macAddress;
/// IPd地址
- (NSString *)ipAddresses;

@end
