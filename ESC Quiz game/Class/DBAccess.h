//
//  DBAccess.h
//  sqlitedemo1
//
//  Created by rutger_i on 3/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sqlite3.h>

@interface DBAccess : NSObject
+ (NSString *) getDBPath;
+ (void) copyDatabaseIfNeeded;

- (NSArray *) getQuetion;
@end
