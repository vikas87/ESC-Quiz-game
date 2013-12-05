//
//  landingPage.m
//  ESC Quiz game
//
//  Created by INMUBPHG2103 on 02/12/13.
//  Copyright (c) 2013 watermelon. All rights reserved.
//

#import "landingPage.h"

@interface landingPage ()

@end

@implementation landingPage

- (BOOL)prefersStatusBarHidden
{
    return YES;
}
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if (interfaceOrientation==UIInterfaceOrientationLandscapeLeft || interfaceOrientation==UIInterfaceOrientationLandscapeRight)
        return YES;
    
    return NO;
}
- (void)moviePlayBackDidFinish:(NSNotification*)notification
{
    
    gameSatrtPage *gameSatrtPageObj=[[gameSatrtPage alloc]init];
    [self.navigationController pushViewController:gameSatrtPageObj animated:NO];
    
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [[self navigationController] setNavigationBarHidden:YES animated:YES];
    NSURL *movieURL=[[NSBundle mainBundle] URLForResource:@"Quiz" withExtension:@"mp4"];
    
    player = [[MPMoviePlayerController alloc] initWithContentURL:movieURL];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(moviePlayBackDidFinish:)
                                                 name:MPMoviePlayerPlaybackDidFinishNotification
                                               object:player];
    
    [player setContentURL:movieURL];
    [player setMovieSourceType:MPMovieSourceTypeFile];
    
    [[player view] setFrame:CGRectMake(0, 0, 1024, 768)];
    
    player.scalingMode = MPMovieScalingModeNone;
    player.controlStyle = MPMovieControlModeDefault;
    player.backgroundView.backgroundColor = [UIColor whiteColor];
    player.repeatMode = MPMovieRepeatModeNone;
    [self.view addSubview: [player view]];
    [player play];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
