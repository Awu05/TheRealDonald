//
//  ViewController.m
//  TheRealDonald
//
//  Created by Andy Wu on 3/2/17.
//  Copyright © 2017 Andy Wu. All rights reserved.
//

#import "ViewController.h"
#import "QuestionViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.questionVC = [[QuestionViewController alloc]initWithNibName:@"QuestionViewController" bundle:nil];
    
    [Utilities downloadData];
}

- (IBAction)startButtonPressed:(id)sender {
    
    [self presentViewController:self.questionVC animated:YES completion:^{}];
}

- (void) resetData {
    DAO *mySharedData = [DAO sharedInstance];
    [mySharedData.newsArticles removeAllObjects];
    mySharedData.correctAnswers = 0;
    [mySharedData createFakeNews];
    
}

@end
