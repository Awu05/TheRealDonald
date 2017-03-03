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
        self.correctAnswers = 0;
        [self createFakeNews];
    }
    return self;
}

-(void) createNewsFormat: (NSString*) headline andTrue: (BOOL)valid {
    NewsFormat *newHeadline = [[NewsFormat alloc] initWithHeadline:headline andTruth:valid];
    
    [self.newsArticles addObject:newHeadline];
}

-(void) createFakeNews {
    
    
    NewsFormat *fakeHeadline1 = [[NewsFormat alloc] initWithHeadline: @"Donald Trump issues a press release crowning himself 'God Emperor' of the debate." andTruth:FALSE];
    
    [self.newsArticles addObject:fakeHeadline1];

    NewsFormat *fakeHeadline2 = [[NewsFormat alloc] initWithHeadline: @"Donald Trump claims he knows Victoria's secret at recent interview." andTruth:FALSE];
    
    [self.newsArticles addObject:fakeHeadline2];

    NewsFormat *fakeHeadline3 = [[NewsFormat alloc] initWithHeadline: @"Donald Trump’s calendar goes straight from March 31st to April 2nd so no one can fool him." andTruth:FALSE];
    
    [self.newsArticles addObject:fakeHeadline3];
    
    NewsFormat *fakeHeadline4 = [[NewsFormat alloc] initWithHeadline: @"When he drives a car off the lot, its price increases in value, Trump claims in recent interview." andTruth:FALSE];
    
    [self.newsArticles addObject:fakeHeadline4];
    
    NewsFormat *fakeHeadline5 = [[NewsFormat alloc] initWithHeadline: @"President Elect Trump admits to never wearing a watch because time is always on his side." andTruth:FALSE];
    
    [self.newsArticles addObject:fakeHeadline5];
    
    NewsFormat *fakeHeadline6 = [[NewsFormat alloc] initWithHeadline: @"Ridiculous: Presidential Nominee, Donald Trump claims he taught a German Shepherd spanish." andTruth:FALSE];
    
    [self.newsArticles addObject:fakeHeadline6];
    
    NewsFormat *fakeHeadline7 = [[NewsFormat alloc] initWithHeadline: @"No less than 5 Mexican folk songs have been written about him, Trump claims." andTruth:FALSE];
    
    [self.newsArticles addObject:fakeHeadline7];
    
    NewsFormat *fakeHeadline8 = [[NewsFormat alloc] initWithHeadline: @"NYPD Police Officer gets ticketed for pulling over Donald Trump." andTruth:FALSE];
    
    [self.newsArticles addObject:fakeHeadline8];
    
    NewsFormat *fakeHeadline9 = [[NewsFormat alloc] initWithHeadline: @"In his recent tweet, Trump claims he spoke ‘Russian to Vladimir Putin… in French’." andTruth:FALSE];
    
    [self.newsArticles addObject:fakeHeadline9];
    
    NewsFormat *fakeHeadline10 = [[NewsFormat alloc] initWithHeadline: @"I’ve killed two stones with one bird’ . Donald Trump proclaims at Arizona rally" andTruth:FALSE];
    
    [self.newsArticles addObject:fakeHeadline10];
    
    NewsFormat *fakeHeadline11 = [[NewsFormat alloc] initWithHeadline: @"My mother would be so proud,if she was alive she would’ve gotten a tattoo on her arm that says ‘son’ . -Donald J. Trump" andTruth:FALSE];
    
    [self.newsArticles addObject:fakeHeadline11];
    
    NewsFormat *fakeHeadline12 = [[NewsFormat alloc] initWithHeadline: @"Trump asked attendees at local rally to get vaccinated because his charm is so contagious" andTruth:FALSE];
    
    [self.newsArticles addObject:fakeHeadline12];
    
    NewsFormat *fakeHeadline13 = [[NewsFormat alloc] initWithHeadline: @"Trump at Iowa rally: ‘My Legend precedes me, like lightning precedes thunder’" andTruth:FALSE];
    
    [self.newsArticles addObject:fakeHeadline13];
    
    NewsFormat *fakeHeadline14 = [[NewsFormat alloc] initWithHeadline: @"Trump says he’s got ‘…nothing against Mexicans’  claiming ‘the Mayans built part of my house in Florida.’" andTruth:FALSE];
    
    [self.newsArticles addObject:fakeHeadline14];
    
    NewsFormat *fakeHeadline15 = [[NewsFormat alloc] initWithHeadline: @"‘I’ve given my father ‘the Talk’ and I’ve sent my parents to their room when I was younger’ , Donald Trump claims in his book " andTruth:FALSE];
    
    [self.newsArticles addObject:fakeHeadline15];

    
    NewsFormat *fakeHeadline16 = [[NewsFormat alloc] initWithHeadline: @"One-armed man fervorously applaud Republican Presidential Nominee Donald J. Trump at local rally" andTruth:FALSE];
    
    [self.newsArticles addObject:fakeHeadline16];
    
    NewsFormat *fakeHeadline17 = [[NewsFormat alloc] initWithHeadline: @"Donald Trump reminds Pennsylvania Poison Control Center employees ‘to not take poison’" andTruth:FALSE];
    
    [self.newsArticles addObject:fakeHeadline17];
    
    NewsFormat *fakeHeadline18 = [[NewsFormat alloc] initWithHeadline: @"Trump calls Muslim ESPN X-Games skateboarder a radical islamist" andTruth:FALSE];
    
    [self.newsArticles addObject:fakeHeadline18];
    
    NewsFormat *fakeHeadline19 = [[NewsFormat alloc] initWithHeadline: @"Trump wants to visit Spain and chase the bulls" andTruth:FALSE];
    
    [self.newsArticles addObject:fakeHeadline19];

    NewsFormat *fakeHeadline20 = [[NewsFormat alloc] initWithHeadline: @"‘If opportunity rings, and I’m at a call, opportunity waits or leaves a message’  -Donald J. Trump" andTruth:FALSE];
    
    [self.newsArticles addObject:fakeHeadline20];

}

@end
