//
//  RCTQRCodeViewManager.m
//  QRCode
//
//  Created by 张国忠 on 2018/5/5.
//  Copyright © 2018年 Facebook. All rights reserved.
//

#import "RCTQRCodeViewManager.h"
#import "RCTQRCodeView.h"

@implementation RCTQRCodeViewManager

RCT_EXPORT_MODULE();

- (UIView *)view
{
    return [[RCTQRCodeView alloc] init];
}

RCT_EXPORT_VIEW_PROPERTY(text, NSString);
RCT_EXPORT_VIEW_PROPERTY(size, int);
RCT_EXPORT_VIEW_PROPERTY(forecolor, NSNumber);
RCT_EXPORT_VIEW_PROPERTY(backcolor, NSNumber);
RCT_EXPORT_VIEW_PROPERTY(logo, NSString);

@end
