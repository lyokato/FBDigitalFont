#import <UIKit/UIKit.h>

@interface FBLCDFontView : UIView
@property (nonatomic, assign) BOOL drawOffLine;
@property (nonatomic, assign) float edgeLength;
@property (nonatomic, assign) float margin;
@property (nonatomic, assign) float lineWidth;
@property (nonatomic, assign) float horizontalPadding;
@property (nonatomic, assign) float verticalPadding;
@property (nonatomic, assign) float glowSize;
@property (nonatomic, assign) float innerGlowSize;
@property (nonatomic, strong) UIColor *lineColor;
@property (nonatomic, strong) UIColor *offColor;
@property (nonatomic, strong) UIColor *glowColor;
@property (nonatomic, strong) UIColor *innerGlowColor;
@property (nonatomic, strong) NSString *text;
- (void)resetSize;
- (CGSize)sizeOfContents;
@end

