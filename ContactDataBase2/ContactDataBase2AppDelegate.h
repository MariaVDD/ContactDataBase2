//
//  ContactDataBase2AppDelegate.h
//  ContactDataBase2
//
//  Created by webstudent on 10/6/14.
//  Copyright (c) 2014 webstudent. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContactDataBase2AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
