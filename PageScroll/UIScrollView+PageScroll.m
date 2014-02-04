//
//  UIScrollView+PageScroll.m
//  PageScroll
//
//  Created by Jeff on 2/4/2014.
//  Copyright (c) 2014 TippingCanoe. All rights reserved.
//

#import "UIScrollView+PageScroll.h"
#import <objc/runtime.h>

@implementation UIScrollView (PageScroll)
- (void)ps_setPageScrollWithBlock:(void(^)(UIScrollView *scrollView,BOOL reloadFromBottom))block{
    PageScroll *pageScroll = [[PageScroll alloc] initWithScrollView:self andRefreshBlock:block];
    objc_setAssociatedObject(self, @selector(ps_pageScroll), pageScroll, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (PageScroll *)ps_pageScroll{
    return objc_getAssociatedObject(self, @selector(ps_pageScroll));
}

- (void)ps_pause{
    self.ps_pageScroll.paused = YES;
}
- (void)ps_resume{
    self.ps_pageScroll.paused = NO;
}
@end
