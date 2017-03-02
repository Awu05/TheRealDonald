//
//  QuestionViewController.m
//  TheRealDonald
//
//  Created by Andy Wu on 3/2/17.
//  Copyright © 2017 Andy Wu. All rights reserved.
//

#import "QuestionViewController.h"
#import "ResultsViewController.h"

@interface QuestionViewController ()

@end

@implementation QuestionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.dao = [DAO sharedInstance];
    self.resultsVC = [[ResultsViewController alloc]initWithNibName:@"ResultsViewController" bundle:nil];
    
    self.questionCount = 0;
    self.correctAnswers = 0;
    
    [self getHeadline];
    
}

-(void) viewWillAppear:(BOOL)animated{
    self.questionCount = 1;
    self.correctAnswers = 0;
}

- (IBAction)truePressed:(id)sender {
    
    if(self.currentQuestion.real == TRUE){
        self.correctAnswers ++;
    }
    
    if(self.questionCount == 5){
        
        [self moveToResultsScreen];
        
    } else {
        
        [self getHeadline];
        
    }
    
}

- (IBAction)falsePressed:(id)sender {
    
    if(self.currentQuestion.real == FALSE){
        self.correctAnswers ++;
    }

    
    if(self.questionCount == 5){
        
        [self moveToResultsScreen];
        
    } else {
        
        [self getHeadline];
        
    }
    
}

-(void) moveToResultsScreen{
    
    [self presentViewController:self.resultsVC animated:YES completion:^{}];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) getHeadline {
    self.randNum = arc4random_uniform((int)self.dao.newsArticles.count);
    
    NewsFormat *newHeadline = self.dao.newsArticles[self.randNum];
    
    self.currentQuestion = newHeadline;
    
    self.headlineLabel.text = newHeadline.Headline;
    
    [self.dao.newsArticles removeObjectAtIndex:self.randNum];
    
    self.questionCount += 1;
}

@end
