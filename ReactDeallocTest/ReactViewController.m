//
//  ReactViewController.m
//  ReactDeallocTest
//
//  Created by Jatin on 28/05/18.
//  Copyright © 2018 Jatin. All rights reserved.
//

#import "ReactViewController.h"
#import <React/RCTRootView.h>

@interface ReactViewController ()

@end

@implementation ReactViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(cancelButtonPressed)];
}

- (void)dealloc
{
//    RCTRootView *v = ((RCTRootView *)self.view);
//    [v.bridge invalidate];
}

- (void)cancelButtonPressed {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
