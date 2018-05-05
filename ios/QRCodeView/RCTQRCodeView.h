//
//  RCTQRCodeView.h
//  QRCode
//
//  Created by 张国忠 on 2018/5/5.
//  Copyright © 2018年 Facebook. All rights reserved.
//

#if __has_include(<React/RCTView.h>)
#import <React/RCTView.h>
#else
#import "RCTView.h"
#endif

@interface RCTQRCodeView : RCTView

/**
 @text 二维码文本内容
 */
@property (nonatomic, copy) NSString *text;
/**
 @size 二维码大小
 */
@property  (nonatomic, assign) int size;
/**
 @forecolor 二维码前景色
 */
@property (nonatomic, copy) NSNumber *forecolor;
/**
 @backcolor 二维码背景色
 */
@property (nonatomic, copy) NSNumber *backcolor;
/**
 @logo 二维码中心图标
 */
@property (nonatomic, copy) NSString *logo;

@end
