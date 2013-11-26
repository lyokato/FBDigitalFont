#import <Foundation/Foundation.h>
#import "FBFontSymbol.h"

@interface FBSquareFont : NSObject
+ (void)drawSymbol:(FBFontSymbolType)symbol
horizontalEdgeLength:(CGFloat)horizontalEdgeLength
  verticalEdgeLength:(CGFloat)verticalEdgeLength
          startPoint:(CGPoint)startPoint
           inContext:(CGContextRef)ctx;
@end
