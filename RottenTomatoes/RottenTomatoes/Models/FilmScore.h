//
//  FilmScore.h
//  RottenTomatoes
//
//  Created by sktse on 2016-07-14.
//  Copyright © 2016 Wealthsimple. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FilmScore : NSObject

@property (nonatomic, strong) NSString *criticsRatingScore;
@property (nonatomic, strong) NSString *criticsReadableRating;
@property (nonatomic, strong) NSString *audienceRatingScore;
@property (nonatomic, strong) NSString *audienceReadableRating;

- (instancetype)initWithCriticsRatingScore:(NSString *)criticsScore criticsReadableRating:(NSString *)criticsReadable audienceRatingScore:(NSString *)audienceRatingScore audienceReadableRating:(NSString *)audienceReadable;

@end
