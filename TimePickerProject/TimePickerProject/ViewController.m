//
//  ViewController.m
//  TimePickerProject
//
//  Created by Jithin on 12/06/19.
//  Copyright © 2019 KrishnaRajS. All rights reserved.
//

#import "ViewController.h"
#import <KRTP/KRTP.h>

@interface ViewController () <KRTPDelegate>
{
    enum Theme selectedTheme;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)showKRTPicker:(UIButton *)button {
    KRTimePicker *timePicker = [[KRTimePicker alloc]init];
    [timePicker showKRTPickerFrom:self setForButton:button];
    
    [timePicker setClockTheme:selectedTheme]; // Optional
    // [timePicker hideLogs:YES]; // Optional
    
    // Optional
    /*[timePicker setFrameColor:[UIColor colorWithRed:249.0/255.0 green:202.0/255.0 blue:249.0/255.0 alpha:1.0]
     highLightedTextColor:[UIColor whiteColor]
     dimTextColor:[UIColor grayColor]
     needleDefaultColor:[UIColor brownColor]
     neeedleHighlightColor:[UIColor yellowColor]]; */
    
    // Optional
    [timePicker setFrameColor:[UIColor colorWithRed:249.0/255.0 green:202.0/255.0 blue:249.0/255.0 alpha:1.0]
         highLightedTextColor:[UIColor whiteColor]
                 dimTextColor:[UIColor grayColor]
              hourNeedleImage:[UIImage imageNamed:@"hr_1"]
            minuteNeedleImage:[UIImage imageNamed:@"min_1"]];
    
}

- (IBAction)themeChanged:(UISegmentedControl *)sender {
    switch (sender.selectedSegmentIndex) {
        case 0:
            selectedTheme = Default;
            break;
        case 1:
            selectedTheme = Knight;
            break;
        case 2:
            selectedTheme = Custom; // Add an image in bundle with name 'KRTPCBg.png' (300x300 px)
            break;
        default:
            break;
    }
}

@end
