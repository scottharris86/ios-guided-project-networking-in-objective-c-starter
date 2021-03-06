//
//  NSDateInterval+LSIDayInterval.h
//  Quakes-Objc
//
//  Created by scott harris on 4/16/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDateInterval (LSIDayInterval)

+ (NSDateInterval *)lsi_dateIntervalByAddingDays:(NSInteger)days;

+ (NSDateInterval *)lsi_dateIntervalByAddingDays:(NSInteger)days toDate:(NSDate *)date;


@end

NS_ASSUME_NONNULL_END
