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
    
    self.questionCount = 1;
    self.correctAnswers = 0;
}

-(void) viewWillAppear:(BOOL)animated{
    self.questionCount = 1;
    self.correctAnswers = 0;
}

- (IBAction)truePressed:(id)sender {
    
    if(self.currentQuestion.real == TRUE){
        self.correctAnswers ++;
    }
    
    if(self.questionCount == 10){
        
        [self moveToResultsScreen];
        
    } else {
        
        
        
    }
    
}

- (IBAction)falsePressed:(id)sender {
    
    if(self.currentQuestion.real == FALSE){
        self.correctAnswers ++;
    }

    
    if(self.questionCount == 10){
        
        [self moveToResultsScreen];
        
    } else {
        
        
        
    }
    
}

-(void) moveToResultsScreen{
    
    [self presentViewController:self.resultsVC animated:YES completion:^{}];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
