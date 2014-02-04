//
//  PageScroll.h
//  PageScroll
//
//  Created by Jeff on 2/4/2014.
//  Copyright (c) 2014 TippingCanoe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface PageScroll : NSObject
@property (nonatomic,copy) void(^refreshBlock)(UIScrollView *scrollView,BOOL reloadFromBottom);
@property (nonatomic,strong) UIScrollView *scrollView;
@property (nonatomic) float distanceFromBottomToReload;
@property (nonatomic) float distanceFromTopToReload;
@property (nonatomic) BOOL paused;

- (id)initWithScrollView:(UIScrollView *)sv andRefreshBlock:(void(^)(UIScrollView *scrollView,BOOL reloadFromBottom))block;

@end
