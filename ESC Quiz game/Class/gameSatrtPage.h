//
//  gameSatrtPage.h
//  ESC Quiz game
//
//  Created by INMUBPHG2103 on 02/12/13.
//  Copyright (c) 2013 watermelon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainViewController.h"
#import "instructionMainPage.h"
@interface gameSatrtPage : UIViewController{
    IBOutlet UIButton *playGame;
    IBOutlet UIButton *instruction;
}
- (IBAction)playGame:(id)sender;
- (IBAction)instructionAction:(id)sender;

@end
