//
//  «FILENAME»
//  «PROJECTNAME»
//
//  Created by «FULLUSERNAME» on «DATE».
//  Copyright «YEAR» «ORGANIZATIONNAME». All rights reserved.
//

#import <GHUnitIOS/GHUnit.h>

@interface «FILEBASENAMEASIDENTIFIER» : GHAsyncTestCase { }
@end

@implementation «FILEBASENAMEASIDENTIFIER»

- (void)setUp {
	// Run before each test method
}

- (void)tearDown {
	// Run after each test method
}

- (void)testMyTest {
	// You need to call prepare for asynchronous test cases:
	[self prepare];

	// invoke your asynchronous call

	// wait for asynch result:
	[self waitForStatus:kGHUnitWaitStatusSuccess timeout:2.0];
}

// call notify inside your asynch callback:
- (void)someAsynchDelegate:id results {
	if (results == nil) {
		[self notify:kGHUnitWaitStatusFailure];
	}
	else {
		NSLog(@"Result: %@", results);
		[self notify:kGHUnitWaitStatusSuccess];
	}
}

@end

