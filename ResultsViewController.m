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
            self.imageView.image = [UIImage imageNamed:@"TrumpRetard"];
            break;
        case 1:
            self.congratsLabel.text = @"Well at least you got one right";
            self.imageView.image = [UIImage imageNamed:@"TrumpTinyFace"];
            break;
        case 2:
            self.congratsLabel.text = @"You might wanna watch the news just a tad more big guy";
            self.imageView.image = [UIImage imageNamed:@"TrumpWallCop"];
            break;
        case 3:
            self.congratsLabel.text = @"Pretty Boss";
            self.imageView.image = [UIImage imageNamed:@"TrumpBoss"];
            break;
        case 4:
            self.congratsLabel.text = @"Atta boy!";
            self.imageView.image = [UIImage imageNamed:@"TrumpThumbs"];
            break;
        case 5:
            self.congratsLabel.text = @"You know Trump like the back of his tiny hand";
            self.imageView.image = [UIImage imageNamed:@"Trump1"];
            break;
        default:
            NSLog (@"Integer out of range");
            break;
    }
}

- (IBAction)playAgainPressed:(id)sender {
    
    
    //[self dismissViewControllerAnimated:YES completion:^{}];
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ViewController *myVC = (ViewController *)[storyboard instantiateViewControllerWithIdentifier:@"startScreen"];
    
    [myVC resetData];
    
    [self presentViewController:myVC animated:YES completion:nil];
    
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
