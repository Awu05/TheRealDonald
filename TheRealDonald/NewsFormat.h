//
//  NewsFormat.h
//  TheRealDonald
//
//  Created by Andy Wu on 3/2/17.
//  Copyright © 2017 Andy Wu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NewsFormat : NSObject

@property NSString *Headline;

@property BOOL real;

-(instancetype) initWithHeadline: (NSString*) headLine
                        andTruth: (BOOL) real;

@end
