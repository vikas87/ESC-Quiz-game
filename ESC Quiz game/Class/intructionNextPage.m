//
//  intructionNextPage.m
//  ESC Quiz game
//
//  Created by INMUBPHG2103 on 03/12/13.
//  Copyright (c) 2013 watermelon. All rights reserved.
//

#import "intructionNextPage.h"
#import "gameSatrtPage.h"

@interface intructionNextPage ()

@end

@implementation intructionNextPage

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

- (IBAction)gotoHome:(id)sender {
    
    gameSatrtPage *instructionPageObj=[[gameSatrtPage alloc]init];
    [self.navigationController pushViewController:instructionPageObj animated:NO];
}
@end
