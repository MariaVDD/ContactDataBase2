//
//  ContactDataBase2ViewController.h
//  ContactDataBase2
//
//  Created by webstudent on 10/6/14.
//  Copyright (c) 2014 webstudent. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ContactDataBase2AppDelegate.h" 



@interface ContactDataBase2ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *fullname;
@property (weak, nonatomic) IBOutlet UITextField *email;
@property (weak, nonatomic) IBOutlet UITextField *phone;
@property (weak, nonatomic) IBOutlet UILabel *status;
- (IBAction)btnSave:(id)sender;
- (IBAction)btnFind:(id)sender;

@end
