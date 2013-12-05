//
//  MainViewController.h
//  ESC Quiz game
//
//  Created by INMUBPHG2103 on 29/11/13.
//  Copyright (c) 2013 watermelon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#include <AudioToolbox/AudioToolbox.h>
#include "almostThere.h"
#import "congratPage.h"
#import "neverMindPage.h"
@interface MainViewController : UIViewController{
    
//    int r = arc4random();
    NSMutableArray *dataArray;
    int r,page,calAns,num, value1,value2,value3,value4,value5,value6;
    Boolean b;
    IBOutlet UIButton *quetionBtn;
    IBOutlet UIButton *optionABtn;
    IBOutlet UIButton *optionBBtn;
    IBOutlet UIButton *optionCBtn;
    IBOutlet UIButton *optionDBtn;
    
    IBOutlet UIImageView *clotImageView;
    IBOutlet UIImageView *ImageView;
    
    IBOutlet UIButton *nextBtn;
    
    AVAudioPlayer *myAudioPlayer;
}
- (IBAction)gotoNext:(id)sender;
- (IBAction)optionAEvent:(id)sender;
- (IBAction)optionBEvent:(id)sender;
- (IBAction)optionCEvent:(id)sender;
- (IBAction)optionDEvent:(id)sender;

@property(nonatomic,retain)IBOutlet UIButton *quetionBtn;
@property(nonatomic,retain)IBOutlet UIButton *optionABtn;
@property(nonatomic,retain)IBOutlet UIButton *optionBBtn;
@property(nonatomic,retain)IBOutlet UIButton *optionCBtn;
@property(nonatomic,retain)IBOutlet UIButton *optionDBtn;
@property(nonatomic,retain)IBOutlet UIImageView *clotImageView;
@property(nonatomic,retain)IBOutlet UIImageView *ImageView;
@property(readwrite, assign) int r;
@property(readwrite, assign) int calAns;
@property (nonatomic, retain) AVAudioPlayer *myAudioPlayer;

@end
