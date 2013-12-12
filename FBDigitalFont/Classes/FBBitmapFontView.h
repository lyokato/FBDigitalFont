#import <UIKit/UIKit.h>
#import "FBBitmapFont.h"

@interface FBBitmapFontView : UIView
@property (nonatomic, copy) NSArray *symbols;
@property (nonatomic, assign) FBFontDotType dotType;
@property (nonatomic, assign) float edgeLength;
@property (nonatomic, assign) float margin;
@property (nonatomic, assign) float glowSize;
@property (nonatomic, assign) float innerGlowSize;
@property (nonatomic, assign) NSInteger numberOfLeftPaddingDot;
@property (nonatomic, assign) NSInteger numberOfTopPaddingDot;
@property (nonatomic, assign) NSInteger numberOfBottomPaddingDot;
@property (nonatomic, assign) NSInteger numberOfRightPaddingDot;
@property (nonatomic, assign) NSInteger numberOfPaddingDotsBetweenDigits;
@property (nonatomic, strong) UIColor *offColor;
@property (nonatomic, strong) UIColor *onColor;
@property (nonatomic, strong) UIColor *glowColor;
@property (nonatomic, strong) UIColor *innerGlowColor;
@property (nonatomic, strong) NSString *text;
- (CGSize)sizeOfContents;
- (void)resetSize;
@end
