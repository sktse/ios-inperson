//
//  FilmSummary.m
//  RottenTomatoes
//
//  Created by sktse on 2016-07-14.
//  Copyright © 2016 Wealthsimple. All rights reserved.
//

#import "FilmSummary.h"

@implementation FilmSummary

- (instancetype)initWithId:(NSString *)filmId title:(NSString *)title releaseDate:(NSString *)releaseDate posterUrl:(NSString *)posterUrl {
    self = [super init];
    if (self) {
        _filmId = filmId;
        _title = title;
        _releaseDate = releaseDate;
        _posterUrl = posterUrl;
    }
    return self;
}

@end
