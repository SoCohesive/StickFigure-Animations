//
//  ViewController.m
//  StickFigure_TestAnimation
//
//  Created by Sonam Dhingra on 6/7/13.
//  Copyright (c) 2013 Sonam Dhingra. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSMutableArray *cheersImagesArray;
    NSArray *karateKickImagesArray;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cheersButton:(id)sender {
    
    
    cheersImagesArray = [ NSMutableArray array];
    
    for  ( int i=101; i<=132; i++) {
        [cheersImagesArray addObject:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"Cheer_Test%d",i] ofType:@"png" ]]];
        
    }
    
    self.animationView.animationImages = cheersImagesArray;
    self.animationView.animationDuration = 3.7f;
    self.stillStickFigureImageView.alpha = 0;
    
    [self.animationView startAnimating];
    
    
}

- (IBAction)karateKickButton:(id)sender {
    
    // technique: add image frame by frame
    karateKickImagesArray = [NSArray arrayWithObjects:
                             [UIImage imageNamed:@"KickAnimation_Images01.png"],[UIImage imageNamed:@"KickAnimation_Images02.png"],[UIImage imageNamed:@"KickAnimation_Images03.png"],[UIImage imageNamed:@"KickAnimation_Images04.png"],[UIImage imageNamed:@"KickAnimation_Images05.png"],[UIImage imageNamed:@"KickAnimation_Images06.png"],[UIImage imageNamed:@"KickAnimation_Images07.png"],[UIImage imageNamed:@"KickAnimation_Images08.png"],[UIImage imageNamed:@"KickAnimation_Images09.png"],[UIImage imageNamed:@"KickAnimation_Images10.png"],[UIImage imageNamed:@"KickAnimation_Images11.png"],[UIImage imageNamed:@"KickAnimation_Images12.png"],[UIImage imageNamed:@"KickAnimation_Images13.png"],[UIImage imageNamed:@"KickAnimation_Images14.png"],[UIImage imageNamed:@"KickAnimation_Images15.png"],[UIImage imageNamed:@"KickAnimation_Images16.png"],[UIImage imageNamed:@"KickAnimation_Images17.png"],[UIImage imageNamed:@"KickAnimation_Images18.png"],[UIImage imageNamed:@"KickAnimation_Images19.png"],nil];
   
    self.animationView.animationImages = karateKickImagesArray;
    self.animationView.animationDuration = 1.3f;
    self.stillStickFigureImageView.alpha = 0;
    
    [self.animationView startAnimating];
    
}
- (IBAction)stopFreddyButton:(id)sender {
    
    [self.animationView stopAnimating];
    self.stillStickFigureImageView.alpha=1;
}
@end
