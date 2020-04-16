//
//  LSIQuakeViewController.m
//  Quakes-Objc
//
//  Created by scott harris on 4/16/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "LSIQuakeViewController.h"
#import "LSIQuakeFetcher.h"
#import "NSDateInterval+LSIDayInterval.h"

@interface LSIQuakeViewController ()

@property (nonatomic) LSIQuakeFetcher *quakeFetcher;

@end

@implementation LSIQuakeViewController

- (LSIQuakeFetcher *)quakeFetcher {
    if (!_quakeFetcher) {
        _quakeFetcher = [[LSIQuakeFetcher alloc] init];
    }
    
    return _quakeFetcher;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSDateInterval *interval = [NSDateInterval lsi_dateIntervalByAddingDays:-1];
    [self.quakeFetcher fetchQuakesInTimeInterval:interval completionBlock:^(NSArray<LSIQuake *> * _Nullable quakes, NSError * _Nullable error) {
        if (error) {
            NSLog(@"Error fetching quakes: %@", error);
            return;
        }
        
        NSLog(@"Quakes: %ld", quakes.count);
        
    }];
    
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
