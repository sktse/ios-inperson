//
//  FilmDetails.h
//  RottenTomatoes
//
//  Created by sktse on 2016-07-14.
//  Copyright © 2016 Wealthsimple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FilmScore.h"

@interface FilmDetails : NSObject

@property (nonatomic, strong) NSString *filmId;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *releaseDate;
@property (nonatomic, strong) NSString *posterUrl;
@property (nonatomic, strong) NSString *synopsis;
@property (nonatomic, strong) FilmScore *filmScore;

- (instancetype)initWithId:(NSString *)filmId title:(NSString *)title releaseDate:(NSString *)releaseDate synopsis:(NSString *)synopsis posterUrl:(NSString *)posterUrl filmScore:(FilmScore *)score;

@end
