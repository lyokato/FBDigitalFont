#import "FBSquareFontView.h"
#import "FBFontSymbol.h"
#import "FBSquareFont.h"

@interface FBSquareFontView ()
@property (nonatomic, copy) NSArray *symbols;
@end

@implementation FBSquareFontView

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
    self.symbols           = @[];
    self.horizontalPadding = 5.0;
    self.verticalPadding   = 5.0;
    self.horizontalEdgeLength = 10.0;
    self.verticalEdgeLength   = 10.0;
    self.lineWidth         = 2.0;
    self.lineJoin          = kCGLineJoinRound;
    self.lineCap           = kCGLineCapRound;
    self.margin            = 5.0;
    self.lineColor         = [UIColor whiteColor];
    self.glowColor         = [UIColor whiteColor];
    self.innerGlowColor    = [UIColor whiteColor];
    self.glowSize          = 0.0;
    self.innerGlowSize     = 0.0;
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
    CGFloat w = self.horizontalPadding * 2 + (self.horizontalEdgeLength * 2) * [self.symbols count] + self.margin * ([self.symbols count] - 1);
    CGFloat h = self.verticalPadding * 2 + self.verticalEdgeLength * 2;
    return CGSizeMake(w, h);
}

- (void)drawRect:(CGRect)rect
{
    NSInteger i = 0;

    CGSize s = [self sizeOfContents];
    CGRect r = (CGRect){CGPointZero, s};

    UIGraphicsBeginImageContextWithOptions(s, NO, 0.0);
    CGContextRef ctx = UIGraphicsGetCurrentContext();

    CGContextSetStrokeColorWithColor(ctx, self.lineColor.CGColor);
    CGContextSetLineWidth(ctx, self.lineWidth);
    CGContextSetLineCap(ctx, self.lineCap);
    CGContextSetLineJoin(ctx, self.lineJoin);

    CGFloat x = self.horizontalPadding;
    CGFloat y = self.verticalPadding;
    CGFloat l = (self.horizontalEdgeLength * 2) + self.margin;

    for (i = 0; i < [self.symbols count]; i++) {
        [FBSquareFont drawSymbol:[[self.symbols objectAtIndex:i] intValue]
            horizontalEdgeLength:self.horizontalEdgeLength
              verticalEdgeLength:self.verticalEdgeLength
                      startPoint:CGPointMake(x + i * l, y)
                       inContext:ctx];
    }
    UIImage *numImage = UIGraphicsGetImageFromCurrentImageContext();
    CGContextClearRect(ctx, r);

    CGContextSaveGState(ctx);
    CGContextSetFillColorWithColor(ctx, [UIColor blackColor].CGColor);
    CGContextFillRect(ctx, r);
    CGContextTranslateCTM(ctx, 0.0, r.size.height);
    CGContextScaleCTM(ctx, 1.0, -1.0);
    CGContextClipToMask(ctx, r, numImage.CGImage);
    CGContextClearRect(ctx, r);
    CGContextRestoreGState(ctx);
    
    UIImage *inverted = UIGraphicsGetImageFromCurrentImageContext();
    CGContextClearRect(ctx, r);

    CGContextSaveGState(ctx);
    CGContextSetFillColorWithColor(ctx, self.innerGlowColor.CGColor);
    CGContextSetShadowWithColor(ctx, CGSizeZero, self.innerGlowSize, self.innerGlowColor.CGColor);
    [inverted drawAtPoint:CGPointZero];
    CGContextTranslateCTM(ctx, 0.0, r.size.height);
    CGContextScaleCTM(ctx, 1.0, -1.0);
    CGContextClipToMask(ctx, r, inverted.CGImage);
    CGContextClearRect(ctx, r);
    CGContextRestoreGState(ctx);
    UIImage *innerShadow = UIGraphicsGetImageFromCurrentImageContext();

    UIGraphicsEndImageContext();

    ctx = UIGraphicsGetCurrentContext();
    CGContextSaveGState(ctx);
    CGContextSetShadowWithColor(ctx, CGSizeZero, self.glowSize, self.glowColor.CGColor);
    [numImage drawAtPoint:CGPointMake(0.0, 0.0)];
    CGContextRestoreGState(ctx);
    [innerShadow drawAtPoint:CGPointMake(0.0, 0.0)];
}

@end
