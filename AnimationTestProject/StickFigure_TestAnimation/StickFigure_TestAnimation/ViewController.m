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
    NSArray *cheersImagesArray; 
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
    cheersImagesArray = [NSArray arrayWithObjects:
                         [UIImage imageNamed:@"Cheer_Test101.png"],[UIImage imageNamed:@"Cheer_Test102.png"],[UIImage imageNamed:@"Cheer_Test103.png"],[UIImage imageNamed:@"Cheer_Test104.png"],[UIImage imageNamed:@"Cheer_Test105.png"],[UIImage imageNamed:@"Cheer_Test106.png"],[UIImage imageNamed:@"Cheer_Test107.png"],[UIImage imageNamed:@"Cheer_Test108.png"],[UIImage imageNamed:@"Cheer_Test109.png"],[UIImage imageNamed:@"Cheer_Test110.png"],[UIImage imageNamed:@"Cheer_Test111.png"],[UIImage imageNamed:@"Cheer_Test112.png"],[UIImage imageNamed:@"Cheer_Test113.png"],[UIImage imageNamed:@"Cheer_Test114.png"],[UIImage imageNamed:@"Cheer_Test115.png"],[UIImage imageNamed:@"Cheer_Test116.png"],[UIImage imageNamed:@"Cheer_Test117.png"],[UIImage imageNamed:@"Cheer_Test118.png"],[UIImage imageNamed:@"Cheer_Test119.png"],[UIImage imageNamed:@"Cheer_Test120.png"],[UIImage imageNamed:@"Cheer_Test121.png"],[UIImage imageNamed:@"Cheer_Test122.png"],[UIImage imageNamed:@"Cheer_Test123.png"],[UIImage imageNamed:@"Cheer_Test124.png"],[UIImage imageNamed:@"Cheer_Test125.png"],[UIImage imageNamed:@"Cheer_Test126.png"],[UIImage imageNamed:@"Cheer_Test127.png"],[UIImage imageNamed:@"Cheer_Test128.png"], [UIImage imageNamed:@"Cheer_Test129.png"],[UIImage imageNamed:@"Cheer_Test130.png"],[UIImage imageNamed:@"Cheer_Test131.png"],[UIImage imageNamed:@"Cheer_Test132.png"],nil];
    
    self.cheersAnimationView.animationImages = cheersImagesArray;
    self.cheersAnimationView.animationDuration = 5.0f;
    self.stillStickFigureImageView.alpha = 0;
    
    [self.cheersAnimationView startAnimating];
    
    
}

- (IBAction)karateKickButton:(id)sender {
    
    NSString *thePath=[[NSBundle mainBundle] pathForResource:@"StickFigure_KarateKickVid" ofType:@"mov"];
    NSURL *url=[NSURL fileURLWithPath:thePath];
//    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
//    
//    [self.kickWebView loadRequest:urlRequest];
    
MPMoviePlayerController *kickVideo = [[MPMoviePlayerController alloc] initWithContentURL:url];
kickVideo.view.frame= CGRectMake(self.cheersAnimationView.frame.origin.x,self.cheersAnimationView.frame.origin.x,self.cheersAnimationView.frame.size.width, self.cheersAnimationView.frame.size.height);
    [kickVideo backgroundView];

    [kickVideo prepareToPlay];
    [kickVideo setShouldAutoplay:YES];
    [self.view addSubview:kickVideo.view];
    [kickVideo play];
    
}
- (IBAction)stopFreddyButton:(id)sender {
    
    [self.cheersAnimationView stopAnimating];
    self.stillStickFigureImageView.alpha=1;
}
@end
