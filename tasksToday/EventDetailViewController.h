//
//  EventDetailViewController.h
//  tasksToday
//
//  Created by Bettina on 6/19/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <EventKit/EventKit.h>

@interface EventDetailViewController : UIViewController

@property (strong, nonatomic) NSArray *yearlyEvents;
@property (weak, nonatomic) IBOutlet UITextView *titleForLists;

@end
