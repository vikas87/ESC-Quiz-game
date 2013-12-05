//
//  instructionMainPage.h
//  ESC Quiz game
//
//  Created by INMUBPHG2103 on 03/12/13.
//  Copyright (c) 2013 watermelon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "intructionNextPage.h"
@interface instructionMainPage : UIViewController
{
    IBOutlet UIButton *nextBtn;
}
- (IBAction)gotoNext:(id)sender;
@end
