//
//  ViewModel.h
//  ReactiveCocoaTestIssue
//
//  Created by Sébastien Duperron on 10/08/2015.
//  Copyright © 2015 Liquidsoul. All rights reserved.
//

@import Foundation;
#import <ReactiveCocoa/ReactiveCocoa.h>

@interface ViewModel : NSObject

@property (strong, nonatomic) NSString *searchText;

@property (strong, nonatomic) RACCommand *executeSearch;

@end
