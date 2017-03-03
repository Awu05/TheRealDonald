//
//  DAO.h
//  TheRealDonald
//
//  Created by Alex Laptop on 3/2/17.
//  Copyright © 2017 Andy Wu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NewsFormat.h"

@interface DAO : NSObject

@property NSMutableArray<NewsFormat*> *newsArticles;

@property int correctAnswers;

+(DAO*) sharedInstance;

-(void) createNewsFormat: (NSString*) headline andTrue: (BOOL)valid ;

@end
