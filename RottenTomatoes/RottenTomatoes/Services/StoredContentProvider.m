//
//  StoredContentProvider.m
//  RottenTomatoes
//
//  Created by sktse on 2016-07-14.
//  Copyright © 2016 Wealthsimple. All rights reserved.
//

#import "StoredContentProvider.h"

@implementation StoredContentProvider

- (NSArray *)contentForJSONResource:(NSString *)resource {
    NSString *filePath = [[NSBundle mainBundle] pathForResource:resource ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:filePath];
    return [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
}

- (NSArray *)filmSummaries {
    return [self contentForJSONResource:@"film_summaries"];
}

- (NSArray *)filmDetails {
    return [self contentForJSONResource:@"film_details"];
}

@end
