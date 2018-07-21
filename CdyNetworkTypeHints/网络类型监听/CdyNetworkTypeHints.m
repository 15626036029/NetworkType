//
//  CdyNetworkTypeHints.m
//  测试个人中心
//
//  Created by 毛织网 on 2018/7/20.
//  Copyright © 2018年 毛织网. All rights reserved.
//

#import "CdyNetworkTypeHints.h"
#import "UIAlertView+MyAlertView.h"
@implementation CdyNetworkTypeHints
+ (NSString *)networkTypeName:(MSCNetworkType)networkType
{
    NSString *string = @"*****";
    
    switch (networkType)
    {
        case kMSCNetworkTypeNone:
            NSLog(@"NotReachable");
            string = @"无网络连接";
            break;
            
        case kMSCNetworkTypeWiFi:
            NSLog(@"ReachableViaWiFi");
            string = @"您当前网络类型是Wifi";
            break;
            
        case kMSCNetworkTypeWWAN:
            NSLog(@"ReachableViaWWAN");
            string = @"您当前网络类型是广域网";
            break;
            
        case kMSCNetworkType2G:
            NSLog(@"kReachableVia2G");
            string = @"您当前网络类型是2G";
            break;
            
        case kMSCNetworkType3G:
            NSLog(@"kReachableVia3G");
            string = @"您当前网络类型是3G";
            break;
            
        case kMSCNetworkType4G:
            NSLog(@"kReachableVia4G");
            string = @"您当前网络类型是4G";
            break;
            
    }
    
    return string;
    
}
+(void)ReminderView:(NSString *)string{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"温馨提示"
                                                    message:string
                                                   delegate:self
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil, nil];
    [alert show];
}
@end
