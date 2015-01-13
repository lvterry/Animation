//
//  ViewController.m
//  Animation
//
//  Created by terry on 8/29/14.
//  Copyright (c) 2014 Terry. All rights reserved.
//

#import "ViewController.h"
#import "JNWSpringAnimation.h"

@interface ViewController ()

@property (nonatomic, retain) UIImageView *background;
@property (nonatomic, retain) UIImageView *mapView;

@property (assign) BOOL mapShowing;

@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    
//    self.view.backgroundColor = [UIColor blackColor];
//    
//    self.background = [[UIImageView alloc] initWithFrame:CGRectMake(0, 20, 320, 546)];
//    self.background.image = [UIImage imageNamed:@"app-bg"];
//    [self.view addSubview:self.background];
//    
//    self.mapView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 62, 320, 458)];
//    self.mapView.image = [UIImage imageNamed:@"map-arrow"];
//    self.mapView.alpha = 0.0f;
//    self.mapView.transform = CGAffineTransformMakeTranslation(0, 40);
//    self.mapView.transform = CGAffineTransformScale(self.mapView.transform, 1.1, 1.1);
//    [self.view addSubview:self.mapView];
//    
//    UIButton *icon = [UIButton buttonWithType:UIButtonTypeCustom];
//    [icon setImage:[UIImage imageNamed:@"map-icon"] forState:UIControlStateNormal];
//    [icon addTarget:self action:@selector(didTapMapIcon:) forControlEvents:UIControlEventTouchUpInside];
//    [icon setFrame:CGRectMake(self.view.bounds.size.width - 49, 19, 49, 44)];
//    [self.view addSubview:icon];

}

//- (void) didTapMapIcon: (UIButton *) sender {
//    CGFloat dampingStiffness = 16.0f;
//    
//    if (self.mapShowing) {
//        self.mapShowing = NO;
//        
//        [UIView animateWithDuration:.5 delay:0
//                            options:UIViewAnimationOptionCurveEaseInOut|UIViewAnimationOptionBeginFromCurrentState
//                         animations:^{
//                             self.background.alpha = 1.0f;
//                         } completion:NULL];
//        
//        [UIView animateWithDuration:.3 delay:0
//                            options:UIViewAnimationOptionCurveEaseInOut|UIViewAnimationOptionBeginFromCurrentState
//                         animations:^{
//                             self.mapView.alpha = 0.0f;
//                         } completion:NULL];
//        
//        // scale the background view
//        JNWSpringAnimation *scale = [JNWSpringAnimation animationWithKeyPath:@"transform.scale"];
//        scale.damping = dampingStiffness;
//        scale.stiffness = dampingStiffness;
//        scale.mass = 1;
//        scale.fromValue = @([[self.background.layer.presentationLayer
//                              valueForKeyPath:scale.keyPath] floatValue]);
//        scale.toValue = @(1.0);
//        
//        [self.background.layer addAnimation:scale forKey:scale.keyPath];
//        self.background.transform = CGAffineTransformScale(CGAffineTransformIdentity, 1, 1);
//        
//        // scale the map
//        JNWSpringAnimation *mapScale =
//        [JNWSpringAnimation animationWithKeyPath:@"transform.scale"];
//        mapScale.damping = dampingStiffness;
//        mapScale.stiffness = dampingStiffness;
//        mapScale.mass = 1;
//        mapScale.fromValue =
//        @([[self.mapView.layer.presentationLayer valueForKeyPath:mapScale.keyPath] floatValue]);
//        mapScale.toValue = @(1.1);
//        
//        [self.mapView.layer addAnimation:mapScale forKey:mapScale.keyPath];
//        self.mapView.transform = CGAffineTransformScale(CGAffineTransformIdentity, 1.1, 1.1);
//        
//        JNWSpringAnimation *mapTranslate =
//        [JNWSpringAnimation animationWithKeyPath:@"transform.translation.y"];
//        mapTranslate.damping = dampingStiffness;
//        mapTranslate.stiffness = dampingStiffness;
//        mapTranslate.mass = 1;
//        mapTranslate.fromValue =
//        @([[self.mapView.layer.presentationLayer valueForKeyPath:mapTranslate.keyPath] floatValue]);
//        mapTranslate.toValue = @(40);
//        
//        [self.mapView.layer addAnimation:mapTranslate forKey:mapTranslate.keyPath];
//        self.mapView.transform = CGAffineTransformTranslate(self.mapView.transform, 0, 40);
//        
//        
//    } else {
//        self.mapShowing = YES;
//        // animate the map in
//        [UIView animateWithDuration:.5 delay:0
//            options:UIViewAnimationOptionCurveEaseInOut|UIViewAnimationOptionBeginFromCurrentState
//         animations:^{
//             self.background.alpha = 0.3f;
//         } completion:NULL];
//        
//        [UIView animateWithDuration:.15 delay:0
//            options:UIViewAnimationOptionCurveEaseInOut|UIViewAnimationOptionBeginFromCurrentState
//         animations:^{
//             self.mapView.alpha = 1.0f;
//         } completion:NULL];
//        
//        // Scale animation for the main app background
//        
//        JNWSpringAnimation *scale = [JNWSpringAnimation animationWithKeyPath:@"transform.scale"];
//        scale.damping = dampingStiffness;
//        scale.stiffness = dampingStiffness;
//        scale.mass = 1;
//        scale.fromValue = @([[self.background.layer.presentationLayer
//                              valueForKeyPath:scale.keyPath] floatValue]);
//        scale.toValue = @(0.9);
//        
//        [self.background.layer addAnimation:scale forKey:scale.keyPath];
//        self.background.transform = CGAffineTransformScale(CGAffineTransformIdentity, .9, .9);
//        
//        // Map gets 2 separate animations, one for position and the other for scale
//        JNWSpringAnimation *mapScale =
//        [JNWSpringAnimation animationWithKeyPath:@"transform.scale"];
//        mapScale.damping = dampingStiffness;
//        mapScale.stiffness = dampingStiffness;
//        mapScale.mass = 1;
//        mapScale.fromValue =
//        @([[self.mapView.layer.presentationLayer valueForKeyPath:mapScale.keyPath] floatValue]);
//        mapScale.toValue = @(1.0);
//        
//        [self.mapView.layer addAnimation:mapScale forKey:mapScale.keyPath];
//        self.mapView.transform = CGAffineTransformScale(CGAffineTransformIdentity, 1, 1);
//        
//        JNWSpringAnimation *mapTranslate =
//        [JNWSpringAnimation animationWithKeyPath:@"transform.translation.y"];
//        mapTranslate.damping = dampingStiffness;
//        mapTranslate.stiffness = dampingStiffness;
//        mapTranslate.mass = 1;
//        mapTranslate.fromValue =
//        @([[self.mapView.layer.presentationLayer valueForKeyPath:mapTranslate.keyPath] floatValue]);
//        mapTranslate.toValue = @(0);
//        
//        [self.mapView.layer addAnimation:mapTranslate forKey:mapTranslate.keyPath];
//        self.mapView.transform = CGAffineTransformTranslate(self.mapView.transform, 0, 0);
//    }
//}

@end
