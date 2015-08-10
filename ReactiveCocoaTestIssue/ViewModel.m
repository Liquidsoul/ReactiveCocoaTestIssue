//
//  ViewModel.m
//  ReactiveCocoaTestIssue
//
//  Created by Sébastien Duperron on 10/08/2015.
//  Copyright © 2015 Liquidsoul. All rights reserved.
//

#import "ViewModel.h"

@implementation ViewModel

- (instancetype)init {
	if (self = [super init]) {
		[self initialize];
	}
	return self;
}

- (void)initialize {
	RACSignal *validSearchSignal =
	[[RACObserve(self, searchText)
	  map:^id(NSString *text) {
		  return @(text.length > 3);
	  }]
	 distinctUntilChanged];

	self.executeSearch = [[RACCommand alloc] initWithEnabled:validSearchSignal signalBlock:^RACSignal *(id input) {
		return [self executeSearchSignal];
	}];
}

- (RACSignal *)executeSearchSignal {
	return [[[[RACSignal empty] logAll] delay:2.0] logAll];
}

@end
