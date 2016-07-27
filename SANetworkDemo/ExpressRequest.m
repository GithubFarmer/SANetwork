//
//  ExpressRequest.m
//  SANetwork
//
//  Created by ISCS01 on 16/3/31.
//  Copyright © 2016年 浙江网仓科技有限公司. All rights reserved.
//

#import "ExpressRequest.h"

@implementation ExpressRequest

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.requestParamSourceDelegate = self;
    }
    return self;
}

- (NSString *)requestMethodName {
    return @"query";
}

- (BOOL)isCorrectWithResponseData:(id)responseData {
    if (responseData) {
        return YES;
    }
    return NO;
}

- (SARequestMethod)requestMethod {
    return SARequestMethodPost;
}

- (NSDictionary *)requestParamDictionary {
    return @{
             @"type" : self.type,
             @"postid" : self.postId
             };
}

@end
