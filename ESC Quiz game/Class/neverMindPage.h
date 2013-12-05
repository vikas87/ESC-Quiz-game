//
//  neverMindPage.h
//  ESC Quiz game
//
//  Created by INMUBPHG2103 on 02/12/13.
//  Copyright (c) 2013 watermelon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "gameSatrtPage.h"
#import <MediaPlayer/MediaPlayer.h>

@interface neverMindPage : UIViewController
{
    IBOutlet UIButton *homeBtn;
     MPMoviePlayerController *player;
}
- (IBAction)homeAction:(id)sender;
@end
