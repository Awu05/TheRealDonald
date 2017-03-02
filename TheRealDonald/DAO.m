//
//  DAO.m
//  TheRealDonald
//
//  Created by Alex Laptop on 3/2/17.
//  Copyright © 2017 Andy Wu. All rights reserved.
//

#import "DAO.h"

@implementation DAO

+(DAO*) sharedInstance{
    
    static DAO *sharedMyManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedMyManager = [[self alloc] init];
    });
    return sharedMyManager;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.newsArticles = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void) createNewsFormat: (NSString*) headline andTrue: (BOOL)valid {
    NewsFormat *newHeadline = [[NewsFormat alloc] initWithHeadline:headline andTruth:valid];
    
    [self.newsArticles addObject:newHeadline];
}

@end
