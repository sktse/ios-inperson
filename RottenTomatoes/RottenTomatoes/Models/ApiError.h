//
//  ApiError.h
//  RottenTomatoes
//
//  Created by sktse on 2016-07-14.
//  Copyright © 2016 Wealthsimple. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ApiError : NSObject

@property (nonatomic, strong) NSString *errorType;
@property (nonatomic, strong) NSString *message;

- (instancetype)initWithErrorType:(NSString *)errorType message:(NSString *)message;

@end
