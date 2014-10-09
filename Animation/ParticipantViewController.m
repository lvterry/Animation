//
//  ParticipantViewController.m
//  Animation
//
//  Created by terry on 8/29/14.
//  Copyright (c) 2014 tataUFO. All rights reserved.
//

#import "ParticipantViewController.h"

@interface ParticipantViewController ()

@property (strong) NSMutableArray *avatarArray;

@end

@implementation ParticipantViewController

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
        
        [UIView animateWithDuration:0.25 delay:0 usingSpringWithDamping:0.6 initialSpringVelocity:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            a.frame = CGRectMake(gap + (size + gap) * (i % 4), y, size, size);
            a.layer.cornerRadius = size / 2;
            
        } completion:NULL];
        
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
        
        [UIView animateWithDuration:0.25 delay:0 usingSpringWithDamping:0.6 initialSpringVelocity:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            a.frame = CGRectMake(20 + i * 25 / 3, self.view.bounds.size.height - 40, 25, 25);
            a.layer.cornerRadius = size / 2;
        } completion:NULL];
        
        [UIView animateWithDuration:0.25 delay:0 usingSpringWithDamping:0.6 initialSpringVelocity:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            self.collapseButton.alpha = 0;
            self.collapseButton.transform = CGAffineTransformMakeTranslation(0, 50);
        } completion:NULL];
    }
}

@end
