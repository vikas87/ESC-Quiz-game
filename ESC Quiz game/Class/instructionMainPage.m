//
//  instructionMainPage.m
//  ESC Quiz game
//
//  Created by INMUBPHG2103 on 03/12/13.
//  Copyright (c) 2013 watermelon. All rights reserved.
//

#import "instructionMainPage.h"

@interface instructionMainPage ()

@end

@implementation instructionMainPage
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
    [[self navigationController] setNavigationBarHidden:YES animated:YES];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)gotoNext:(id)sender {
    intructionNextPage *MainViewControllerObj=[[intructionNextPage alloc]init];
    [self.navigationController pushViewController:MainViewControllerObj animated:NO];

}
@end
