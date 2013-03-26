//
//  ViewController.m
//  web2Native
//
//  Created by willie shi on 3/25/13.
//  Copyright (c) 2013 8land games studio. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
NSString *const myURL = @"http://www.google.com";

- (void)loadMyURL{
    NSString *urlAddress = @"http://google.com";
    NSURL *url = [NSURL URLWithString:urlAddress];
    NSString *connectionString = [[NSString alloc] initWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil];
	if ([connectionString length] == 0) {
		UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"No Internet Connection" message:@"Check Your Internet Connection" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
		[alertView show];
        }else {
           [_webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:myURL]]];
        }
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    [self loadMyURL];	
}

@end
