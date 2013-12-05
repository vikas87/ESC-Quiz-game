//
//  gameSatrtPage.m
//  ESC Quiz game
//
//  Created by INMUBPHG2103 on 02/12/13.
//  Copyright (c) 2013 watermelon. All rights reserved.
//

#import "gameSatrtPage.h"

@interface gameSatrtPage ()

@end

@implementation gameSatrtPage

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)playGame:(id)sender {
    
    MainViewController *MainViewControllerObj=[[MainViewController alloc]init];
    [self.navigationController pushViewController:MainViewControllerObj animated:NO];
}

- (IBAction)instructionAction:(id)sender {
    
    instructionMainPage *instructionPageObj=[[instructionMainPage alloc]init];
    [self.navigationController pushViewController:instructionPageObj animated:NO];
}
@end
