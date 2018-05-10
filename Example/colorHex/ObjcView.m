//
//  ObjcView.m
//  colorHex_Example
//
//  Created by songzhou on 2018/5/10.
//  Copyright © 2018年 CocoaPods. All rights reserved.
//

#import "ObjcView.h"
#import <colorHex/ColorHex-Swift.h>

@implementation ObjcView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor colorWithHexString:@"#434d65"];
    }
    return self;
}

@end
