//
//  NewsFormat.m
//  TheRealDonald
//
//  Created by Andy Wu on 3/2/17.
//  Copyright © 2017 Andy Wu. All rights reserved.
//

#import "NewsFormat.h"

@implementation NewsFormat

-(instancetype) initWithHeadline: (NSString*) headLine
                        andTruth: (BOOL) real{

    self = [super init];
    if (self) {
        self.Headline = headLine;
        self.real = real;
    }
    return self;
    
}

@end
