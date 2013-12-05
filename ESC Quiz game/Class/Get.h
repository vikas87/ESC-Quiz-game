//
//  Patient.h
//  sqlitedemo1
//
//  Created by rutger_i on 3/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Get : NSObject

@property(nonatomic, readwrite) int qId;
@property(nonatomic, retain) NSString *quetion1;
@property(nonatomic, retain) NSString *optionA;
@property(nonatomic, retain) NSString *optionB;
@property(nonatomic, retain) NSString *optionC;
@property(nonatomic, retain) NSString *optionD;
@property(nonatomic, retain) NSString *finalAns;

@end
