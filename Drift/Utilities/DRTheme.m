//
//  DRTheme.m
//  Drift
//
//  Created by Christoph Albert on 3/4/14.
//  Copyright (c) 2014 Christoph Albert. All rights reserved.
//

#import "DRTheme.h"
#import "DRNavigationBar.h"
#import "UIColor+Hex.h"

@implementation DRTheme

+(void)apply {
    DRNavigationBar *navigationBar = [DRNavigationBar appearance];
    NSDictionary *textAttributes = @{NSForegroundColorAttributeName:[DRTheme base4],
                                     NSFontAttributeName:[DRTheme boldFontWithSize:16.0]};
    [navigationBar setTitleTextAttributes:textAttributes];
    navigationBar.barTintColor = [DRTheme backgroundColor];
    navigationBar.tintColor = [DRTheme base4];

    UIBarButtonItem *barButton = [UIBarButtonItem appearance];
    [barButton setBackgroundVerticalPositionAdjustment:1 forBarMetrics:UIBarMetricsDefault];

    UITableView *tableView = [UITableView appearance];
    tableView.backgroundColor = [DRTheme base4];
    tableView.separatorColor = [DRTheme base2];
    tableView.separatorInset = UIEdgeInsetsMake(0, kSideMargin, 0, 0);
}

+(UIFont *)fontWithSize:(CGFloat)size {
    return [UIFont fontWithName:@"OpenSans-Regular" size:size];
}

+(UIFont *)semiboldFontWithSize:(CGFloat)size {
    return [UIFont fontWithName:@"OpenSans-Semibold" size:size];
}

+(UIFont *)boldFontWithSize:(CGFloat)size {
    return [UIFont fontWithName:@"OpenSans-Bold" size:size];
}

#pragma mark Colors

+(UIColor *)backgroundColor {
    return [UIColor colorWithRed:40.f/255.f green:175.f/255.f blue:140.f/255.f alpha:1];
}

+(UIColor *)base4 {
    return [UIColor colorWithWhite:1 alpha:1];
}

+(UIColor *)transparentBase4 {
    return [UIColor colorWithWhite:1 alpha:0.5];
}

+(UIColor *)base3 {
    return [UIColor colorWithWhite:0.75 alpha:1];
}

+(UIColor *)base2 {
    return [UIColor colorWithWhite:0.666 alpha:1];
}

+(UIColor *)base1 {
    return [UIColor colorWithWhite:0.333 alpha:1];
}

+(UIColor *)base0 {
    return [UIColor colorWithWhite:0.083 alpha:1];
}

+(UIColor *)dangerColor {
    return [UIColor colorWithHexString:@"e95b4b"];
}

+(UIColor *)confirmColor {
    return [UIColor colorWithHexString:@"2093d2"];
}

@end
