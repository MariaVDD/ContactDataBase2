//
//  ContactDataBase2ViewController.m
//  ContactDataBase2
//
//  Created by webstudent on 10/6/14.
//  Copyright (c) 2014 webstudent. All rights reserved.
//

#import "ContactDataBase2ViewController.h"

@interface ContactDataBase2ViewController ()

@end

@implementation ContactDataBase2ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnSave:(id)sender {
    
    ContactDataBase2AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    
    
    
    NSManagedObjectContext *context = [appDelegate managedObjectContext];
    
    
    
    
    NSManagedObject *newContact;
    newContact = [NSEntityDescription insertNewObjectForEntityForName:@"Contacts" inManagedObjectContext:context];
    
    
    [newContact setValue: _fullname.text forKey:@"fullname"];
    [newContact setValue: _email.text forKey:@"email"];
    [newContact setValue: _phone.text forKey:@"phone"];
  
    
    _fullname.text = @"";
    _email.text = @"";
    _phone.text = @"";
    NSError *error;
    
    //Save
    [context save:&error];
    _status.text = @"Contact saved";
}
   
    
    


- (IBAction)btnFind:(id)sender {
    
    ContactDataBase2AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    
    
    
    NSManagedObjectContext *context = [appDelegate managedObjectContext];
    
    
    NSEntityDescription *entityDesc = [NSEntityDescription entityForName:@"Contact" inManagedObjectContext:context];
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    [request setEntity:entityDesc];

    NSPredicate *pred =[NSPredicate predicateWithFormat:@"(fname CONTAINS[cd] %@)", _fullname.text]; [request setPredicate:pred];
    NSManagedObject *matches = nil;
    NSError *error;
    NSArray *objects = [context executeFetchRequest:request error:&error];
    if ([objects count] == 0) { _status.text = @"No matches";
    } else {
        matches = objects[0];
        _fullname.text = [matches valueForKey:@"fname"];
        _email.text = [matches valueForKey:@"email"];
        _phone.text = [matches valueForKey:@"phone"];
        _status.text = [NSString stringWithFormat: @"%lu matches found", (unsigned long)[objects count]];
    } }
    
    
                        
        
    
    

@end
