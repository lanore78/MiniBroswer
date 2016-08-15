//
//  ViewController.m
//  MiniBrowser2
//
//  Created by lanore on 2016. 8. 15..
//  Copyright © 2016년 lanore. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize mainWebView, urlTextField, bookmarkSegmentedControl, activityIndicatorView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *urlString = @"http://www.facebook.com";
    [activityIndicatorView setHidesWhenStopped:TRUE];
    
    [mainWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:urlString]]];
    urlTextField.text = urlString;
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    NSString *urlString = urlTextField.text;
    
    if(![urlString hasPrefix:@"http://"])
    {
        urlString = [[NSString alloc] initWithFormat:@"http://%@", urlString];
    }
    
    [mainWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:urlString]]];
    [textField resignFirstResponder];
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)bookmarkAction:(id)sender {
    NSString *title = [bookmarkSegmentedControl titleForSegmentAtIndex:bookmarkSegmentedControl.selectedSegmentIndex];
    
    NSString *urlString = [[NSString alloc] initWithFormat:@"http://www.%@.com", title];
    
    [mainWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:urlString]]];
    urlTextField.text = urlString;
}

-(void)webViewDidStartLoad:(UIWebView *)webView
{
    NSLog(@"webViewDidStartLoad");
    [activityIndicatorView startAnimating];
}

-(void)webViewDidFinishLoad:(UIWebView *)webView
{
    NSLog(@"webViewDidFinishLoad");
    NSLog(@"webViewDidFinishLoad");
    NSLog(@"webViewDidFinishLoad");
    [activityIndicatorView stopAnimating];
}

@end
