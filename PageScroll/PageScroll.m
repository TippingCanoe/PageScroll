//
//  PageScroll.m
//  PageScroll
//
//  Created by Jeff on 2/4/2014.
//  Copyright (c) 2014 TippingCanoe. All rights reserved.
//

#import "PageScroll.h"

@implementation PageScroll
- (id)initWithScrollView:(UIScrollView *)sv andRefreshBlock:(void(^)(UIScrollView *scrollView,BOOL loadFromBottom))block{
    self = [super init];
    if (self) {
        [self setScrollView:sv];
        [self setRefreshBlock:block];
        _distanceFromTopToReload = 150;
        _distanceFromBottomToReload = 150;
    }
    return self;
}

- (void)setScrollView:(UIScrollView *)scrollView{
    [_scrollView removeObserver:self forKeyPath:@"contentOffset"];
    _scrollView = scrollView;
    [_scrollView addObserver:self forKeyPath:@"contentOffset" options:NSKeyValueObservingOptionNew context:nil];
}

- (void)dealloc{
    [_scrollView removeObserver:self forKeyPath:@"contentOffset"];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
    if(([keyPath isEqualToString:@"contentOffset"]) && object == _scrollView && !_paused) {
        if (_scrollView.contentOffset.y + _scrollView.frame.size.height > _scrollView.contentSize.height - _distanceFromBottomToReload) {
            if (self.refreshBlock) {
                self.refreshBlock(_scrollView,YES);
            }
        }else if(_scrollView.contentOffset.y < _distanceFromTopToReload){
            if (self.refreshBlock) {
                self.refreshBlock(_scrollView,NO);
            }
        }
    }
}

@end
