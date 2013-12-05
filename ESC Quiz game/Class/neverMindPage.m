//
//  neverMindPage.m
//  ESC Quiz game
//
//  Created by INMUBPHG2103 on 02/12/13.
//  Copyright (c) 2013 watermelon. All rights reserved.
//

#import "neverMindPage.h"

@interface neverMindPage ()

@end

@implementation neverMindPage

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if (interfaceOrientation==UIInterfaceOrientationLandscapeLeft || interfaceOrientation==UIInterfaceOrientationLandscapeRight)
        return YES;
    
    return NO;
}
- (void)moviePlayBackDidFinish:(NSNotification*)notification
{
    [player stop];
    gameSatrtPage *gameSatrtPageObj=[[gameSatrtPage alloc]init];
    [self.navigationController pushViewController:gameSatrtPageObj animated:NO];
    
}

- (BOOL)prefersStatusBarHidden
{
    return YES;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    NSURL *movieURL=[[NSBundle mainBundle] URLForResource:@"02" withExtension:@"mp4"];
    
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

- (IBAction)homeAction:(id)sender {
    
    
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"gfgf" message:@"fdsgfd" delegate:self cancelButtonTitle:@"hgjhgkjh" otherButtonTitles:nil, nil];
    [alert show];
}
@end
