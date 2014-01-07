//
//  AlwaysClear.xm
//  AlwaysClear
//
//  Created by Ryan Burke on 06.01.2014.
//  Copyright (c) 2014 Ryan Burke. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <substrate.h>

%group main

%hook SBNotificationsSectionHeaderView

-(void)_setShowsClear:(BOOL)clear animated:(BOOL)animated {
	animated = NO;
	clear = YES;
	%orig;
}

%end

%end


%ctor {
	@autoreleasepool {
		%init(main);
	}
}
