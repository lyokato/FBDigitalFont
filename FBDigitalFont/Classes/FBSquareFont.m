#import "FBSquareFont.h"

@implementation FBSquareFont

+ (void)drawSymbol:(FBFontSymbolType)symbol
horizontalEdgeLength:(CGFloat)horizontalEdgeLength
  verticalEdgeLength:(CGFloat)verticalEdgeLength
          startPoint:(CGPoint)startPoint
           inContext:(CGContextRef)ctx
{

    switch (symbol) {
        case FBFontSymbolDash:
            {
                CGMutablePathRef path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL, 
                        startPoint.x, 
                        startPoint.y + verticalEdgeLength);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2, 
                        startPoint.y + verticalEdgeLength);
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);
                break;
            }
        case FBFontSymbol0:
            {
                CGMutablePathRef path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL, 
                        startPoint.x, 
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2, 
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2, 
                        startPoint.y + verticalEdgeLength * 2);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x,
                        startPoint.y + verticalEdgeLength * 2);
                CGPathCloseSubpath(path);
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);
                break;
            }
        case FBFontSymbol1:
            {
                CGMutablePathRef path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL,
                                  startPoint.x + horizontalEdgeLength,
                                  startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength,
                        startPoint.y + verticalEdgeLength * 2);
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);
                break;
            }
        case FBFontSymbol2:
            {
                CGMutablePathRef path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL, 
                        startPoint.x, 
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2, 
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2, 
                        startPoint.y + verticalEdgeLength);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x, 
                        startPoint.y + verticalEdgeLength);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x, 
                        startPoint.y + verticalEdgeLength * 2);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2, 
                        startPoint.y + verticalEdgeLength * 2);
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);
                break;
            }
        case FBFontSymbol3:
            {
                CGMutablePathRef path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL, 
                        startPoint.x, 
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2, 
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2, 
                        startPoint.y + verticalEdgeLength * 2);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x, 
                        startPoint.y + verticalEdgeLength * 2);
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);

                path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL, 
                        startPoint.x, 
                        startPoint.y + verticalEdgeLength);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2, 
                        startPoint.y + verticalEdgeLength);
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);
                break;
            }
        case FBFontSymbol4:
            {
                CGMutablePathRef path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL, 
                        startPoint.x, 
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x, 
                        startPoint.y + verticalEdgeLength);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2, 
                        startPoint.y + verticalEdgeLength);
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);

                path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2, 
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2, 
                        startPoint.y + verticalEdgeLength * 2);
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);
                break;
            }
        case FBFontSymbol5:
            {
                CGMutablePathRef path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2, 
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x, 
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x, 
                        startPoint.y + verticalEdgeLength);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2, 
                        startPoint.y + verticalEdgeLength);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2, 
                        startPoint.y + verticalEdgeLength * 2);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x, 
                        startPoint.y + verticalEdgeLength * 2);
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);
                break;
            }
        case FBFontSymbol6:
            {
                CGMutablePathRef path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL, 
                        startPoint.x, 
                        startPoint.y + verticalEdgeLength);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2, 
                        startPoint.y + verticalEdgeLength);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2, 
                        startPoint.y + verticalEdgeLength * 2);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x, 
                        startPoint.y + verticalEdgeLength * 2);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x, 
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2, 
                        startPoint.y);
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);
                break;
            }
        case FBFontSymbol7:
            {
                CGMutablePathRef path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL, 
                        startPoint.x, 
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2, 
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2, 
                        startPoint.y + verticalEdgeLength * 2);
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);
                break;
            }
        case FBFontSymbol8:
        {
                CGMutablePathRef path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL, 
                        startPoint.x, 
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2, 
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2, 
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2, 
                        startPoint.y + verticalEdgeLength * 2);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x,
                        startPoint.y + verticalEdgeLength * 2);
                CGPathCloseSubpath(path);

                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);

                CGPathRelease(path);

                path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL, 
                        startPoint.x,
                        startPoint.y + verticalEdgeLength);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2, 
                        startPoint.y + verticalEdgeLength);
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);
            break;
        }
        case FBFontSymbol9:
            {
                CGMutablePathRef path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2, 
                        startPoint.y + verticalEdgeLength);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x, 
                        startPoint.y + verticalEdgeLength);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x, 
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2, 
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2, 
                        startPoint.y + verticalEdgeLength * 2);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x, 
                        startPoint.y + verticalEdgeLength * 2);
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);
                break;
            }
        case FBFontSymbolA:
            {
                CGMutablePathRef path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL, 
                        startPoint.x, 
                        startPoint.y + verticalEdgeLength * 2);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x,
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2,
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2,
                        startPoint.y + verticalEdgeLength * 2);
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);

                path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL, 
                        startPoint.x,
                        startPoint.y + verticalEdgeLength);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2, 
                        startPoint.y + verticalEdgeLength);
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);
                break;
            }
        case FBFontSymbolB:
            {
                CGMutablePathRef path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2,
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x, 
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x, 
                        startPoint.y + verticalEdgeLength * 2);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2, 
                        startPoint.y + verticalEdgeLength * 2);
                CGPathCloseSubpath(path);
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);

                path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL, 
                        startPoint.x,
                        startPoint.y + verticalEdgeLength);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2, 
                        startPoint.y + verticalEdgeLength);
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);
                break;
            }
        case FBFontSymbolC:
            {
                CGMutablePathRef path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2,
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x, 
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x, 
                        startPoint.y + verticalEdgeLength * 2);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2, 
                        startPoint.y + verticalEdgeLength * 2);
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);
                break;
            }
        case FBFontSymbolD:
            {
                CGMutablePathRef path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL, 
                        startPoint.x,
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x, 
                        startPoint.y + verticalEdgeLength * 2);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 3 / 2,
                        startPoint.y + verticalEdgeLength * 2);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2,
                        startPoint.y + verticalEdgeLength);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 3 / 2,
                        startPoint.y);
                CGPathCloseSubpath(path);
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);
                break;
            }
        case FBFontSymbolE:
            {
                CGMutablePathRef path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2,
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x, 
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x, 
                        startPoint.y + verticalEdgeLength * 2);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2,
                        startPoint.y + verticalEdgeLength * 2);
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);

                path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL, 
                        startPoint.x,
                        startPoint.y + verticalEdgeLength);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2, 
                        startPoint.y + verticalEdgeLength);
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);
                break;
            }
        case FBFontSymbolF:
            {
                CGMutablePathRef path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2, 
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x,
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x,
                        startPoint.y + verticalEdgeLength * 2);
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);

                path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL, 
                        startPoint.x, 
                        startPoint.y + verticalEdgeLength);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2,
                        startPoint.y + verticalEdgeLength);
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);
                break;
            }
        case FBFontSymbolG:
            {
                CGMutablePathRef path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2, 
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x,
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x,
                        startPoint.y + verticalEdgeLength * 2);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2,
                        startPoint.y + verticalEdgeLength * 2);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2,
                        startPoint.y + verticalEdgeLength);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength,
                        startPoint.y + verticalEdgeLength);
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);
                break;
            }
        case FBFontSymbolH:
            {
                CGMutablePathRef path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL, 
                        startPoint.x, 
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x,
                        startPoint.y + verticalEdgeLength * 2);
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);

                path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2, 
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2,
                        startPoint.y + verticalEdgeLength * 2);
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);

                path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL, 
                        startPoint.x, 
                        startPoint.y + verticalEdgeLength);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2,
                        startPoint.y + verticalEdgeLength);
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);
                break;
            }
        case FBFontSymbolI:
            {
                CGMutablePathRef path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL, 
                        startPoint.x, 
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2,
                        startPoint.y);
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);

                path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL, 
                        startPoint.x, 
                        startPoint.y + verticalEdgeLength * 2);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2,
                        startPoint.y + verticalEdgeLength * 2);
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);

                path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength, 
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength,
                        startPoint.y + verticalEdgeLength * 2);
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);
                break;
            }
        case FBFontSymbolJ:
            {
                CGMutablePathRef path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL, 
                        startPoint.x, 
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2,
                        startPoint.y);
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);

                path = CGPathCreateMutable();
                //CGMutablePathRef path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 3 / 2, 
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 3 / 2,
                        startPoint.y + verticalEdgeLength * 2);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x,
                        startPoint.y + verticalEdgeLength * 2);
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);
                break;
            }
        case FBFontSymbolK:
            {
                /*
                CGMutablePathRef path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL, 
                        startPoint.x, 
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x,
                        startPoint.y + verticalEdgeLength * 2);
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);*/

                CGMutablePathRef path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2, 
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x,
                        startPoint.y + verticalEdgeLength);
                CGPathAddLineToPoint(path, NULL,
                                  startPoint.x,
                                  startPoint.y + verticalEdgeLength * 2);
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);
                
                path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL,
                                  startPoint.x + horizontalEdgeLength * 2,
                                  startPoint.y + verticalEdgeLength * 2);
                CGPathAddLineToPoint(path, NULL,
                                     startPoint.x,
                                     startPoint.y + verticalEdgeLength);
                CGPathAddLineToPoint(path, NULL,
                                  startPoint.x,
                                  startPoint.y);
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);
                break;
            }
        case FBFontSymbolL:
            {
                CGMutablePathRef path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL, 
                        startPoint.x, 
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x,
                        startPoint.y + verticalEdgeLength * 2);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2,
                        startPoint.y + verticalEdgeLength * 2);
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);
                break;
            }
        case FBFontSymbolM:
            {
                CGMutablePathRef path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL, 
                        startPoint.x, 
                        startPoint.y + verticalEdgeLength * 2);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x,
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2,
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2,
                        startPoint.y + verticalEdgeLength * 2);
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);

                path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength,
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength, 
                        startPoint.y + verticalEdgeLength * 2);
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);
                break;
            }
        case FBFontSymbolN:
            {
                CGMutablePathRef path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL, 
                        startPoint.x, 
                        startPoint.y + verticalEdgeLength * 2);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x,
                        startPoint.y);
                
                
                CGPathAddLineToPoint(path, NULL,
                                     startPoint.x + horizontalEdgeLength * 2,
                                     startPoint.y + verticalEdgeLength * 2);
                CGPathAddLineToPoint(path, NULL,
                                     startPoint.x + horizontalEdgeLength * 2,
                                     startPoint.y);

                /*
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2,
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2,
                        startPoint.y + verticalEdgeLength * 2);
                 */
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);
                break;
            }
        case FBFontSymbolO:
            {
                CGMutablePathRef path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL, 
                        startPoint.x, 
                        startPoint.y + verticalEdgeLength * 2);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x,
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2,
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2,
                        startPoint.y + verticalEdgeLength * 2);
                CGPathCloseSubpath(path);
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);
                break;
            }
        case FBFontSymbolP:
            {
                CGMutablePathRef path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL, 
                        startPoint.x, 
                        startPoint.y + verticalEdgeLength);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2,
                        startPoint.y + verticalEdgeLength);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2,
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x,
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x,
                        startPoint.y + verticalEdgeLength * 2);
                CGPathCloseSubpath(path);
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);
                break;
            }
        case FBFontSymbolQ:
            {
                CGMutablePathRef path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL, 
                        startPoint.x, 
                        startPoint.y + verticalEdgeLength * 2);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x,
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2,
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2,
                        startPoint.y + verticalEdgeLength * 2);
                CGPathCloseSubpath(path);
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);

                path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength, 
                        startPoint.y + verticalEdgeLength);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2,
                        startPoint.y + verticalEdgeLength * 2);
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);
                break;
            }
        case FBFontSymbolR:
            {
                CGMutablePathRef path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL,
                                  startPoint.x,
                                  startPoint.y + verticalEdgeLength * 2);
                CGPathAddLineToPoint(path, NULL,
                                     startPoint.x,
                                     startPoint.y);
                CGPathAddLineToPoint(path, NULL,
                                     startPoint.x + horizontalEdgeLength * 2,
                                     startPoint.y);
                CGPathAddLineToPoint(path, NULL,
                                     startPoint.x + horizontalEdgeLength * 2,
                                     startPoint.y + verticalEdgeLength);
                CGPathAddLineToPoint(path, NULL,
                                  startPoint.x,
                                  startPoint.y + verticalEdgeLength);
                CGPathAddLineToPoint(path, NULL,
                                  startPoint.x + horizontalEdgeLength,
                                  startPoint.y + verticalEdgeLength);
                CGPathAddLineToPoint(path, NULL,
                                     startPoint.x + horizontalEdgeLength * 2,
                                     startPoint.y + verticalEdgeLength * 2);
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);
                /*
                CGMutablePathRef path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL, 
                        startPoint.x, 
                        startPoint.y + verticalEdgeLength);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2, 
                        startPoint.y + verticalEdgeLength);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2, 
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x,
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x,
                        startPoint.y + verticalEdgeLength * 2);
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);

                path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength, 
                        startPoint.y + verticalEdgeLength);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2,
                        startPoint.y + verticalEdgeLength * 2);
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);
                 */
                break;
            }
        case FBFontSymbolS:
            {
                CGMutablePathRef path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2, 
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x,
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x,
                        startPoint.y + verticalEdgeLength);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2,
                        startPoint.y + verticalEdgeLength);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2,
                        startPoint.y + verticalEdgeLength * 2);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x,
                        startPoint.y + verticalEdgeLength * 2);
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);
                break;
            }
        case FBFontSymbolT:
            {
                CGMutablePathRef path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL, 
                        startPoint.x, 
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2,
                        startPoint.y);
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);

                path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength,
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength, 
                        startPoint.y + verticalEdgeLength * 2);
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);
                break;
            }
        case FBFontSymbolU:
            {
                CGMutablePathRef path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL, 
                        startPoint.x,
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x, 
                        startPoint.y + verticalEdgeLength * 2);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2,
                        startPoint.y + verticalEdgeLength * 2);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2,
                        startPoint.y);
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);
                break;
            }
        case FBFontSymbolV:
            {
                CGMutablePathRef path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL, 
                        startPoint.x,
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength, 
                        startPoint.y + verticalEdgeLength * 2);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2,
                        startPoint.y);
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);
                break;
            }
        case FBFontSymbolW:
            {
                CGMutablePathRef path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL, 
                        startPoint.x,
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x, 
                        startPoint.y + verticalEdgeLength * 2);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2,
                        startPoint.y + verticalEdgeLength * 2);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2,
                        startPoint.y);
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);

                path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength,
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength, 
                        startPoint.y + verticalEdgeLength * 2);
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);
                break;
            }
        case FBFontSymbolX:
            {
                CGMutablePathRef path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL, 
                        startPoint.x,
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2, 
                        startPoint.y + verticalEdgeLength * 2);
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);

                path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2,
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x, 
                        startPoint.y + verticalEdgeLength * 2);
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);
                break;
            }
        case FBFontSymbolY:
            {
                CGMutablePathRef path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL, 
                        startPoint.x,
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength, 
                        startPoint.y + verticalEdgeLength);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2, 
                        startPoint.y);
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);

                path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength,
                        startPoint.y + verticalEdgeLength);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength, 
                        startPoint.y + verticalEdgeLength * 2);
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);
                break;
            }
        case FBFontSymbolZ:
            {
                CGMutablePathRef path = CGPathCreateMutable();
                CGPathMoveToPoint(path, NULL, 
                        startPoint.x,
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2, 
                        startPoint.y);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x, 
                        startPoint.y + verticalEdgeLength * 2);
                CGPathAddLineToPoint(path, NULL, 
                        startPoint.x + horizontalEdgeLength * 2, 
                        startPoint.y + verticalEdgeLength * 2);
                CGContextAddPath(ctx, path);
                CGContextStrokePath(ctx);
                CGPathRelease(path);
                break;
            }
        default:
            break;
    }
}

@end
