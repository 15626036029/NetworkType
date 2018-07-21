//
//  ViewController.m
//  CdyNetworkTypeHints
//
//  Created by 毛织网 on 2018/7/21.
//  Copyright © 2018年 Cdy. All rights reserved.
//

#import "ViewController.h"
#import "CdyNetworkTypeHints.h"
#import "MSCNetworkTypeMonitor.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(reachabilityChanged:)
                                                 name: kMSCNetworkTypeChangedNotification
                                               object: nil];
    
    NSString *tishi = [CdyNetworkTypeHints networkTypeName:[MSCNetworkTypeMonitor sharedInstance].networkType];
    self.label.text = tishi;
    if ([tishi isEqualToString:@"无网络连接"]) {
        
        [CdyNetworkTypeHints ReminderView:tishi];
    }else{
        
    }
}
// 网络类型发生改变
- (void)reachabilityChanged:(NSNotification *)note
{
    MSCNetworkTypeMonitor* monitor = [note object];
    MSCNetworkType status = monitor.networkType;
    NSString *tishi = [CdyNetworkTypeHints networkTypeName:status];
    self.label.text = tishi;
    if ([tishi isEqualToString:@"无网络连接"]) {
        
        [CdyNetworkTypeHints ReminderView:tishi];
    }else{
        
        
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
