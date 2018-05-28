//
//  ViewController.m
//  ReactDeallocTest
//
//  Created by Jatin on 28/05/18.
//  Copyright © 2018 Jatin. All rights reserved.
//

#import "ViewController.h"
#import <React/RCTRootView.h>
#import "ReactViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showButtonPressed:(id)sender {
    
    NSURL *url = [[NSURL alloc] initWithString:@"http://localhost:8081/App.ios.bundle?platform=ios"];
    
    RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL: url
                                moduleName: @"App"
                         initialProperties: nil
                             launchOptions: nil];
    
    UIViewController *vc = [[ReactViewController alloc] init];
    vc.view = rootView;
    
    rootView.reactViewController = vc;
    
    [self.navigationController pushViewController:vc animated:true];
}


@end
