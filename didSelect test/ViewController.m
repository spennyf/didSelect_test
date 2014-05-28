//
//  ViewController.m
//  didSelect test
//
//  Created by Spencer Fontein on 5/28/14.
//  Copyright (c) 2014 Spencer Fontein. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated {
    NSLog(@"object: %@", _object);
    if ([_object isEqualToString:@"object1"]) {
        [_btn1 setTitle:@"new1" forState:UIControlStateNormal];
    }
    if ([_object isEqualToString:@"object2"]) {
    
        [_btn2 setTitle:@"new2" forState:UIControlStateNormal];
    }

}

@end
