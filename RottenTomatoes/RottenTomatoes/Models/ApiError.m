//
//  ApiError.m
//  RottenTomatoes
//
//  Created by sktse on 2016-07-14.
//  Copyright © 2016 Wealthsimple. All rights reserved.
//

#import "ApiError.h"

@implementation ApiError

- (instancetype)initWithErrorType:(NSString *)errorType message:(NSString *)message {
    self = [super init];
    if (self) {
        _errorType = errorType;
        _message = message;
    }
    return self;
}

@end
