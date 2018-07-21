//
//  CdyNetworkTypeHints.h
//  测试个人中心
//
//  Created by 毛织网 on 2018/7/20.
//  Copyright © 2018年 毛织网. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MSCNetworkTypeMonitor.h"
@interface CdyNetworkTypeHints : NSObject
+ (NSString *)networkTypeName:(MSCNetworkType)networkType;
+ (void)ReminderView:(NSString*)string;
@end
