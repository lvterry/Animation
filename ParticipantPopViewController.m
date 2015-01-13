//
//  ParticipantPopViewController.m
//  Animation
//
//  Created by terry on 8/29/14.
//  Copyright (c) 2014 Terry. All rights reserved.
//

#import "ParticipantPopViewController.h"
#import <pop/POP.h>

@interface ParticipantPopViewController ()

@property (strong) NSMutableArray *avatarArray;

@end

@implementation ParticipantPopViewController

@synthesize collapseButton;

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.avatarArray = [[NSMutableArray alloc] init];
    
    self.collapseButton.alpha = 0;
    self.collapseButton.transform = CGAffineTransformMakeTranslation(0, 50);
    
    [self.collapseButton addTarget:self action:@selector(didTapCollapse:) forControlEvents:UIControlEventTouchUpInside];
    
    for (int i = 0; i < 8; i++) {
        UIButton *avatar = [[UIButton alloc] initWithFrame:CGRectMake(20 + i * 25 / 3, self.view.bounds.size.height - 40, 25, 25)];
        avatar.backgroundColor = [UIColor redColor];
        avatar.alpha = 0.3;
        avatar.layer.cornerRadius = 12.5;
        
        [self.view addSubview:avatar];
        
        [avatar addTarget:self action:@selector(didTapAvatar:) forControlEvents:UIControlEventTouchUpInside];
        
        [self.avatarArray addObject:avatar];
    }
}

- (void) didTapAvatar: (UIButton*) sender {
    CGFloat gap = 20;
    CGFloat size = 50;
    
    CGFloat numRows = [self.avatarArray count] / 4;
    
    for (int i = 0; i < [self.avatarArray count]; i++) {
        UIButton *a = [self.avatarArray objectAtIndex:i];
        CGFloat y = a.frame.origin.y - ((numRows - (i / 4)) * (size + gap) + 40);
        
        POPSpringAnimation *move = [POPSpringAnimation animationWithPropertyNamed:kPOPViewFrame];
        move.springBounciness = 12.0f;
        move.springSpeed = 16.0f;
        move.toValue = [NSValue valueWithCGRect:CGRectMake(gap + (size + gap) * (i % 4), y, size, size)];
        
        [a.layer pop_addAnimation:move forKey:@"expand"];
        
        a.layer.cornerRadius = size / 2;
        
        [UIView animateWithDuration:0.25 delay:0 usingSpringWithDamping:0.6 initialSpringVelocity:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            self.collapseButton.alpha = 1.0;
            self.collapseButton.transform = CGAffineTransformMakeTranslation(0, 0);
        } completion:NULL];
    }
}

- (void) didTapCollapse: (id) sender {
    CGFloat size = 25;
    
    for (int i = 0; i < [self.avatarArray count]; i++) {
        UIButton *a = [self.avatarArray objectAtIndex:i];
        
        POPSpringAnimation *move = [POPSpringAnimation animationWithPropertyNamed:kPOPViewFrame];
        move.springBounciness = 6.0f;
        move.springSpeed = 10.0f;
        move.toValue = [NSValue valueWithCGRect:CGRectMake(20 + i * 25 / 3, self.view.bounds.size.height - 40, 25, 25)];
        
        [a.layer pop_addAnimation:move forKey:@"collapse"];
        
        a.layer.cornerRadius = size / 2;
        
        [UIView animateWithDuration:0.25 delay:0 usingSpringWithDamping:0.6 initialSpringVelocity:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            self.collapseButton.alpha = 0;
            self.collapseButton.transform = CGAffineTransformMakeTranslation(0, 50);
        } completion:NULL];
    }
}
    

@end
