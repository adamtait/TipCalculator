//
//  SettingsViewController.m
//  TipCalculator
//
//  Created by Adam Tait on 12/8/13.
//  Copyright (c) 2013 Adam Tait. All rights reserved.
//

#import "SettingsViewController.h"
#import "UserDefaults.h"

@interface SettingsViewController ()

@property (weak, nonatomic) IBOutlet UISegmentedControl *tipDefaultControl;
- (IBAction)updateTipControlIndexDefault:(id)sender;

@end

@implementation SettingsViewController

////////////////////////////////////////////////////////////
// lifecycle methods

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    //NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    //self.tipDefaultControl.selectedSegmentIndex = [defaults integerForKey:@"noco.TipVIewController.tipControl.index.default"];
}

- (void)viewWillAppear:(BOOL)animated {
    self.tipDefaultControl.selectedSegmentIndex = [UserDefaults getTipControlDefault];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

////////////////////////////////////////////////////////////
// delegate methods

- (IBAction)updateTipControlIndexDefault:(id)sender {
    [UserDefaults setTipControlDefault:self.tipDefaultControl.selectedSegmentIndex];
}
@end
