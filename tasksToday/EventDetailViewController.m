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
    for (EKEvent *event in self.yearlyEvents){
        
        if (self.yearlyEvents[0]){
        [eachTitle appendFormat:@"%@", event.title];
        }else{
            
            [eachTitle appendFormat:@"\n%@", event.title];
        }
        
    }
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
