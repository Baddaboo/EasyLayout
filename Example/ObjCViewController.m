//
//  ObjCViewController.m
//  Example
//
//  Created by Blake Tsuzaki on 7/31/17.
//  Copyright © 2017 Modoki. All rights reserved.
//

#import <EasyLayout/EasyLayout.h>

#import "Example-Swift.h"
#import "ObjCViewController.h"

@interface ObjCViewController ()
@property (retain, nonatomic) UIView *testView;
@property (retain, nonatomic) NSArray<UIView *> *views;
@end

@implementation ObjCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _testView = [[UIView alloc] init];
    [_testView setBackgroundColor: [UIColor grayColor]];
    
    _views = [NSArray arrayWithObject:self.testView];
    
    [self addSubviews: _views];
    
    NSArray<NSLayoutConstraint *> *constraints = [NSArray arrayWithObjects:
                                                  [_testView.width equalToView: self.view multiplier: 0.8],
                                                  [_testView.height equalToView: self.view multiplier: 0.8],
                                                  [_testView.centerX equalToView: self.view],
                                                  [_testView.centerY equalToView: self.view], nil];
    [self activate: constraints];
}

@end
