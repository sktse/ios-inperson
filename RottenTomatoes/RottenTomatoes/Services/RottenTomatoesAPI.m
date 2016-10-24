//
//  RottenTomatoesAPI.m
//  RottenTomatoes
//
//  Created by sktse on 2016-07-14.
//  Copyright © 2016 Wealthsimple. All rights reserved.
//

#import "RottenTomatoesAPI.h"
#import "StoredContentProvider.h"
#import "FilmSummary.h"
#import "FilmDetails.h"
#import "FilmScore.h"
#import "ApiError.h"

@implementation RottenTomatoesAPI

- (void)getFilmSummaries:(FilmSummariesBlock)successBlock error:(ErrorBlock)errorBlock {
    // This is a stub because you don't need to actually worry about networking.
    StoredContentProvider *provider = [StoredContentProvider new];
    
    NSMutableArray *summaryObjects = [NSMutableArray new];
    NSArray *summaries = [provider filmSummaries];
    for (NSDictionary* summaryDictionary in summaries) {
        FilmSummary *summary = [[FilmSummary alloc] initWithId:summaryDictionary[@"id"]
                                                         title:summaryDictionary[@"title"]
                                                   releaseDate:summaryDictionary[@"release_date"]
                                                     posterUrl:summaryDictionary[@"poster_url"]];
        [summaryObjects addObject:summary];
    }
    successBlock(summaryObjects);
};

- (void)getFilmDetailsWithId:(NSString *)filmId success:(FilmDetailsBlock)successBlock error:(ErrorBlock)errorBlock {

    StoredContentProvider *provider = [StoredContentProvider new];
    NSArray *details = [provider filmDetails];
    FilmDetails *filmDetailsObject;
    for (NSDictionary *detail in details) {
        if ([filmId isEqualToString:detail[@"id"]]) {
            NSDictionary *filmScore = detail[@"ratings"];
            FilmScore *filmScoreObject = [[FilmScore alloc] initWithCriticsRatingScore:filmScore[@"critics_score"]
                                                                 criticsReadableRating:filmScore[@"critics_rating"]
                                                                   audienceRatingScore:filmScore[@"audience_score"]
                                                                audienceReadableRating:filmScore[@"audience_rating" ]];
            
            filmDetailsObject = [[FilmDetails alloc] initWithId:detail[@"id"]
                                                          title:detail[@"title"]
                                                    releaseDate:detail[@"release_date"]
                                                       synopsis:detail[@"poster_url"]
                                                      posterUrl:detail[@"synopsis"]
                                                      filmScore:filmScoreObject];
            break;
        }
    }
    
    if (filmDetailsObject) {
        successBlock(filmDetailsObject);
    } else {
        ApiError *error = [[ApiError alloc] initWithErrorType:@"interal_server_error" message:@"Something went wrong!"];
        errorBlock(error);
    }
}

@end
