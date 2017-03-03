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
            [self playSound:@"stupid"];
            break;
        case 1:
            self.congratsLabel.text = @"Well at least you got one right";
            self.imageView.image = [UIImage imageNamed:@"TrumpTinyFace"];
            [self playSound:@"stupid"];
            break;
        case 2:
            self.congratsLabel.text = @"You might wanna watch the news just a tad more big guy";
            self.imageView.image = [UIImage imageNamed:@"TrumpWallCop"];
            [self playSound:@"cringe"];
            break;
        case 3:
            self.congratsLabel.text = @"Pretty Boss";
            self.imageView.image = [UIImage imageNamed:@"TrumpBoss"];
            [self playSound:@"cringe"];
            break;
        case 4:
            self.congratsLabel.text = @"Atta boy!";
            self.imageView.image = [UIImage imageNamed:@"TrumpThumbs"];
            [self playSound:@"cringe"];
            break;
        case 5:
            self.congratsLabel.text = @"You know Trump like the back of his tiny hand";
            self.imageView.image = [UIImage imageNamed:@"Trump1"];
            [self playSound:@"greatagain"];
            break;
        default:
            NSLog (@"Integer out of range");
            break;
    }
}

- (void) playSound: (NSString*) play {
    SystemSoundID audioEffect;
    NSString *path;
    if ([play  isEqual: @"stupid"]) {
        path = [[NSBundle mainBundle] pathForResource : @"stupid" ofType :@"mp3"];
    } else if ([play  isEqual: @"greatagain"]) {
        path = [[NSBundle mainBundle] pathForResource : @"greatagain" ofType :@"mp3"];
    } else if ([play  isEqual: @"cringe"]) {
        path = [[NSBundle mainBundle] pathForResource : @"cringe" ofType :@"mp3"];
    }
    
    
    if ([[NSFileManager defaultManager] fileExistsAtPath : path]) {
        NSURL *pathURL = [NSURL fileURLWithPath: path];
        AudioServicesCreateSystemSoundID((__bridge CFURLRef) pathURL, &audioEffect);
        AudioServicesPlaySystemSound(audioEffect);
    }
    else {
        NSLog(@"error, file not found: %@", path);
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
