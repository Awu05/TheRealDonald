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
        [self createNewsFormat];
    }
    return self;
}

-(void) createNewsFormat{
    
}

@end
