#import <UIKit/UIKit.h>

@interface FBSquareFontView : UIView
@property (nonatomic, assign) float horizontalEdgeLength;
@property (nonatomic, assign) float verticalEdgeLength;
@property (nonatomic, assign) float margin;
@property (nonatomic, assign) float lineWidth;
@property (nonatomic, assign) float horizontalPadding;
@property (nonatomic, assign) float verticalPadding;
@property (nonatomic, assign) float glowSize;
@property (nonatomic, assign) float innerGlowSize;
@property (nonatomic, assign) CGLineJoin lineJoin;
@property (nonatomic, assign) CGLineCap lineCap;
@property (nonatomic, strong) UIColor *lineColor;
@property (nonatomic, strong) UIColor *glowColor;
@property (nonatomic, strong) UIColor *innerGlowColor;
@property (nonatomic, strong) NSString *text;
- (void)resetSize;
- (CGSize)sizeOfContents;

@end
