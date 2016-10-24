//
//  ApiBlocks.h
//  RottenTomatoes
//
//  Created by sktse on 2016-07-14.
//  Copyright © 2016 Wealthsimple. All rights reserved.
//

#ifndef ApiBlocks_h
#define ApiBlocks_h

@class ApiError;
@class FilmSummary;
@class FilmDetails;

typedef void(^ErrorBlock)(ApiError *error);
typedef void(^FilmSummariesBlock)(NSArray *summaries);
typedef void(^FilmDetailsBlock)(FilmDetails *filmDetails);

#endif /* ApiBlocks_h */
