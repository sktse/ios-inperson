//
//  FilmScore.m
//  RottenTomatoes
//
//  Created by sktse on 2016-07-14.
//  Copyright © 2016 Wealthsimple. All rights reserved.
//

#import "FilmScore.h"

@implementation FilmScore

- (instancetype)initWithCriticsRatingScore:(NSString *)criticsScore criticsReadableRating:(NSString *)criticsReadable audienceRatingScore:(NSString *)audienceScore audienceReadableRating:(NSString *)audienceReadable {
    self = [super init];
    if (self) {
        _criticsRatingScore = criticsScore;
        _criticsReadableRating = criticsReadable;
        _audienceRatingScore = audienceScore;
        _audienceReadableRating = audienceReadable;
    }
    return self;
}

@end
