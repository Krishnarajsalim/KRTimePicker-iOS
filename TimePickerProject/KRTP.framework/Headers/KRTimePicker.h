//
//  KRTP.h
//  KRTP
//
//  Created by Krishna Raj Salim on 30/01/19.
//  Copyright © 2019 Krishna Raj Salim. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol KRTPDelegate <NSObject>

@optional
- (void)KRTPDidCancel;  // Called once the user clicks on the 'close' button.
- (void)KRTPDidSelectTime:(NSString *)timeString;   // Called once the user clicks on the 'Done' button.
@end

typedef NS_OPTIONS(int, Theme) {
    Default     = 0,
    Knight ,
    Custom ,
};

@interface KRTimePicker : UIViewController

@property (nonatomic, weak) id <KRTPDelegate> delegate;

// Customizationz
- (void)setClockTheme:(Theme)theme;
- (void)hideLogs:(BOOL)logStatus; // Logging enabled by default

// Applicable only if the Theme is set to 'Custom' before calling any of the below method(s)
// To set custom colors
- (void)setFrameColor:(UIColor *)color_1
 highLightedTextColor:(UIColor *)color_2
         dimTextColor:(UIColor *)color_3
   needleDefaultColor:(UIColor *)color_4
neeedleHighlightColor:(UIColor *)color_5;

// To set custom colors and needle images
- (void)setFrameColor:(UIColor *)color_1
 highLightedTextColor:(UIColor *)color_2
         dimTextColor:(UIColor *)color_3
      hourNeedleImage:(UIImage *)image_1
    minuteNeedleImage:(UIImage *)image_2;

// If you wish to set the clock circle background, then add an image in the project with name 'KRTPCBg.png', and set Theme as 'Custom'
- (void)showKRTPickerFrom:(UIViewController *)VC;
- (void)showKRTPickerFrom:(UIViewController *)VC setForButton:(UIButton *)button;

@end
