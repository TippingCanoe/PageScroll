//
//  UIScrollView+PageScroll.h
//  PageScroll
//
//  Created by Jeff on 2/4/2014.
//  Copyright (c) 2014 TippingCanoe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PageScroll.h"

@interface UIScrollView (PageScroll)
- (void)ps_setPageScrollWithBlock:(void(^)(UIScrollView *scrollView,BOOL reloadFromBottom))block;
- (PageScroll *)ps_pageScroll;
- (void)ps_pause;
- (void)ps_resume;
@end
