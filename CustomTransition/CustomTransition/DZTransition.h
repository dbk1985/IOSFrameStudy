//
//  DZPushTransition.h
//  CustomTransition
//
//  Created by wzkj on 15/12/9.
//  Copyright © 2015年 wzkj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface DZTransitionDelegate : NSObject<UIViewControllerTransitioningDelegate>

@end


@interface DZPushTransition : NSObject<UIViewControllerAnimatedTransitioning>

@end

@interface DZPopTransition : NSObject<UIViewControllerAnimatedTransitioning>

@end