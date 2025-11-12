#import <UIKit/UIKit.h>

@interface SBHomeScreenViewController : UIViewController
@end

static BOOL isEnabled;

%hook SBHomeScreenViewController

-(void)viewDidLoad {

	//Loads Prefs
	NSUserDefaults *bundleDefaults = [[NSUserDefaults alloc] initWithSuiteName:@"com.oakstheawesome.testprefs"];
	//Enabled/Disabled Switch
	isEnabled = [bundleDefaults objectForKey:@"isEnabled"] ? [bundleDefaults boolForKey:@"isEnabled"] : YES;
	
	//Runs if tweak is disabled, runs oringinal function only. Tweak appears off.
	if (!isEnabled) {
		%orig;
		return;
	} 

	//Otherwise, it's enabled, and runs the original function with tweak, thus displaying box in SB corner.
    %orig;
    UIView *ourView = [[UIView alloc] init];
    ourView.backgroundColor = [UIColor blueColor];
    ourView.translatesAutoresizingMaskIntoConstraints = false;
    [self.view addSubview:ourView];

    [ourView.leadingAnchor constraintEqualToAnchor: self.view.leadingAnchor].active = true;
    [ourView.topAnchor constraintEqualToAnchor: self.view.topAnchor].active = true;
    [ourView.widthAnchor constraintEqualToConstant: 40].active = true;
    [ourView.heightAnchor constraintEqualToConstant: 30].active = true;
}

%end

//All this to toggle a tiny blue box on the SB on/off, sheesh.