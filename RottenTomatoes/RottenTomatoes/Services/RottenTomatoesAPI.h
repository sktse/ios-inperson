//
//  RottenTomatoesAPI.h
//  RottenTomatoes
//
//  Created by sktse on 2016-07-14.
//  Copyright © 2016 Wealthsimple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ApiBlocks.h"

@interface RottenTomatoesAPI : NSObject

- (void)getFilmSummaries:(FilmSummariesBlock)successBlock error:(ErrorBlock)errorBlock;
- (void)getFilmDetailsWithId:(NSString *)filmId success:(FilmDetailsBlock)successBlock error:(ErrorBlock)errorBlock;

@end
