//
//  ViewController.h
//  MiniBrowser2
//
//  Created by lanore on 2016. 8. 15..
//  Copyright © 2016년 lanore. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate, UIWebViewDelegate>

@property (weak, nonatomic) IBOutlet UISegmentedControl *bookmarkSegmentedControl;
@property (weak, nonatomic) IBOutlet UIWebView *mainWebView;
@property (weak, nonatomic) IBOutlet UITextField *urlTextField;
- (IBAction)bookmarkAction:(id)sender;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicatorView;



@end

