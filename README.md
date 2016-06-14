模仿微信加号菜单
=============


完美模仿微信右上角加号点击菜单，三角有4个方向 12个位置

Screenshots
---------
![Toast Screenshots](toast_screenshot.jpg)


Basic Examples
---------
```objc

PopMeunView *popView = [[PopMeunView alloc] initWithOrigin:sender.center width:100 height:44 * 2 type:sender.tag color:[UIColor colorWithRed:0.2737 green:0.2737 blue:0.2737 alpha:1.0]];
    popView.rowHeight = 44;
    popView.titles = @[@"扫一扫",@"添加好友"].copy;
    popView.images = @[].copy;
    popView.titleColor = [UIColor orangeColor];
    popView.delegate = self;
    
    [popView popView];

```