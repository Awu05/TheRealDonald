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
    
    self.trumpPics = [[NSArray alloc] initWithObjects:
                      @"Trump1", @"Trump2", @"Trump3", @"Trump4", @"Trump5", @"Trump6", @"Trump7", @"Trump8", @"Trump9", @"Trump10", @"Trump11", @"Trump12", @"Trump12", @"Trump14", @"Trump15", @"Trump16", @"Trump17", @"Trump18", @"Trump19", @"Trump20", nil];
    
    self.questionCount = 0;
    self.dao.correctAnswers = 0;
    
    [self getHeadline];
    
}

- (IBAction)truePressed:(id)sender {
    
    if(self.currentQuestion.real == TRUE){
        self.dao.correctAnswers ++;
        self.correctImg.image = [UIImage imageNamed:@"correct"];
    } else {
        self.correctImg.image = [UIImage imageNamed:@"incorrect"];
    }
    
    [self animateImg];
    
}

- (IBAction)falsePressed:(id)sender {
    
    if(self.currentQuestion.real == FALSE){
        self.dao.correctAnswers ++;
        self.correctImg.image = [UIImage imageNamed:@"correct"];
    } else {
        self.correctImg.image = [UIImage imageNamed:@"incorrect"];
    }
    
    [self animateImg];

    
    
}

- (void) animateImg {
    self.correctImg.alpha = 0.0;
    [UIView animateWithDuration:1.0
                          delay:0.0
                        options: UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         self.correctImg.alpha = 1.0;
                     }
                     completion:^(BOOL finished){
                         [UIView animateWithDuration:1.0
                                               delay:1.0
                                             options: UIViewAnimationOptionCurveEaseOut
                                          animations:^{
                                              self.correctImg.alpha = 0.0;
                                              
                                          }
                                          completion:^(BOOL finished){
                                              [self getHeadline];
                                          }];
                     }];
}

-(void) moveToResultsScreen{
    
    [self presentViewController:self.resultsVC animated:YES completion:^{}];
        
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) getHeadline {
    
    if(self.questionCount == 5){
        
        [self moveToResultsScreen];
        
    } else {
        
        int randPicIndex = arc4random_uniform((int)self.trumpPics.count);
        self.imageView.image = [UIImage imageNamed:self.trumpPics[randPicIndex]];
        
        self.randNum = arc4random_uniform((int)self.dao.newsArticles.count);
        //NSLog(@"News article count: %lu", (unsigned long)self.dao.newsArticles.count);
        NewsFormat *newHeadline = self.dao.newsArticles[self.randNum];
        
        self.currentQuestion = newHeadline;
        
        self.headlineLabel.text = newHeadline.Headline;
        
        [self.dao.newsArticles removeObjectAtIndex:self.randNum];
        
        self.questionCount += 1;
        
    }
    
    //NSLog(@"Questions Count: %d", self.questionCount);
}

@end
