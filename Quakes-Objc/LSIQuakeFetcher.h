//
//  LSIQuakeFetcher.h
//  Quakes-Objc
//
//  Created by scott harris on 4/16/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@class LSIQuake;
typedef void (^LSIQuakeFetcherCompletionBlock)(NSArray<LSIQuake *> * _Nullable quakes, NSError * _Nullable error);

NS_ASSUME_NONNULL_BEGIN

@interface LSIQuakeFetcher : NSObject

//- (void)fetchQuakesInTimeInterval:(NSDateInterval *)interval
//                  completionBlock:(void (^)(NSArray<LSIQuake *> *quakes, NSError *error))completionBlock;

- (void)fetchQuakesInTimeInterval:(NSDateInterval *)interval
                  completionBlock:(LSIQuakeFetcherCompletionBlock)completionBlock;

@end

NS_ASSUME_NONNULL_END
