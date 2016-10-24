//
//  StoredContentProvider.h
//  RottenTomatoes
//
//  Created by sktse on 2016-07-14.
//  Copyright © 2016 Wealthsimple. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StoredContentProvider : NSObject

- (NSArray *)filmSummaries;
- (NSArray *)filmDetails;

@end
