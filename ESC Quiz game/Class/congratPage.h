//
//  congratPage.h
//  ESC Quiz game
//
//  Created by INMUBPHG2103 on 02/12/13.
//  Copyright (c) 2013 watermelon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "gameSatrtPage.h"
#import <AVFoundation/AVFoundation.h>
#include <AudioToolbox/AudioToolbox.h>

@interface congratPage : UIViewController
{
    IBOutlet UIButton *homeBtn;
    AVAudioPlayer *myAudioPlayer;
}
- (IBAction)homeAction:(id)sender;
@property (nonatomic, retain) AVAudioPlayer *myAudioPlayer;
@end
