//
//  Utilities.h
//  TheRealDonald
//
//  Created by Andy Wu on 3/2/17.
//  Copyright © 2017 Andy Wu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DAO.h"

@interface Utilities : NSObject


+ (void) downloadData;

+ (void) createNewsObjects: (NSData*) data;


@end
