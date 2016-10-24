//
//  FilmSummary.h
//  RottenTomatoes
//
//  Created by sktse on 2016-07-14.
//  Copyright © 2016 Wealthsimple. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FilmSummary : NSObject

@property (nonatomic, strong) NSString *filmId;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *releaseDate;
@property (nonatomic, strong) NSString *posterUrl;

- (instancetype)initWithId:(NSString *)filmId title:(NSString *)title releaseDate:(NSString *)releaseDate posterUrl:(NSString *)posterUrl;

@end
