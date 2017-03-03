//
//  ResultsViewController.h
//  TheRealDonald
//
//  Created by Andy Wu on 3/2/17.
//  Copyright © 2017 Andy Wu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DAO.h"
#import "ViewController.h"
#import <AudioToolbox/AudioToolbox.h>
#import <AVFoundation/AVFoundation.h>

@interface ResultsViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (weak, nonatomic) IBOutlet UILabel *congratsLabel;

@property DAO *dao;

@end
