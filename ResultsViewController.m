//
//  ResultsViewController.m
//  TheRealDonald
//
//  Created by Andy Wu on 3/2/17.
//  Copyright © 2017 Andy Wu. All rights reserved.
//

#import "ResultsViewController.h"

@interface ResultsViewController ()

@end

@implementation ResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.dao = [DAO sharedInstance];
    
    [self populateLabels];
}

-(void) populateLabels{
    
    self.scoreLabel.text = [NSString stringWithFormat: @"%i/5 Correct", self.dao.correctAnswers];
    
    switch (self.dao.correctAnswers){
            
        case 0:
            self.congratsLabel.text = @"You may actually be retarted...";
            break;
        case 1:
            self.congratsLabel.text = @"Well at least you got one right";
            break;
        case 2:
            self.congratsLabel.text = @"You might wanna watch the news just a tad more big guy";
            break;
        case 3:
            self.congratsLabel.text = @"Very average";
            break;
        case 4:
            self.congratsLabel.text = @"Thats pretty much cheeks";
            break;
        case 5:
            self.congratsLabel.text = @"You know Trump like the back of his tiny hand";
            break;
        default:
            NSLog (@"Integer out of range");
            break;
    }
}

- (IBAction)playAgainPressed:(id)sender {
    
    
    [self dismissViewControllerAnimated:YES completion:^{}];
    
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
