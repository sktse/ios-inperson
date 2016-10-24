//
//  FilmDetails.m
//  RottenTomatoes
//
//  Created by sktse on 2016-07-14.
//  Copyright © 2016 Wealthsimple. All rights reserved.
//

#import "FilmDetails.h"

@implementation FilmDetails

- (instancetype)initWithId:(NSString *)filmId title:(NSString *)title releaseDate:(NSString *)releaseDate synopsis:(NSString *)synopsis posterUrl:(NSString *)posterUrl filmScore:(FilmScore *)score {
    self = [super init];
    if (self) {
        _filmId = filmId;
        _title = title;
        _releaseDate = releaseDate;
        _synopsis = synopsis;
        _posterUrl = posterUrl;
        _filmScore = score;
    }
    return self;
}

@end
