//
//  MainViewController.m
//  ESC Quiz game
//
//  Created by INMUBPHG2103 on 29/11/13.
//  Copyright (c) 2013 watermelon. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

@dynamic ImageView;
@synthesize clotImageView;
@synthesize r;
@synthesize calAns;
@synthesize quetionBtn;
@synthesize optionABtn;
@synthesize optionBBtn;
@synthesize optionCBtn;
@synthesize optionDBtn;
@synthesize myAudioPlayer;

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

- (BOOL)prefersStatusBarHidden
{
    return YES;
}


- (void)getAllData
{
    	// Do any additional setup after loading the view, typically from a nib.
    
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [[self navigationController] setNavigationBarHidden:YES animated:YES];
    
    quetionBtn.titleLabel.lineBreakMode = UILineBreakModeWordWrap;
    quetionBtn.titleLabel.textAlignment = NSTextAlignmentCenter;
    
    b = false;
     dataArray = [[NSMutableArray alloc] initWithCapacity: 22];
    
    [dataArray insertObject:[NSMutableArray arrayWithObjects:@"Which is the most common presentation of stroke in atrial fibrillation?",@"Haemorrhagic",@"Ischemic",@"mixed",@"all of the above",@"Ischemic",nil] atIndex:0];
    
    [dataArray insertObject:[NSMutableArray arrayWithObjects:@"_____% of strokes in AF are ischemic in origin?",@"20%",@"30%",@"92%",@"99%",@"92%",nil] atIndex:1];
    
    [dataArray insertObject:[NSMutableArray arrayWithObjects:@"A superior reduction in ischemic strokes versus well controlled warfarin is with?",@"apixaban",@"rivaroxaban",@"dabigatran",@"edoxaban",@"dabigatran",nil] atIndex:2];
    
    [dataArray insertObject:[NSMutableArray arrayWithObjects:@"In RE-LY, dabigatran showed a non-inferior reduction of life threatening bleedings over warfarin",@"True",@"False",@"",@"",@"False",nil] atIndex:3];
    
     [dataArray insertObject:[NSMutableArray arrayWithObjects:@"What percent of patients in RE-LY were experienced with VKA?",@"25%",@"50%",@"75%",@"80%",@"50%",nil] atIndex:4];
    
    [dataArray insertObject:[NSMutableArray arrayWithObjects:@"What is the recommended TTR (time in therapeutic range) on warfarin per ESC 2012 guideline?",@"40%",@"60%",@"70%",@"85%",@"70%",nil] atIndex:5];
    
    [dataArray insertObject:[NSMutableArray arrayWithObjects:@"Both doses of dabigatran are superior over warfarin for major bleeding in Asians",@"True",@"False",@"",@"",@"True",nil] atIndex:6];
    
    [dataArray insertObject:[NSMutableArray arrayWithObjects:@"Which agents offer a superior ICH reduction versus warfarin in SPAF?",@"apixaban",@"rivaroxaban",@"dabigatran",@"all of the above",@"all of the above",nil] atIndex:7];
    
    [dataArray insertObject:[NSMutableArray arrayWithObjects:@"Dabigatran causes a myocardial infarction",@"True",@"False",@"",@"",@"False",nil] atIndex:8];
    
    [dataArray insertObject:[NSMutableArray arrayWithObjects:@"The ESC 2012 guidelines recommend OAC for a CHA2DS2VASc score of:",@">1",@"2",@"3",@"6",@">1",nil] atIndex:9];
    
    [dataArray insertObject:[NSMutableArray arrayWithObjects:@"______ has a weak efficacy for stroke prevention in AF and is not recommended in SPAF",@"Warfarin (2-3 INR)",@"Aspirin",@"Aspirin+Clopidogrel",@"Both b and c",@"Both b and c",nil] atIndex:10];
    
    [dataArray insertObject:[NSMutableArray arrayWithObjects:@"Low dose warfarin (INR < 2) + Aspirin is effective and recommended for SPAF",@"True",@"False",@"",@"",@"False",nil] atIndex:11];
    
    [dataArray insertObject:[NSMutableArray arrayWithObjects:@"Dabigatran has been exposed to ____ patient years since its global launch?",@"5 lakh",@"15 lakh",@"20 lakh",@"25 lakh",@"20 lakh",nil] atIndex:12];
    
    [dataArray insertObject:[NSMutableArray arrayWithObjects:@"The RELY-ABLE study results showing consistent long term efficacy and safety on dabigatran are over __ years?",@"1",@"2.3",@"5",@"6.7",@"6.7",nil] atIndex:13];
    
    [dataArray insertObject:[NSMutableArray arrayWithObjects:@"Dabigatran significantly reduces the _____ mortality versus warfarin in the event of a major bleed in SPAF patients",@"immediate",@"cerebral",@"30-day",@"non-cerebral",@"30-day",nil] atIndex:14];
    
    [dataArray insertObject:[NSMutableArray arrayWithObjects:@"Dabigatran significantly reduces the in-hospital stay versus warfarin in the event of a major bleed",@"True",@"False",@"",@"",@"True",nil] atIndex:15];
    
    [dataArray insertObject:[NSMutableArray arrayWithObjects:@"The ESC 2012 guidelines recommend cardioversion can be safely performed on ______",@"apixaban",@"rivaroxaban",@"dabigatran",@"edoxaban",@"dabigatran",nil] atIndex:16];
    
    [dataArray insertObject:[NSMutableArray arrayWithObjects:@"The ______score is more accurate for assessing the stroke risk and suggested by ESC guidelines",@"CHADS2",@"HAS-BLED",@"HEMORRHAGES",@"CHA2DS2VASc",@"CHA2DS2VASc",nil] atIndex:17];
    
    [dataArray insertObject:[NSMutableArray arrayWithObjects:@"Vitamin K is an effective antidote in a bleeding patient on warfarin",@"True",@"False",@"",@"",@"False",nil] atIndex:18];
    
    [dataArray insertObject:[NSMutableArray arrayWithObjects:@"Dabigatran 110 BID is recommended in patients with age > 75 years, CrCl 30-50 ml/min, concomitant anti-platelets/ amiodarone or higher HAS-BLED score",@"True",@"False",@"",@"",@"True",nil] atIndex:19];
    
    [dataArray insertObject:[NSMutableArray arrayWithObjects:@"Dabigatran 150 BID is the recommended dose in patients with age < 75 years, CrCl > 50 ml/min, low HAS-BLED score and where ischemic stroke protection is most desirable",@"True",@"False",@"",@"",@"True",nil] atIndex:20];
    
    [dataArray insertObject:[NSMutableArray arrayWithObjects:@"In RE-LY, _____ percent of AF patients at baseline had a prior history of stroke",@"20",@"35",@"30",@"40",@"20",nil] atIndex:21];
    
    [dataArray insertObject:[NSMutableArray arrayWithObjects:@"The near sensitive test to assess the bleeding risk on dabigatran is by doing ____?",@"aPTT",@"BT",@"CT",@"INR",@"aPTT",nil] atIndex:22];
    
    
    
    //-------------------------------------- set quetion-----------------------------------------------//
    page = 1;
    calAns = 0;
         r = arc4random() % [dataArray count];
    
        [quetionBtn setTitle:[[dataArray objectAtIndex:r]objectAtIndex:0] forState:UIControlStateNormal];
        [optionABtn setTitle:[[dataArray objectAtIndex:r]objectAtIndex:1] forState:UIControlStateNormal];
        [optionBBtn setTitle:[[dataArray objectAtIndex:r]objectAtIndex:2] forState:UIControlStateNormal];
        [optionCBtn setTitle:[[dataArray objectAtIndex:r]objectAtIndex:3] forState:UIControlStateNormal];
        [optionDBtn setTitle:[[dataArray objectAtIndex:r]objectAtIndex:4] forState:UIControlStateNormal];
    
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)gotoNext:(id)sender {
    
    if (b) {
        
        b = false;
        if (calAns == 6) {
            clotImageView.hidden=YES;
        }
        if (page != 6) {
            
            [optionABtn setBackgroundImage:nil forState:UIControlStateNormal];
            [optionBBtn setBackgroundImage:nil forState:UIControlStateNormal];
            [optionCBtn setBackgroundImage:nil forState:UIControlStateNormal];
            [optionDBtn setBackgroundImage:nil forState:UIControlStateNormal];
   
            int i, j, t, array[22];
            
            for ( i = 0; i < 21; i++ ) {
                array[i] = i;
            }
            
            srandom( time(NULL) );
            for ( i = 0; i < 21; i++ ) {
                j = random() % 21;
                
                t = array[i];
                array[i] = array[j];
                array[j] = t;
            }
            
            for ( i = 0; i < 5; i++ ) {

                if (r != array[i]) {
                    
                    if (i == 0) {
                        value2 = array[i];
                    }else if (i == 1){
                        value3 = array[i];
                    }else if (i == 2){
                        value4 = array[i];
                    }else if (i == 3){
                        value5 = array[i];
                    }else if (i == 4){
                        value6 = array[i];
                    }

                }else{
//                    if (i == 0) {
//                        value2 = array[i]+1;
//                    }else if (i == 1){
//                        value3 = array[i]+1;
//                    }else if (i == 2){
//                        value4 = array[i]+1;
//                    }else if (i == 3){
//                        value5 = array[i]+1;
//                    }else if (i == 4){
//                        value6 = array[i]+1;
//                    }
                }
                
            }
            
            page = page+1;
            if (page == 6) {
                nextBtn.hidden=YES;
            }
            if (page == 2) {
                r=value2;
                [quetionBtn setTitle:[[dataArray objectAtIndex:value2]objectAtIndex:0] forState:UIControlStateNormal];
                [optionABtn setTitle:[[dataArray objectAtIndex:value2]objectAtIndex:1] forState:UIControlStateNormal];
                [optionBBtn setTitle:[[dataArray objectAtIndex:value2]objectAtIndex:2] forState:UIControlStateNormal];
                [optionCBtn setTitle:[[dataArray objectAtIndex:value2]objectAtIndex:3] forState:UIControlStateNormal];
                [optionDBtn setTitle:[[dataArray objectAtIndex:value2]objectAtIndex:4] forState:UIControlStateNormal];
            }else if (page == 3){
                r=value3;
                [quetionBtn setTitle:[[dataArray objectAtIndex:value3]objectAtIndex:0] forState:UIControlStateNormal];
                [optionABtn setTitle:[[dataArray objectAtIndex:value3]objectAtIndex:1] forState:UIControlStateNormal];
                [optionBBtn setTitle:[[dataArray objectAtIndex:value3]objectAtIndex:2] forState:UIControlStateNormal];
                [optionCBtn setTitle:[[dataArray objectAtIndex:value3]objectAtIndex:3] forState:UIControlStateNormal];
                [optionDBtn setTitle:[[dataArray objectAtIndex:value3]objectAtIndex:4] forState:UIControlStateNormal];

            }else if (page == 4){
                r=value4;
                [quetionBtn setTitle:[[dataArray objectAtIndex:value4]objectAtIndex:0] forState:UIControlStateNormal];
                [optionABtn setTitle:[[dataArray objectAtIndex:value4]objectAtIndex:1] forState:UIControlStateNormal];
                [optionBBtn setTitle:[[dataArray objectAtIndex:value4]objectAtIndex:2] forState:UIControlStateNormal];
                [optionCBtn setTitle:[[dataArray objectAtIndex:value4]objectAtIndex:3] forState:UIControlStateNormal];
                [optionDBtn setTitle:[[dataArray objectAtIndex:value4]objectAtIndex:4] forState:UIControlStateNormal];
            }else if (page == 5){
                r=value5;
                [quetionBtn setTitle:[[dataArray objectAtIndex:value5]objectAtIndex:0] forState:UIControlStateNormal];
                [optionABtn setTitle:[[dataArray objectAtIndex:value5]objectAtIndex:1] forState:UIControlStateNormal];
                [optionBBtn setTitle:[[dataArray objectAtIndex:value5]objectAtIndex:2] forState:UIControlStateNormal];
                [optionCBtn setTitle:[[dataArray objectAtIndex:value5]objectAtIndex:3] forState:UIControlStateNormal];
                [optionDBtn setTitle:[[dataArray objectAtIndex:value5]objectAtIndex:4] forState:UIControlStateNormal];
            }else if (page == 6){
                r=value6;
                [quetionBtn setTitle:[[dataArray objectAtIndex:value6]objectAtIndex:0] forState:UIControlStateNormal];
                [optionABtn setTitle:[[dataArray objectAtIndex:value6]objectAtIndex:1] forState:UIControlStateNormal];
                [optionBBtn setTitle:[[dataArray objectAtIndex:value6]objectAtIndex:2] forState:UIControlStateNormal];
                [optionCBtn setTitle:[[dataArray objectAtIndex:value6]objectAtIndex:3] forState:UIControlStateNormal];
                [optionDBtn setTitle:[[dataArray objectAtIndex:value6]objectAtIndex:4] forState:UIControlStateNormal];
            }
            
        }else{
            
            if (calAns == 5) {
                almostThere *almostThereObj=[[almostThere alloc]init];
                [self.navigationController pushViewController:almostThereObj animated:NO];
            }else if (calAns == 6){
                congratPage *congratPageObj=[[congratPage alloc]init];
                [self.navigationController pushViewController:congratPageObj animated:NO];
            }else{
                
                neverMindPage *neverMindPageObj=[[neverMindPage alloc]init];
                [self.navigationController pushViewController:neverMindPageObj animated:NO];
            }
        }

    }else{
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Alert" message:@"Select Answer First" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:Nil, nil];
        [alert show];
    }
    
}

- (IBAction)optionAEvent:(id)sender {
    
    if (!b) {
        
        b = true;
        
            if (optionABtn.currentTitle == [[dataArray objectAtIndex:r] objectAtIndex:5]) {
                
                calAns = calAns+1;
                UIImage *buttonImage = [UIImage imageNamed:@"green band.png"];
                [optionABtn setBackgroundImage:buttonImage forState:UIControlStateNormal];
                
                CGFloat height = clotImageView.frame.size.height-10;
                CGFloat width = clotImageView.frame.size.width-10;
                clotImageView.frame = CGRectMake(clotImageView.frame.origin.x, clotImageView.frame.origin.y, width, height);
                
                NSString *soundFilePath = [[NSBundle mainBundle] pathForResource:@"Correct Answer" ofType: @"mp3"];
                NSURL *fileURL = [[NSURL alloc] initFileURLWithPath:soundFilePath ];
                myAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL error:nil];
                myAudioPlayer.numberOfLoops = 0; //infinite loop
                [myAudioPlayer play];
                
                
            }else{
                
                CGFloat height = clotImageView.frame.size.height+10;
                CGFloat width = clotImageView.frame.size.width+10;
                clotImageView.frame = CGRectMake(clotImageView.frame.origin.x, clotImageView.frame.origin.y, width, height);
                
                UIImage *correctImage = [UIImage imageNamed:@"green band.png"];
                
                if (optionABtn.currentTitle == [[dataArray objectAtIndex:r] objectAtIndex:5]) {
                    [optionABtn setBackgroundImage:correctImage forState:UIControlStateNormal];
                }else if (optionBBtn.currentTitle == [[dataArray objectAtIndex:r] objectAtIndex:5]){
                    [optionBBtn setBackgroundImage:correctImage forState:UIControlStateNormal];
                }else if (optionCBtn.currentTitle == [[dataArray objectAtIndex:r] objectAtIndex:5]){
                    [optionCBtn setBackgroundImage:correctImage forState:UIControlStateNormal];
                }else if (optionDBtn.currentTitle == [[dataArray objectAtIndex:r] objectAtIndex:5]){
                    [optionDBtn setBackgroundImage:correctImage forState:UIControlStateNormal];
                }

                
                UIImage *buttonImage = [UIImage imageNamed:@"red band.png"];
                [optionABtn setBackgroundImage:buttonImage forState:UIControlStateNormal];
                
                NSString *soundFilePath = [[NSBundle mainBundle] pathForResource:@"Fail button" ofType: @"mp3"];
                NSURL *fileURL = [[NSURL alloc] initFileURLWithPath:soundFilePath ];
                myAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL error:nil];
                myAudioPlayer.numberOfLoops = 0; //infinite loop
                [myAudioPlayer play];
                }
        if (page == 6) {
            
            if (calAns == 5) {
                [NSTimer scheduledTimerWithTimeInterval:2.10
                                                 target:self
                                               selector:@selector(targetMethod:)
                                               userInfo:nil
                                                repeats:NO];
                
            }else if (calAns == 6){
                clotImageView.hidden = YES;
                
                [NSTimer scheduledTimerWithTimeInterval:2.10
                                                 target:self
                                               selector:@selector(targetMethod1:)
                                               userInfo:nil
                                                repeats:NO];
            }else{
                
                [NSTimer scheduledTimerWithTimeInterval:2.10
                                                 target:self
                                               selector:@selector(targetMethod2:)
                                               userInfo:nil
                                                repeats:NO];
                
            }
            
        }
        
    }
    
   }

- (IBAction)optionBEvent:(id)sender {
    
    if (!b) {
        
        b = true;
        if (optionBBtn.currentTitle == [[dataArray objectAtIndex:r] objectAtIndex:5]) {
            
           calAns = calAns+1;
            
            UIImage *buttonImage = [UIImage imageNamed:@"green band.png"];
            [optionBBtn setBackgroundImage:buttonImage forState:UIControlStateNormal];
            
            CGFloat height = clotImageView.frame.size.height-10;
            CGFloat width = clotImageView.frame.size.width-10;
            clotImageView.frame = CGRectMake(clotImageView.frame.origin.x, clotImageView.frame.origin.y, width, height);

            NSString *soundFilePath = [[NSBundle mainBundle] pathForResource:@"Correct Answer" ofType: @"mp3"];
            NSURL *fileURL = [[NSURL alloc] initFileURLWithPath:soundFilePath ];
            myAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL error:nil];
            myAudioPlayer.numberOfLoops = 0; //infinite loop
            [myAudioPlayer play];
            if (calAns == 6) {
                clotImageView.hidden=YES;
            }
            
            

            
        }else{
            
            

            UIImage *buttonImage = [UIImage imageNamed:@"red band.png"];
            [optionBBtn setBackgroundImage:buttonImage forState:UIControlStateNormal];
            
            CGFloat height = clotImageView.frame.size.height+10;
            CGFloat width = clotImageView.frame.size.width+10;
            clotImageView.frame = CGRectMake(clotImageView.frame.origin.x, clotImageView.frame.origin.y, width, height);
            NSString *soundFilePath = [[NSBundle mainBundle] pathForResource:@"Fail button" ofType: @"mp3"];
            NSURL *fileURL = [[NSURL alloc] initFileURLWithPath:soundFilePath ];
            myAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL error:nil];
            myAudioPlayer.numberOfLoops = 0; //infinite loop
            [myAudioPlayer play];
            
       
            
            UIImage *correctImage = [UIImage imageNamed:@"green band.png"];
            
            if (optionABtn.currentTitle == [[dataArray objectAtIndex:r] objectAtIndex:5]) {
                [optionABtn setBackgroundImage:correctImage forState:UIControlStateNormal];
            }else if (optionBBtn.currentTitle == [[dataArray objectAtIndex:r] objectAtIndex:5]){
                [optionBBtn setBackgroundImage:correctImage forState:UIControlStateNormal];
            }else if (optionCBtn.currentTitle == [[dataArray objectAtIndex:r] objectAtIndex:5]){
                [optionCBtn setBackgroundImage:correctImage forState:UIControlStateNormal];
            }else if (optionDBtn.currentTitle == [[dataArray objectAtIndex:r] objectAtIndex:5]){
                [optionDBtn setBackgroundImage:correctImage forState:UIControlStateNormal];
            }

        }
        if (page == 6) {

            if (calAns == 5) {
                [NSTimer scheduledTimerWithTimeInterval:2.10
                                                 target:self
                                               selector:@selector(targetMethod:)
                                               userInfo:nil
                                                repeats:NO];

            }else if (calAns == 6){
                clotImageView.hidden = YES;
                
                [NSTimer scheduledTimerWithTimeInterval:2.10
                                                 target:self
                                               selector:@selector(targetMethod1:)
                                               userInfo:nil
                                                repeats:NO];
            }else{
                
                [NSTimer scheduledTimerWithTimeInterval:5.0
                                                 target:self
                                               selector:@selector(targetMethod2:)
                                               userInfo:nil
                                                repeats:NO];
                
            }

        }
    }
    
   
}

- (IBAction)optionCEvent:(id)sender {
    
    if (!b) {
        
        b = true;
        
            if (optionCBtn.currentTitle == [[dataArray objectAtIndex:r] objectAtIndex:5]) {
                
                calAns = calAns+1;
                
                UIImage *buttonImage = [UIImage imageNamed:@"green band.png"];
                [optionCBtn setBackgroundImage:buttonImage forState:UIControlStateNormal];
                
                CGFloat height = clotImageView.frame.size.height-10;
                CGFloat width = clotImageView.frame.size.width-10;
                clotImageView.frame = CGRectMake(clotImageView.frame.origin.x, clotImageView.frame.origin.y, width, height);
                
                NSString *soundFilePath = [[NSBundle mainBundle] pathForResource:@"Correct Answer" ofType: @"mp3"];
                NSURL *fileURL = [[NSURL alloc] initFileURLWithPath:soundFilePath ];
                myAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL error:nil];
                myAudioPlayer.numberOfLoops = 0; //infinite loop
                [myAudioPlayer play];
                if (calAns == 6) {
                    clotImageView.hidden=YES;
                }
                
               
                
            }else{
                


                UIImage *buttonImage = [UIImage imageNamed:@"red band.png"];
                [optionCBtn setBackgroundImage:buttonImage forState:UIControlStateNormal];
                CGFloat height = clotImageView.frame.size.height+10;
                CGFloat width = clotImageView.frame.size.width+10;
                clotImageView.frame = CGRectMake(clotImageView.frame.origin.x, clotImageView.frame.origin.y, width, height);
                NSString *soundFilePath = [[NSBundle mainBundle] pathForResource:@"Fail button" ofType: @"mp3"];
                NSURL *fileURL = [[NSURL alloc] initFileURLWithPath:soundFilePath ];
                myAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL error:nil];
                myAudioPlayer.numberOfLoops = 0; //infinite loop
                [myAudioPlayer play];
                
                
                UIImage *correctImage = [UIImage imageNamed:@"green band.png"];
                
                if (optionABtn.currentTitle == [[dataArray objectAtIndex:r] objectAtIndex:5]) {
                    [optionABtn setBackgroundImage:correctImage forState:UIControlStateNormal];
                }else if (optionBBtn.currentTitle == [[dataArray objectAtIndex:r] objectAtIndex:5]){
                    [optionBBtn setBackgroundImage:correctImage forState:UIControlStateNormal];
                }else if (optionCBtn.currentTitle == [[dataArray objectAtIndex:r] objectAtIndex:5]){
                    [optionCBtn setBackgroundImage:correctImage forState:UIControlStateNormal];
                }else if (optionDBtn.currentTitle == [[dataArray objectAtIndex:r] objectAtIndex:5]){
                    [optionDBtn setBackgroundImage:correctImage forState:UIControlStateNormal];
                }
            }
        if (page == 6) {
            
            if (calAns == 5) {
                [NSTimer scheduledTimerWithTimeInterval:2.10
                                                 target:self
                                               selector:@selector(targetMethod:)
                                               userInfo:nil
                                                repeats:NO];
            }else if (calAns == 6){
                clotImageView.hidden = YES;
                
                [NSTimer scheduledTimerWithTimeInterval:2.10
                                                 target:self
                                               selector:@selector(targetMethod1:)
                                               userInfo:nil
                                                repeats:NO];
            }else{
                
                [NSTimer scheduledTimerWithTimeInterval:5.0
                                                 target:self
                                               selector:@selector(targetMethod2:)
                                               userInfo:nil
                                                repeats:NO];
            }
            
        }
        if (page == 6) {
            nextBtn.hidden = YES;
        }
    }
   
}

- (IBAction)optionDEvent:(id)sender {
    
    if (!b) {
        
        b = true;
        
        if (optionDBtn.currentTitle == [[dataArray objectAtIndex:r] objectAtIndex:5]) {
            
            calAns = calAns+1;
            
            UIImage *buttonImage = [UIImage imageNamed:@"green band.png"];
            [optionDBtn setBackgroundImage:buttonImage forState:UIControlStateNormal];
            
            CGFloat height = clotImageView.frame.size.height-10;
            CGFloat width = clotImageView.frame.size.width-10;
            clotImageView.frame = CGRectMake(clotImageView.frame.origin.x, clotImageView.frame.origin.y, width, height);
            
            NSString *soundFilePath = [[NSBundle mainBundle] pathForResource:@"Correct Answer" ofType: @"mp3"];
            NSURL *fileURL = [[NSURL alloc] initFileURLWithPath:soundFilePath ];
            myAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL error:nil];
            myAudioPlayer.numberOfLoops = 0; //infinite loop
            [myAudioPlayer play];
            
            if (calAns == 6) {
                clotImageView.hidden=YES;
            }
            
           


        }else{
            
            UIImage *correctImage = [UIImage imageNamed:@"green band.png"];
            
            if (optionABtn.currentTitle == [[dataArray objectAtIndex:r] objectAtIndex:5]) {
                [optionABtn setBackgroundImage:correctImage forState:UIControlStateNormal];
            }else if (optionBBtn.currentTitle == [[dataArray objectAtIndex:r] objectAtIndex:5]){
                [optionBBtn setBackgroundImage:correctImage forState:UIControlStateNormal];
            }else if (optionCBtn.currentTitle == [[dataArray objectAtIndex:r] objectAtIndex:5]){
                [optionCBtn setBackgroundImage:correctImage forState:UIControlStateNormal];
            }else if (optionDBtn.currentTitle == [[dataArray objectAtIndex:r] objectAtIndex:5]){
                [optionDBtn setBackgroundImage:correctImage forState:UIControlStateNormal];
            }

            UIImage *buttonImage = [UIImage imageNamed:@"red band.png"];
            [optionDBtn setBackgroundImage:buttonImage forState:UIControlStateNormal];
            
            CGFloat height = clotImageView.frame.size.height+10;
            CGFloat width = clotImageView.frame.size.width+10;
            clotImageView.frame = CGRectMake(clotImageView.frame.origin.x, clotImageView.frame.origin.y, width, height);
            NSString *soundFilePath = [[NSBundle mainBundle] pathForResource:@"Fail button" ofType: @"mp3"];
            NSURL *fileURL = [[NSURL alloc] initFileURLWithPath:soundFilePath ];
            myAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL error:nil];
            myAudioPlayer.numberOfLoops = 0; //infinite loop
            [myAudioPlayer play];
            
           
        }
        if (page == 6) {
            nextBtn.hidden=YES;

            if (calAns == 5) {
                
                [NSTimer scheduledTimerWithTimeInterval:2.10
                                                 target:self
                                               selector:@selector(targetMethod:)
                                               userInfo:nil
                                                repeats:NO];
            }else if (calAns == 6){
                clotImageView.hidden = YES;
                
                [NSTimer scheduledTimerWithTimeInterval:2.10
                                                 target:self
                                               selector:@selector(targetMethod1:)
                                               userInfo:nil
                                                repeats:NO];

            }else{
                
                [NSTimer scheduledTimerWithTimeInterval:5.0
                                                 target:self
                                               selector:@selector(targetMethod2:)
                                               userInfo:nil
                                                repeats:NO];

            }

            
        }

    }
  }

-(void)viewWillAppear:(BOOL)animated{
    if (page == 6) {
        NSLog(@"i am here");
        ImageView.image = [UIImage imageNamed:@"Backgraound with logo.png"];
        nextBtn.hidden=YES;
    }
    
}
- (void) targetMethod:(NSTimer*)timer
{
    almostThere *almostThereObj=[[almostThere alloc]init];
    [self.navigationController pushViewController:almostThereObj animated:NO];
}
- (void) targetMethod1:(NSTimer*)timer
{
    congratPage *congratPageObj=[[congratPage alloc]init];
    [self.navigationController pushViewController:congratPageObj animated:NO];
}
- (void) targetMethod2:(NSTimer*)timer
{
    neverMindPage *neverMindPageObj=[[neverMindPage alloc]init];
    [self.navigationController pushViewController:neverMindPageObj animated:NO];
}
@end
