//
//  ViewController.m
//  ReactiveCocoaTestIssue
//
//  Created by Sébastien Duperron on 10/08/2015.
//  Copyright © 2015 Liquidsoul. All rights reserved.
//

#import "ViewController.h"

#import "ViewModel.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIButton *goButton;

@property (strong, nonatomic) ViewModel *viewModel;

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];

	[self bindViewModel];
}

- (void)bindViewModel {
	self.viewModel = [ViewModel new];

	RAC(self.viewModel, searchText) = self.textField.rac_textSignal;
	RAC([UIApplication sharedApplication], networkActivityIndicatorVisible) = self.viewModel.executeSearch.executing;
	self.goButton.rac_command = self.viewModel.executeSearch;
}

@end
