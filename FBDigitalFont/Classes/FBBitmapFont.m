#import "FBBitmapFont.h"

@implementation FBBitmapFont

+ (void)drawBackgroundWithDotType:(FBFontDotType)dotType
                            color:(UIColor *)color
                       edgeLength:(CGFloat)edgeLength
                           margin:(CGFloat)margin
                 horizontalAmount:(CGFloat)horizontalAmount
                   verticalAmount:(CGFloat)verticalAmount
                        inContext:(CGContextRef)ctx
{
    NSInteger i = 0;
    NSInteger j = 0;
    float l = edgeLength + margin;

    CGContextSetFillColorWithColor(ctx, color.CGColor);

    CGRect r;
    for (i = 0; i < verticalAmount; i++) {
        for (j = 0; j < horizontalAmount; j++) {
            r = CGRectMake(j * l, i * l, edgeLength, edgeLength);
            if (dotType == FBFontDotTypeSquare) {
                CGContextFillRect(ctx, r);
            } else {
                CGContextFillEllipseInRect(ctx, r);
            }
        }
    }
}

+ (void)drawSymbol:(FBFontSymbolType)symbol
       withDotType:(FBFontDotType)dotType
             color:(UIColor *)color
        edgeLength:(CGFloat)edgeLength
            margin:(CGFloat)margin
        startPoint:(CGPoint)startPoint
         inContext:(CGContextRef)ctx
{

    NSInteger i = 0;
    float x = 0;
    float y = 0;
    float l = edgeLength + margin;

    NSArray *coord = [self coordForSymbol:symbol];

    CGContextSetFillColorWithColor(ctx, color.CGColor);

    CGRect r;
    for (i = 0; i < [coord count]; i++) {
        if ([[coord objectAtIndex:i] boolValue]) {
            y = startPoint.y + floor(i / 5) * l;
            x = startPoint.x + fmod(i, 5) * l;
            r = CGRectMake(x, y, edgeLength, edgeLength); 
            if (dotType == FBFontDotTypeSquare) {
                CGContextFillRect(ctx, r);
            } else {
                CGContextFillEllipseInRect(ctx, r);
            }
        }
    }
}


+(NSArray *)coordForSymbol:(FBFontSymbolType)symbol
{
  switch (symbol) {
    case FBFontSymbol0:
      return @[
         @false,  @true,  @true,  @true, @false, 
          @true, @false, @false, @false,  @true, 
          @true, @false, @false, @false,  @true, 
          @true, @false, @false, @false,  @true, 
          @true, @false, @false, @false,  @true, 
          @true, @false, @false, @false,  @true, 
         @false,  @true,  @true,  @true, @false
      ];
    case FBFontSymbol1:
      return @[
         @false, @false,  @true, @false, @false, 
         @false,  @true,  @true, @false, @false,
         @false, @false,  @true, @false, @false, 
         @false, @false,  @true, @false, @false, 
         @false, @false,  @true, @false, @false, 
         @false, @false,  @true, @false, @false, 
         @false, @false,  @true, @false, @false
      ];
    case FBFontSymbol2:
      return @[
         @false,  @true,  @true,  @true, @false, 
          @true, @false, @false, @false,  @true, 
         @false, @false, @false, @false,  @true, 
         @false, @false, @false,  @true, @false, 
         @false, @false,  @true, @false, @false, 
         @false,  @true, @false, @false, @false, 
          @true,  @true,  @true,  @true,  @true 
      ];
    case FBFontSymbol3:
      return @[
         @false,  @true,  @true,  @true, @false, 
          @true, @false, @false, @false,  @true, 
         @false, @false, @false, @false,  @true, 
         @false, @false,  @true,  @true, @false, 
         @false, @false, @false, @false,  @true, 
          @true, @false, @false, @false,  @true, 
         @false,  @true,  @true,  @true, @false
      ];
    case FBFontSymbol4:
      return @[
         @false, @false, @false,  @true, @false, 
         @false, @false,  @true,  @true, @false, 
         @false,  @true, @false,  @true, @false, 
          @true, @false, @false,  @true, @false, 
          @true,  @true,  @true,  @true,  @true, 
         @false, @false, @false,  @true, @false, 
         @false, @false, @false,  @true, @false
      ];
    case FBFontSymbol5:
      return @[
          @true,  @true,  @true,  @true,  @true, 
          @true, @false, @false, @false, @false, 
          @true,  @true,  @true,  @true, @false, 
         @false, @false, @false, @false,  @true, 
         @false, @false, @false, @false,  @true, 
          @true, @false, @false, @false,  @true, 
         @false,  @true,  @true,  @true, @false
      ];
    case FBFontSymbol6:
      return @[
         @false,  @true,  @true,  @true, @false, 
          @true, @false, @false, @false, @false, 
          @true, @false, @false, @false, @false, 
          @true,  @true,  @true,  @true, @false, 
          @true, @false, @false, @false,  @true, 
          @true, @false, @false, @false,  @true, 
         @false,  @true,  @true,  @true, @false
      ];
    case FBFontSymbol7:
      return @[
          @true,  @true,  @true,  @true,  @true, 
         @false, @false, @false, @false,  @true, 
         @false, @false, @false,  @true, @false, 
         @false, @false,  @true, @false, @false, 
         @false,  @true, @false, @false, @false, 
         @false,  @true, @false, @false, @false, 
         @false,  @true, @false, @false, @false
      ];
    case FBFontSymbol8:
      return @[
         @false,  @true,  @true,  @true, @false, 
          @true, @false, @false, @false,  @true, 
          @true, @false, @false, @false,  @true, 
         @false,  @true,  @true,  @true, @false, 
          @true, @false, @false, @false,  @true, 
          @true, @false, @false, @false,  @true, 
         @false,  @true,  @true,  @true, @false
      ];
    case FBFontSymbol9:
      return @[
         @false,  @true,  @true,  @true, @false, 
          @true, @false, @false, @false,  @true, 
          @true, @false, @false, @false,  @true, 
         @false,  @true,  @true,  @true,  @true, 
         @false, @false, @false, @false,  @true, 
         @false, @false, @false, @false,  @true, 
         @false,  @true,  @true,  @true, @false
      ];
    case FBFontSymbolA:
      return @[
         @false,  @true,  @true,  @true, @false, 
          @true, @false, @false, @false,  @true,
          @true, @false, @false, @false,  @true,
          @true,  @true,  @true,  @true,  @true,
          @true, @false, @false, @false,  @true,
          @true, @false, @false, @false,  @true,
          @true, @false, @false, @false,  @true 
      ];
    case FBFontSymbolB:
      return @[
         @true,  @true,  @true,  @true, @false, 
         @true, @false, @false, @false,  @true,
         @true, @false, @false, @false,  @true,
         @true,  @true,  @true,  @true, @false,
         @true, @false, @false, @false,  @true,
         @true, @false, @false, @false,  @true,
         @true,  @true,  @true,  @true, @false
      ];
    case FBFontSymbolC:
      return @[
         @false,  @true,  @true,  @true,  @true, 
          @true, @false, @false, @false, @false,
          @true, @false, @false, @false, @false,
          @true, @false, @false, @false, @false,
          @true, @false, @false, @false, @false,
          @true, @false, @false, @false, @false,
         @false,  @true,  @true,  @true, @true 
      ];
    case FBFontSymbolD:
      return @[
          @true,  @true,  @true,  @true, @false, 
          @true, @false, @false, @false, @true,
          @true, @false, @false, @false, @true,
          @true, @false, @false, @false, @true,
          @true, @false, @false, @false, @true,
          @true, @false, @false, @false, @true,
          @true,  @true,  @true,  @true, @false
      ];
    case FBFontSymbolE:
      return @[
          @true,  @true,  @true,  @true,  @true, 
          @true, @false, @false, @false, @false,
          @true, @false, @false, @false, @false,
          @true,  @true,  @true,  @true, @false,
          @true, @false, @false, @false, @false,
          @true, @false, @false, @false, @false,
          @true,  @true,  @true,  @true,  @true
      ];
    case FBFontSymbolF:
      return @[
         @true,  @true,  @true,  @true,  @true, 
         @true,  @false, @false, @false, @false,
         @true,  @false, @false, @false, @false,
         @true,  @true,  @true,  @true,  @false,
         @true,  @false, @false, @false, @false,
         @true,  @false, @false, @false, @false,
         @true,  @false, @false, @false, @false
      ];
    case FBFontSymbolG:
      return @[
         @false,  @true,  @true,  @true, @true, 
         @true,  @false, @false, @false, @false,
         @true,  @false, @false, @false, @false,
         @true,  @false, @true,  @true,  @true,
         @true,  @false, @false, @false, @true,
         @true,  @false, @false, @false, @true,
         @false, @true,  @true,  @true,  @false
      ];
    case FBFontSymbolH:
      return @[
         @true,  @false, @false, @false, @true, 
         @true,  @false, @false, @false, @true, 
         @true,  @false, @false, @false, @true, 
         @true,  @true,  @true,  @true,  @true, 
         @true,  @false, @false, @false, @true, 
         @true,  @false, @false, @false, @true, 
         @true,  @false, @false, @false, @true
      ];
    case FBFontSymbolI:
      return @[
         @true,  @true,  @true,  @true,  @true, 
         @false, @false, @true,  @false, @false,
         @false, @false, @true,  @false, @false,
         @false, @false, @true,  @false, @false,
         @false, @false, @true,  @false, @false,
         @false, @false, @true,  @false, @false,
         @true,  @true,  @true,  @true,  @true
      ];
    case FBFontSymbolJ:
      return @[
         @false, @false, @false, @true,  @false,
         @false, @false, @false, @true,  @false,
         @false, @false, @false, @true,  @false,
         @false, @false, @false, @true,  @false,
         @true,  @false, @false, @true,  @false,
         @true,  @false, @false, @true,  @false,
         @false, @true,  @true,  @false, @false
      ];
    case FBFontSymbolK:
      return @[
         @true,  @false, @false, @false, @true,
         @true,  @false, @false, @true,  @false,
         @true,  @false, @true,  @false, @false,
         @true,  @true,  @false, @false, @false,
         @true,  @false, @true,  @false, @false,
         @true,  @false, @false, @true,  @false,
         @true,  @false, @false, @false, @true
      ];
    case FBFontSymbolL:
      return @[
         @true,  @false, @false, @false, @false, 
         @true,  @false, @false, @false, @false, 
         @true,  @false, @false, @false, @false, 
         @true,  @false, @false, @false, @false, 
         @true,  @false, @false, @false, @false, 
         @true,  @false, @false, @false, @false, 
         @true,  @true,  @true,  @true,  @true
      ];
    case FBFontSymbolM:
      return @[
         @true,  @false, @false, @false, @true, 
         @true,  @true,  @false, @true,  @true, 
         @true,  @false, @true,  @false, @true, 
         @true,  @false, @true,  @false, @true, 
         @true,  @false, @false, @false, @true, 
         @true,  @false, @false, @false, @true, 
         @true,  @false, @false, @false, @true
      ];
    case FBFontSymbolN:
      return @[
         @true,  @false, @false, @false, @true, 
         @true,  @false, @false, @false, @true, 
         @true,  @true,  @false, @false, @true, 
         @true,  @false, @true,  @false, @true, 
         @true,  @false, @false, @true,  @true, 
         @true,  @false, @false, @false, @true, 
         @true,  @false, @false, @false, @true
      ];
    case FBFontSymbolO:
      return @[
         @false,  @true,  @true,  @true, @false, 
         @true,  @false, @false, @false, @true,
         @true,  @false, @false, @false, @true,
         @true,  @false, @false, @false, @true,
         @true,  @false, @false, @false, @true,
         @true,  @false, @false, @false, @true,
         @false,  @true,  @true,  @true, @false
      ];
    case FBFontSymbolP:
      return @[
         @true,  @true,  @true,  @true,  @false, 
         @true,  @false, @false, @false, @true,
         @true,  @false, @false, @false, @true,
         @true,  @true,  @true,  @true,  @false, 
         @true,  @false, @false, @false, @false,
         @true,  @false, @false, @false, @false,
         @true,  @false, @false, @false, @false
      ];
    case FBFontSymbolQ:
      return @[
         @false,  @true,  @true, @true,  @false, 
         @true,  @false, @false, @false, @true,
         @true,  @false, @false, @false, @true,
         @true,  @false, @false, @false, @true,
         @true,  @false, @true,  @false, @true,
         @true,  @false, @false, @true,  @true,
         @false,  @true,  @true, @true,  @true
      ];
    case FBFontSymbolR:
      return @[
         @true,  @true,  @true,  @true,  @false, 
         @true,  @false, @false, @false, @true,
         @true,  @false, @false, @false, @true,
         @true,  @true,  @true,  @true,  @false, 
         @true,  @false, @true,  @false, @false,
         @true,  @false, @false, @true,  @false,
         @true,  @false, @false, @false, @true
      ];
    case FBFontSymbolS:
      return @[
         @false, @true,  @true,  @true,  @false, 
         @true,  @false, @false, @false, @true,
         @true,  @false, @false, @false, @false,
         @false, @true,  @true,  @true,  @false, 
         @false, @false, @false, @false, @true,
         @true,  @false, @false, @false, @true,
         @false,  @true,  @true,  @true,  @false
      ];
    case FBFontSymbolT:
      return @[
         @true,  @true,  @true,  @true, @true, 
         @false, @false, @true,  @false, @false,
         @false, @false, @true,  @false, @false,
         @false, @false, @true,  @false, @false,
         @false, @false, @true,  @false, @false,
         @false, @false, @true,  @false, @false,
         @false, @false, @true,  @false, @false
      ];
    case FBFontSymbolU:
      return @[
         @true,  @false, @false, @false, @true,
         @true,  @false, @false, @false, @true,
         @true,  @false, @false, @false, @true,
         @true,  @false, @false, @false, @true,
         @true,  @false, @false, @false, @true,
         @true,  @false, @false, @false, @true,
         @false, @true,  @true,  @true,  @false
      ];
    case FBFontSymbolV:
      return @[
         @true,  @false, @false, @false, @true,
         @true,  @false, @false, @false, @true,
         @true,  @false, @false, @false, @true,
         @true,  @false, @false, @false, @true,
         @true,  @false, @false, @false, @true,
         @false, @true,  @false, @true,  @false,
         @false, @false, @true,  @false, @false
      ];
    case FBFontSymbolW:
      return @[
         @true,  @false, @false, @false, @true,
         @true,  @false, @false, @false, @true,
         @true,  @false, @false, @false, @true,
         @true,  @false, @true,  @false, @true,
         @true,  @false, @true,  @false, @true,
         @true,  @true,  @false, @true,  @true,
         @true,  @false, @false, @false, @true
      ];
    case FBFontSymbolX:
      return @[
         @true,  @false, @false, @false, @true,
         @true,  @false, @false, @false, @true,
         @false, @true,  @false, @true,  @false,
         @false, @false, @true,  @false, @false,
         @false, @true,  @false, @true,  @false,
         @true,  @false, @false, @false, @true,
         @true,  @false, @false, @false, @true
      ];
    case FBFontSymbolY:
      return @[
         @true,  @false, @false, @false, @true,
         @true,  @false, @false, @false, @true,
         @false, @true,  @false, @true,  @false,
         @false, @false, @true,  @false, @false,
         @false, @false, @true,  @false, @false,
         @false, @false, @true,  @false, @false,
         @false, @false, @true,  @false, @false
      ];
    case FBFontSymbolZ:
      return @[
         @true,  @true,  @true,  @true,  @true,
         @false, @false, @false, @false, @true,
         @false, @false, @false, @true, @false,
         @false, @false, @true,  @false, @false,
         @false, @true,  @false, @false, @false,
         @true,  @false, @false, @false, @false,
         @true,  @true,  @true,  @true,  @true
      ];
    case FBFontSymbolArrowUp:
      return @[
         @false, @false, @false, @false, @false, 
         @false, @false, @true,  @false, @false, 
         @false, @true,  @true,  @true,  @false,
         @true,  @false, @true,  @false, @true,
         @false, @false, @true,  @false, @false,
         @false, @false, @true,  @false, @false,
         @false, @false, @false, @false, @false
      ];
    case FBFontSymbolArrowDown:
      return @[
         @false, @false, @false, @false, @false, 
         @false, @false, @true,  @false, @false,
         @false, @false, @true,  @false, @false,
         @true,  @false, @true,  @false, @true,
         @false, @true,  @true,  @true,  @false,
         @false, @false, @true,  @false, @false,
         @false, @false, @false, @false, @false
      ];
    case FBFontSymbolArrowLeft:
      return @[
         @false, @false, @false, @false, @false, 
         @false, @false, @true,  @false, @false,
         @false, @true,  @false, @false, @false,
         @true,  @true,  @true,  @true,  @true,
         @false, @true,  @false, @false, @false,
         @false, @false, @true,  @false, @false,
         @false, @false, @false, @false, @false
      ];
    case FBFontSymbolArrowRight:
      return @[
         @false, @false, @false, @false, @false, 
         @false, @false, @true,  @false, @false,
         @false, @false, @false, @true,  @false,
         @true,  @true,  @true,  @true,  @true,
         @false, @false, @false, @true,  @false,
         @false, @false, @true,  @false, @false,
         @false, @false, @false, @false, @false
      ];
    case FBFontSymbolDash:
      return @[
         @false, @false, @false, @false, @false,
         @false, @false, @false, @false, @false,
         @false, @false, @false, @false, @false,
         @true,  @true,  @true,  @true,  @true, 
         @false, @false, @false, @false, @false,
         @false, @false, @false, @false, @false,
         @false, @false, @false, @false, @false
      ];
    case FBFontSymbolSpace:
      return @[
         @false, @false, @false, @false, @false,
         @false, @false, @false, @false, @false,
         @false, @false, @false, @false, @false,
         @false, @false, @false, @false, @false,
         @false, @false, @false, @false, @false,
         @false, @false, @false, @false, @false,
         @false, @false, @false, @false, @false
      ];
  }
}

@end
