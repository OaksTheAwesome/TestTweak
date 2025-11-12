#import <Foundation/Foundation.h>
#import "TSTRootListController.h"

@implementation TSTRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
	}

	return _specifiers;
}

- (void)openGithub {
	[[UIApplication sharedApplication]
	openURL:[NSURL URLWithString:@"http://github.com/theos"]
	options:@{}
	completionHandler:nil];
}

@end
