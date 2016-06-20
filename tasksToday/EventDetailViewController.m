//
//  EventDetailViewController.m
//  tasksToday
//
//  Created by Bettina on 6/19/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import "EventDetailViewController.h"

@interface EventDetailViewController ()

@end

@implementation EventDetailViewController



-(void)viewWillAppear:(BOOL)animated{

    NSMutableString *eachTitle = [[NSMutableString alloc]init];
    
    for(NSUInteger i = 0; i<[self.yearlyEvents count]; i++){
        EKEvent *event = self.yearlyEvents[i];
        
        if (i == [self.yearlyEvents count]-1){
            [eachTitle appendFormat:@"%@", event.title];
        }
        else {
            [eachTitle appendFormat:@"%@\n", event.title];
        }
    
    }
    
    
//    for (EKEvent *event in self.yearlyEvents){
//        
//        if (self.yearlyEvents.count == 1){
    
//        [eachTitle appendFormat:@"%@", event.title];
//            
//        }else{
//            
//            // Get index of current event
//            NSUInteger index = [self.yearlyEvents indexOfObject:event];
//            
//            // If the index is equal to the count of the array minus one, then it's the last one, then no line break is needed
    //        if (index == self.yearlyEvents.count - 1) {
//                [eachTitle appendFormat:@"%@", event.title];
//            } else {
//                [eachTitle appendFormat:@"%@\n", event.title];
//            }
//            
//        }
//        
    
    self.titleForLists.text = eachTitle;
    
}


//- (void)viewDidLoad {
//    [super viewDidLoad];
//    // Do any additional setup after loading the view.
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/



@end
