//
//  UIDevice.h
//
//  Created by Geniune on 2020/4/23.
//  Copyright © 2020 Geniune. All rights reserved.
//

@interface UIDevice (Hardware)

- (NSString *)systemString;/// 系统版本

- (NSString *)platform;/// Model Identifier

- (NSString *)platformString;/// Model Identifier转为Generation

- (NSString *)macAddress;/// Mac地址

- (NSString *)ipAddresses;/// IPd地址

@end
