#import "FBBitmapFontView.h"
#import "FBFontSymbol.h"
#import "FBBitmapFont.h"

#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)(((rgbValue) & 0xFF0000) >> 16))/255.0 green:((float)(((rgbValue) & 0xFF00) >> 8))/255.0 blue:((float)((rgbValue) & 0xFF))/255.0 alpha:1.0]

@implementation FBBitmapFontView

- (id)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self setup];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)coder
{
    if (self = [super initWithCoder:coder]) {
        [self setup];
    }
    return self;
}

- (void)setup
{
    self.symbols        = @[];
    self.dotType        = FBFontDotTypeSquare;
    self.edgeLength     = 10.0;
    self.margin         = 2.0;
    self.glowSize       = 0.0;
    self.innerGlowSize  = 0.0;
    self.glowColor      = UIColorFromRGB(0xee3300);
    self.innerGlowColor = UIColorFromRGB(0xee3300);
    self.onColor        = UIColorFromRGB(0xffdd66);
    self.offColor       = UIColorFromRGB(0x222222);

    self.numberOfLeftPaddingDot   = 1;
    self.numberOfTopPaddingDot    = 0;
    self.numberOfRightPaddingDot  = 1;
    self.numberOfBottomPaddingDot = 0;
    self.numberOfPaddingDotsBetweenDigits = 1;
}

- (void)setText:(NSString *)text
{
    _text = text;
    self.symbols = [FBFontSymbol symbolsForString:text];
    [self setNeedsDisplay];
}

- (void)resetSize
{
    CGRect f = self.frame;
    f.size = [self sizeOfContents];
    self.frame = f; 
}

- (CGSize)sizeOfContents
{
    NSInteger vd = [self numberOfVerticalDot];
    NSInteger hd = [self numberOfHorizontalDot];
    CGFloat w = hd * self.edgeLength + (hd - 1) * self.margin;
    CGFloat h = vd * self.edgeLength + (vd - 1) * self.margin;
    return CGSizeMake(w, h);
}

- (NSInteger)numberOfHorizontalDot
{
    NSInteger totalDotsFromSymbols = 0;
    for (NSNumber *number in self.symbols) {
        FBFontSymbolType symbol = [number integerValue];
        totalDotsFromSymbols += [FBBitmapFont numberOfDotsWideForSymbol:symbol];
    }
    
    return totalDotsFromSymbols + (self.numberOfPaddingDotsBetweenDigits * ([self.symbols count] - 1)) + self.numberOfLeftPaddingDot + self.numberOfRightPaddingDot;
}

- (NSInteger)numberOfVerticalDot
{
    return 7 + self.numberOfTopPaddingDot + self.numberOfBottomPaddingDot;
}

- (void)drawRect:(CGRect)rect
{
    NSInteger i = 0;
    
//    CGFloat l = (self.edgeLength + self.margin) * (5 + self.numberOfPaddingDotsBetweenDigits);
    CGFloat x = self.numberOfLeftPaddingDot * (self.edgeLength + self.margin);
    CGFloat y = self.numberOfTopPaddingDot * (self.edgeLength + self.margin);
    
    CGRect r = (CGRect){CGPointZero, [self sizeOfContents]};
    UIGraphicsBeginImageContextWithOptions(r.size, NO, 0.0);
    CGContextRef imgCtx = UIGraphicsGetCurrentContext();
    
    for (i = 0; i < [self.symbols count]; i++) {
        
        [FBBitmapFont drawSymbol:[[self.symbols objectAtIndex:i] intValue]
                     withDotType:self.dotType
                           color:self.onColor
                      edgeLength:self.edgeLength
                          margin:self.margin
                      startPoint:CGPointMake(x, y)
                       inContext:imgCtx];
        
        CGFloat numberWide = [FBBitmapFont numberOfDotsWideForSymbol:[[self.symbols objectAtIndex:i] intValue]];
        x += (self.edgeLength + self.margin) * (numberWide + self.numberOfPaddingDotsBetweenDigits);
    }
    UIImage *digitImage = UIGraphicsGetImageFromCurrentImageContext();
    CGContextClearRect(imgCtx, r);
    
    CGContextSaveGState(imgCtx);
    CGContextSetFillColorWithColor(imgCtx, [UIColor blackColor].CGColor);
    CGContextFillRect(imgCtx, r);
    CGContextTranslateCTM(imgCtx, 0.0, r.size.height);
    CGContextScaleCTM(imgCtx, 1.0, -1.0);
    CGContextClipToMask(imgCtx, r, digitImage.CGImage);
    CGContextClearRect(imgCtx, r);
    CGContextRestoreGState(imgCtx);
    
    UIImage *inverted = UIGraphicsGetImageFromCurrentImageContext();
    CGContextClearRect(imgCtx, r);
    
    CGContextSaveGState(imgCtx);
    CGContextSetFillColorWithColor(imgCtx, self.innerGlowColor.CGColor);
    CGContextSetShadowWithColor(imgCtx, CGSizeZero, self.innerGlowSize, self.innerGlowColor.CGColor);
    [inverted drawAtPoint:CGPointZero];
    CGContextTranslateCTM(imgCtx, 0.0, r.size.height);
    CGContextScaleCTM(imgCtx, 1.0, -1.0);
    CGContextClipToMask(imgCtx, r, inverted.CGImage);
    CGContextClearRect(imgCtx, r);
    CGContextRestoreGState(imgCtx);
    
    UIImage *innerShadow = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();

    /* draw base dots */
    CGContextClearRect(ctx, r);
    [FBBitmapFont drawBackgroundWithDotType:self.dotType 
                                      color:self.offColor 
                                 edgeLength:self.edgeLength 
                                     margin:self.margin 
                           horizontalAmount:[self numberOfHorizontalDot]
                             verticalAmount:[self numberOfVerticalDot]
                                  inContext:ctx];

    CGContextSaveGState(ctx);

    //CGContextSetShadow(ctx, CGSizeZero, self.glowSize);
    CGContextSetShadowWithColor(ctx, CGSizeZero, self.glowSize, self.glowColor.CGColor);

    [digitImage drawAtPoint:CGPointMake(0.0, 0.0)];
    CGContextRestoreGState(ctx);
    [innerShadow drawAtPoint:CGPointMake(0.0, 0.0)];
}

@end


