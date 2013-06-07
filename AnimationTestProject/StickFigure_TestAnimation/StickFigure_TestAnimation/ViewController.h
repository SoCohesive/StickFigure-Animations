//
//  ViewController.h
//  StickFigure_TestAnimation
//
//  Created by Sonam Dhingra on 6/7/13.
//  Copyright (c) 2013 Sonam Dhingra. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>

@interface ViewController : UIViewController 


@property (weak, nonatomic) IBOutlet UIImageView *imageView;
- (IBAction)cheersButton:(id)sender;
- (IBAction)karateKickButton:(id)sender;

@property (weak, nonatomic) IBOutlet UIImageView *animationView;
@property (weak, nonatomic) IBOutlet UIImageView *stillStickFigureImageView;
- (IBAction)stopFreddyButton:(id)sender;


@end
