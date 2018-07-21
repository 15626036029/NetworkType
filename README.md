# NetworkType
网络类型识别、同时处理了连续出现多个UIAlertView的问题
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
