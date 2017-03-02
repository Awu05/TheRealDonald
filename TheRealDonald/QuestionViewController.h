//
//  QuestionViewController.h
//  TheRealDonald
//
//  Created by Andy Wu on 3/2/17.
//  Copyright © 2017 Andy Wu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DAO.h"
#import "NewsFormat.h"

@class ResultsViewController;

@interface QuestionViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@property (weak, nonatomic) IBOutlet UILabel *headlineLabel;

@property int questionCount;

@property int correctAnswers;

@property NewsFormat *currentQuestion;

@property DAO *dao;

@property ResultsViewController *resultsVC;

@end
