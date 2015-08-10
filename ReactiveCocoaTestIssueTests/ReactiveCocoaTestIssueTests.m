//
//  ReactiveCocoaTestIssueTests.m
//  ReactiveCocoaTestIssueTests
//
//  Created by Sébastien Duperron on 10/08/2015.
//  Copyright © 2015 Liquidsoul. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <ReactiveCocoa/ReactiveCocoa.h>

#import "ViewModel.h"

@interface ReactiveCocoaTestIssueTests : XCTestCase

@end

@implementation ReactiveCocoaTestIssueTests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testExecute {
	ViewModel *viewModel = [ViewModel new];
	[viewModel.executeSearch execute:nil];
}

@end
