//
//  DBAccess.m
//  sqlitedemo1
//
//  Created by rutger_i on 3/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DBAccess.h"
#import "Get.h"

@implementation DBAccess

#pragma mark Class functions
+ (NSString *) getDBPath {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory , NSUserDomainMask, YES);
	NSString *documentsDir = [paths objectAtIndex:0];
	return [documentsDir stringByAppendingPathComponent:@"quetionDB.sqlite3"];
}

+ (void) copyDatabaseIfNeeded {
	NSFileManager *fileManager = [NSFileManager defaultManager];
	NSError *error;
	NSString *dbPath = [DBAccess getDBPath];
	BOOL success = [fileManager fileExistsAtPath:dbPath];
	
	if(!success) {
		
		NSString *defaultDBPath = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"quetionDB.sqlite3"];
		success = [fileManager copyItemAtPath:defaultDBPath toPath:dbPath error:&error];
		
		if (!success)
			NSAssert1(0, @"Failed to create writable database file with message '%@'.", [error localizedDescription]);
	}
}


#pragma mark Database Query functions

- (NSArray *) getQuetion
{
    
    sqlite3 *database;
    sqlite3_open([[DBAccess getDBPath] UTF8String], &database);
    NSMutableArray *result = [[NSMutableArray alloc]init] ;

    NSString *sql = @"SELECT  * FROM quiz";
    sqlite3_stmt * statement;

    int sqlResult = sqlite3_prepare_v2(database, [sql UTF8String], -1, &statement, NULL);

    if(sqlResult == SQLITE_OK)
    {        
        while(sqlite3_step(statement) == SQLITE_ROW)
        {
            Get *p = [[Get alloc] init];
            [p setQId: sqlite3_column_int(statement, 0)];
            [p setQuetion1:[NSString stringWithUTF8String:(char *) sqlite3_column_text(statement, 1)]];
            [p setOptionA:[NSString stringWithUTF8String:(char *) sqlite3_column_text(statement, 2)]];
            [p setOptionB:[NSString stringWithUTF8String:(char *) sqlite3_column_text(statement, 3)]];
            [p setOptionC:[NSString stringWithUTF8String:(char *) sqlite3_column_text(statement, 4)]];
            [p setOptionD:[NSString stringWithUTF8String:(char *) sqlite3_column_text(statement, 5)]];
            [p setFinalAns:[NSString stringWithUTF8String:(char *) sqlite3_column_text(statement, 6)]];
        
            [result addObject: p];
        }
    } else
    {
        result = nil;
        printf( "could not prepare statemnt: %s\n", sqlite3_errmsg(database) ); 
    }
    
    sqlite3_reset(statement);
    sqlite3_finalize(statement);

    sqlite3_close(database);

    return result;
}

@end
