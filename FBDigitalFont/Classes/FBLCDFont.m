#import "FBLCDFont.h"

@implementation FBLCDFont

static NSString *const kLCDSymbolPartPositionTop         = @"LCDTop";
static NSString *const kLCDSymbolPartPositionCenter      = @"LCDCenter";
static NSString *const kLCDSymbolPartPositionBottom      = @"LCDBottom";
static NSString *const kLCDSymbolPartPositionLeftTop     = @"LCDLeftTop";
static NSString *const kLCDSymbolPartPositionLeftButtom  = @"LCDLeftButtom";
static NSString *const kLCDSymbolPartPositionRightTop    = @"LCDRightTop";
static NSString *const kLCDSymbolPartPositionRightBottom = @"LCDRightButtom";

+ (void)drawSymbol:(FBFontSymbolType)symbol
        edgeLength:(CGFloat)edgeLength
         lineWidth:(CGFloat)lineWidth
        startPoint:(CGPoint)startPoint
         inContext:(CGContextRef)ctx
{
    NSDictionary *partsMap = [self partsMapForLCDSymbol:symbol];
    NSUInteger spacer = 1.0;

    if ([[partsMap valueForKey:kLCDSymbolPartPositionTop] boolValue])
    {
        CGMutablePathRef path = CGPathCreateMutable();
        CGPathMoveToPoint(path, NULL, startPoint.x + spacer, startPoint.y);
        CGPathAddLineToPoint(path, NULL, startPoint.x + edgeLength - spacer, startPoint.y);
        CGPathAddLineToPoint(path, NULL, startPoint.x + edgeLength - spacer - lineWidth, startPoint.y + lineWidth);
        CGPathAddLineToPoint(path, NULL, startPoint.x + spacer + lineWidth, startPoint.y + lineWidth);
        CGPathCloseSubpath(path);
        CGContextAddPath(ctx, path);
        CGContextFillPath(ctx);
        CGPathRelease(path);
    }
    if ([[partsMap valueForKey:kLCDSymbolPartPositionCenter] boolValue])
    {
        CGMutablePathRef path = CGPathCreateMutable();
        CGPathMoveToPoint(path, NULL, startPoint.x + spacer, startPoint.y + edgeLength);
        CGPathAddLineToPoint(path, NULL, startPoint.x + spacer * 2 + lineWidth / 2.0, startPoint.y + edgeLength - lineWidth / 2.0);
        CGPathAddLineToPoint(path, NULL, startPoint.x + edgeLength - spacer * 2 - lineWidth / 2.0, startPoint.y + edgeLength - lineWidth / 2.0);
        CGPathAddLineToPoint(path, NULL, startPoint.x + edgeLength - spacer, startPoint.y + edgeLength);
        CGPathAddLineToPoint(path, NULL, startPoint.x + edgeLength - spacer * 2 - lineWidth / 2.0, startPoint.y + edgeLength + lineWidth / 2.0);
        CGPathAddLineToPoint(path, NULL, startPoint.x + spacer * 2 + lineWidth / 2.0, startPoint.y + edgeLength + lineWidth / 2.0);
        CGPathCloseSubpath(path);
        CGContextAddPath(ctx, path);
        CGContextFillPath(ctx);
        CGPathRelease(path);
    }
    if ([[partsMap valueForKey:kLCDSymbolPartPositionBottom] boolValue])
    {
        CGMutablePathRef path = CGPathCreateMutable();
        CGPathMoveToPoint(path, NULL, startPoint.x + spacer, startPoint.y + edgeLength * 2);
        CGPathAddLineToPoint(path, NULL, startPoint.x + edgeLength - spacer, startPoint.y + edgeLength * 2);
        CGPathAddLineToPoint(path, NULL, startPoint.x + edgeLength - spacer - lineWidth, startPoint.y + edgeLength * 2 - lineWidth);
        CGPathAddLineToPoint(path, NULL, startPoint.x + spacer + lineWidth, startPoint.y + edgeLength * 2 - lineWidth);
        CGPathCloseSubpath(path);
        CGContextAddPath(ctx, path);
        CGContextFillPath(ctx);
        CGPathRelease(path);
    }
    if ([[partsMap valueForKey:kLCDSymbolPartPositionLeftTop] boolValue])
    {
        CGMutablePathRef path = CGPathCreateMutable();
        CGPathMoveToPoint(path, NULL, startPoint.x, startPoint.y + spacer);
        CGPathAddLineToPoint(path, NULL, startPoint.x, startPoint.y + edgeLength - spacer);
        CGPathAddLineToPoint(path, NULL, startPoint.x + lineWidth, startPoint.y + edgeLength - spacer * 2 - lineWidth / 2);
        CGPathAddLineToPoint(path, NULL, startPoint.x + lineWidth, startPoint.y + spacer + lineWidth);
        CGPathCloseSubpath(path);
        CGContextAddPath(ctx, path);
        CGContextFillPath(ctx);
        CGPathRelease(path);
    }
    if ([[partsMap valueForKey:kLCDSymbolPartPositionLeftButtom] boolValue])
    {
        CGMutablePathRef path = CGPathCreateMutable();
        CGPathMoveToPoint(path, NULL, startPoint.x, startPoint.y + edgeLength * 2 - spacer);
        CGPathAddLineToPoint(path, NULL, startPoint.x, startPoint.y + edgeLength + spacer);
        CGPathAddLineToPoint(path, NULL, startPoint.x + lineWidth, startPoint.y + edgeLength + spacer * 2 + lineWidth / 2);
        CGPathAddLineToPoint(path, NULL, startPoint.x + lineWidth, startPoint.y + edgeLength * 2 - spacer - lineWidth);
        CGPathCloseSubpath(path);
        CGContextAddPath(ctx, path);
        CGContextFillPath(ctx);
        CGPathRelease(path);
    }
    if ([[partsMap valueForKey:kLCDSymbolPartPositionRightTop] boolValue])
    {
        CGMutablePathRef path = CGPathCreateMutable();
        CGPathMoveToPoint(path, NULL, startPoint.x + edgeLength, startPoint.y + spacer);
        CGPathAddLineToPoint(path, NULL, startPoint.x + edgeLength, startPoint.y + edgeLength - spacer);
        CGPathAddLineToPoint(path, NULL, startPoint.x + edgeLength - lineWidth, startPoint.y + edgeLength - spacer * 2 - lineWidth / 2);
        CGPathAddLineToPoint(path, NULL, startPoint.x + edgeLength - lineWidth, startPoint.y + spacer + lineWidth);
        CGPathCloseSubpath(path);
        CGContextAddPath(ctx, path);
        CGContextFillPath(ctx);
        CGPathRelease(path);
    }
    if ([[partsMap valueForKey:kLCDSymbolPartPositionRightBottom] boolValue])
    {
        CGMutablePathRef path = CGPathCreateMutable();
        CGPathMoveToPoint(path, NULL, startPoint.x + edgeLength, startPoint.y + edgeLength * 2 - spacer);
        CGPathAddLineToPoint(path, NULL, startPoint.x + edgeLength, startPoint.y + edgeLength + spacer);
        CGPathAddLineToPoint(path, NULL, startPoint.x + edgeLength - lineWidth, startPoint.y + edgeLength + spacer * 2 + lineWidth / 2);
        CGPathAddLineToPoint(path, NULL, startPoint.x + edgeLength - lineWidth, startPoint.y + edgeLength * 2 - spacer - lineWidth);
        CGPathCloseSubpath(path);
        CGContextAddPath(ctx, path);
        CGContextFillPath(ctx);
        CGPathRelease(path);
    }
}

+ (NSDictionary *)partsMapForLCDSymbol:(FBFontSymbolType)symbol
{
    switch (symbol) {
        case FBFontSymbol0:
            return [NSDictionary dictionaryWithObjectsAndKeys:
                [NSNumber numberWithBool:YES], kLCDSymbolPartPositionTop,
                [NSNumber numberWithBool:YES], kLCDSymbolPartPositionBottom,
                [NSNumber numberWithBool:YES], kLCDSymbolPartPositionLeftTop,
                [NSNumber numberWithBool:YES], kLCDSymbolPartPositionLeftButtom,
                [NSNumber numberWithBool:YES], kLCDSymbolPartPositionRightTop,
                [NSNumber numberWithBool:YES], kLCDSymbolPartPositionRightBottom,
                [NSNumber numberWithBool:NO], kLCDSymbolPartPositionCenter,
                nil];
        case FBFontSymbol1:
            return [NSDictionary dictionaryWithObjectsAndKeys:
                    [NSNumber numberWithBool:NO], kLCDSymbolPartPositionTop,
                    [NSNumber numberWithBool:NO], kLCDSymbolPartPositionBottom,
                    [NSNumber numberWithBool:NO], kLCDSymbolPartPositionLeftTop,
                    [NSNumber numberWithBool:NO], kLCDSymbolPartPositionLeftButtom,
                    [NSNumber numberWithBool:YES], kLCDSymbolPartPositionRightTop,
                    [NSNumber numberWithBool:YES], kLCDSymbolPartPositionRightBottom,
                    [NSNumber numberWithBool:NO], kLCDSymbolPartPositionCenter,
                    nil];
        case FBFontSymbol2:
            return [NSDictionary dictionaryWithObjectsAndKeys:
                    [NSNumber numberWithBool:YES], kLCDSymbolPartPositionTop,
                    [NSNumber numberWithBool:YES], kLCDSymbolPartPositionBottom,
                    [NSNumber numberWithBool:NO], kLCDSymbolPartPositionLeftTop,
                    [NSNumber numberWithBool:YES], kLCDSymbolPartPositionLeftButtom,
                    [NSNumber numberWithBool:YES], kLCDSymbolPartPositionRightTop,
                    [NSNumber numberWithBool:NO], kLCDSymbolPartPositionRightBottom,
                    [NSNumber numberWithBool:YES], kLCDSymbolPartPositionCenter,
                    nil];
        case FBFontSymbol3:
            return [NSDictionary dictionaryWithObjectsAndKeys:
                    [NSNumber numberWithBool:YES], kLCDSymbolPartPositionTop,
                    [NSNumber numberWithBool:YES], kLCDSymbolPartPositionBottom,
                    [NSNumber numberWithBool:NO], kLCDSymbolPartPositionLeftTop,
                    [NSNumber numberWithBool:NO], kLCDSymbolPartPositionLeftButtom,
                    [NSNumber numberWithBool:YES], kLCDSymbolPartPositionRightTop,
                    [NSNumber numberWithBool:YES], kLCDSymbolPartPositionRightBottom,
                    [NSNumber numberWithBool:YES], kLCDSymbolPartPositionCenter,
                    nil];
        case FBFontSymbol4:
            return [NSDictionary dictionaryWithObjectsAndKeys:
                    [NSNumber numberWithBool:NO], kLCDSymbolPartPositionTop,
                    [NSNumber numberWithBool:NO], kLCDSymbolPartPositionBottom,
                    [NSNumber numberWithBool:YES], kLCDSymbolPartPositionLeftTop,
                    [NSNumber numberWithBool:NO], kLCDSymbolPartPositionLeftButtom,
                    [NSNumber numberWithBool:YES], kLCDSymbolPartPositionRightTop,
                    [NSNumber numberWithBool:YES], kLCDSymbolPartPositionRightBottom,
                    [NSNumber numberWithBool:YES], kLCDSymbolPartPositionCenter,
                    nil];
        case FBFontSymbol5:
            return [NSDictionary dictionaryWithObjectsAndKeys:
                    [NSNumber numberWithBool:YES], kLCDSymbolPartPositionTop,
                    [NSNumber numberWithBool:YES], kLCDSymbolPartPositionBottom,
                    [NSNumber numberWithBool:YES], kLCDSymbolPartPositionLeftTop,
                    [NSNumber numberWithBool:NO], kLCDSymbolPartPositionLeftButtom,
                    [NSNumber numberWithBool:NO], kLCDSymbolPartPositionRightTop,
                    [NSNumber numberWithBool:YES], kLCDSymbolPartPositionRightBottom,
                    [NSNumber numberWithBool:YES], kLCDSymbolPartPositionCenter,
                    nil];
        case FBFontSymbol6:
            return [NSDictionary dictionaryWithObjectsAndKeys:
                    [NSNumber numberWithBool:YES], kLCDSymbolPartPositionTop,
                    [NSNumber numberWithBool:YES], kLCDSymbolPartPositionBottom,
                    [NSNumber numberWithBool:YES], kLCDSymbolPartPositionLeftTop,
                    [NSNumber numberWithBool:YES], kLCDSymbolPartPositionLeftButtom,
                    [NSNumber numberWithBool:NO], kLCDSymbolPartPositionRightTop,
                    [NSNumber numberWithBool:YES], kLCDSymbolPartPositionRightBottom,
                    [NSNumber numberWithBool:YES], kLCDSymbolPartPositionCenter,
                    nil];
        case FBFontSymbol7:
            return [NSDictionary dictionaryWithObjectsAndKeys:
                    [NSNumber numberWithBool:YES], kLCDSymbolPartPositionTop,
                    [NSNumber numberWithBool:NO], kLCDSymbolPartPositionBottom,
                    [NSNumber numberWithBool:NO], kLCDSymbolPartPositionLeftTop,
                    [NSNumber numberWithBool:NO], kLCDSymbolPartPositionLeftButtom,
                    [NSNumber numberWithBool:YES], kLCDSymbolPartPositionRightTop,
                    [NSNumber numberWithBool:YES], kLCDSymbolPartPositionRightBottom,
                    [NSNumber numberWithBool:NO], kLCDSymbolPartPositionCenter,
                    nil];
        case FBFontSymbol8:
            return [NSDictionary dictionaryWithObjectsAndKeys:
                    [NSNumber numberWithBool:YES], kLCDSymbolPartPositionTop,
                    [NSNumber numberWithBool:YES], kLCDSymbolPartPositionBottom,
                    [NSNumber numberWithBool:YES], kLCDSymbolPartPositionLeftTop,
                    [NSNumber numberWithBool:YES], kLCDSymbolPartPositionLeftButtom,
                    [NSNumber numberWithBool:YES], kLCDSymbolPartPositionRightTop,
                    [NSNumber numberWithBool:YES], kLCDSymbolPartPositionRightBottom,
                    [NSNumber numberWithBool:YES], kLCDSymbolPartPositionCenter,
                    nil];
        case FBFontSymbol9:
            return [NSDictionary dictionaryWithObjectsAndKeys:
                    [NSNumber numberWithBool:YES], kLCDSymbolPartPositionTop,
                    [NSNumber numberWithBool:YES], kLCDSymbolPartPositionBottom,
                    [NSNumber numberWithBool:YES], kLCDSymbolPartPositionLeftTop,
                    [NSNumber numberWithBool:NO], kLCDSymbolPartPositionLeftButtom,
                    [NSNumber numberWithBool:YES], kLCDSymbolPartPositionRightTop,
                    [NSNumber numberWithBool:YES], kLCDSymbolPartPositionRightBottom,
                    [NSNumber numberWithBool:YES], kLCDSymbolPartPositionCenter,
                    nil];
        case FBFontSymbolDash:
            return [NSDictionary dictionaryWithObjectsAndKeys:
                    [NSNumber numberWithBool:NO], kLCDSymbolPartPositionTop,
                    [NSNumber numberWithBool:NO], kLCDSymbolPartPositionBottom,
                    [NSNumber numberWithBool:NO], kLCDSymbolPartPositionLeftTop,
                    [NSNumber numberWithBool:NO], kLCDSymbolPartPositionLeftButtom,
                    [NSNumber numberWithBool:NO], kLCDSymbolPartPositionRightTop,
                    [NSNumber numberWithBool:NO], kLCDSymbolPartPositionRightBottom,
                    [NSNumber numberWithBool:YES], kLCDSymbolPartPositionCenter,
                    nil];
        default:
            return [NSDictionary dictionaryWithObjectsAndKeys:
                    [NSNumber numberWithBool:NO], kLCDSymbolPartPositionTop,
                    [NSNumber numberWithBool:NO], kLCDSymbolPartPositionBottom,
                    [NSNumber numberWithBool:NO], kLCDSymbolPartPositionLeftTop,
                    [NSNumber numberWithBool:NO], kLCDSymbolPartPositionLeftButtom,
                    [NSNumber numberWithBool:NO], kLCDSymbolPartPositionRightTop,
                    [NSNumber numberWithBool:NO], kLCDSymbolPartPositionRightBottom,
                    [NSNumber numberWithBool:NO], kLCDSymbolPartPositionCenter,
                    nil];
    }
}

@end
