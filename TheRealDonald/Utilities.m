//
//  Utilities.m
//  TheRealDonald
//
//  Created by Andy Wu on 3/2/17.
//  Copyright © 2017 Andy Wu. All rights reserved.
//

#import "Utilities.h"

@implementation Utilities



+ (void) downloadData {
    NSString *urlString = @"https://api.nytimes.com/svc/search/v2/articlesearch.json?api-key=ec77746b0e834a9198f3200dbf44c295&q=donaldtrump";
    
    // 1
    NSString *dataUrl = urlString;
    NSURL *url = [NSURL URLWithString:dataUrl];
    
    // 2
    NSURLSessionDataTask *downloadTask = [[NSURLSession sharedSession]
                                          dataTaskWithURL:url completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
                                              // 4: Handle response here
                                              dispatch_async(dispatch_get_main_queue(), ^{
                                                  [self createNewsObjects:data];
                                                  
                                              });
                                              
                                          }];
    
    // 3
    [downloadTask resume];
}

+ (void) createNewsObjects: (NSData*) responseData {
    NSError *error;
    
    NSDictionary *responseDataDict = [NSJSONSerialization JSONObjectWithData: responseData options:kNilOptions error:&error];
    
    //NSLog(@"NEWS ARTICLE DICT: %@\nCount: %lu", responseDataDict, (unsigned long)responseDataDict.count);
    
    NSMutableDictionary *responseArray = [[NSMutableDictionary alloc] initWithDictionary:[responseDataDict objectForKey:@"response"] copyItems:true];
    
    //NSLog(@"NEWS ARTICLE DICT: %@\nCount: %lu", responseArray, (unsigned long)responseArray.count);
    
    
    [responseArray removeObjectForKey:@"meta"];
    
    //NSLog(@"NEWS ARTICLE DICT: %@\nCount: %lu", responseArray, (unsigned long)responseArray.count);
    
    NSArray *docsArray = [[NSArray alloc] init];
    docsArray = [responseArray objectForKey:@"docs"];
    
    //NSLog(@"DOCS ARRAY: %@\nCount: %lu", docsArray, (unsigned long)docsArray.count);
    
    NSMutableArray *newsArticleArray = [[NSMutableArray alloc] init];
    
    for (NSDictionary *item in docsArray) {
        NSString *title = [item objectForKey:@"lead_paragraph"];
        [newsArticleArray addObject:title];
    }
    
    NSLog(@"NEWS ARTICLE ARRAY: %@\nCount: %lu", newsArticleArray, (unsigned long)newsArticleArray.count);
    
    
}

@end
