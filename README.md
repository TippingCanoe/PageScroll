# PageScroll

Block based callbacks for refreshing data while scrolling.

## Usage

```objective-c
[vc.collectionView ps_setPageScrollWithBlock:^(UIScrollView *scrollView, BOOL reloadFromBottom) {
    if (reloadFromBottom) {
        [scrollView ps_pause];
        [data getNext:^{
            [scrollView ps_resume];
        }];
    }
}];

vc.collectionView.ps_pageScroll.distanceFromBottomToReload = 10;
```

## Credits

PageScroll was originally created by [Jeff Friesen](https://github.com/robotafterall) in the development of apps for [Tipping Canoe](https://github.com/TippingCanoe).

## License

PageScroll is available under the MIT license. See the LICENSE file for more info.