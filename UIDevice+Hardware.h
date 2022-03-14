//
//  UIDevice.h
//
//  Created by Geniune on 2020/4/23.
//  Copyright © 2020 Geniune. All rights reserved.
//

@interface UIDevice (Hardware)

//注意：请使用真机测试，否则会固定返回simulator
- (NSString *)generation;

@end
