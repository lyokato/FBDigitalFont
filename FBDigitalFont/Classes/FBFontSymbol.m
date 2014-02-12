#import "FBFontSymbol.h"

@implementation FBFontSymbol

static NSMutableArray *symbols;

+ (NSArray *)symbolsForString:(NSString *)str
{
    //@[].mutableCopy is causing memory leaks because new arrays are getting created everytime it's refreshed.
    //Only create symbols if it's nil, else remove all symbols and keep reusing the NSMutableArray.
    if (symbols == nil) {
        symbols = @[].mutableCopy;
    } else {
        [symbols removeAllObjects];
    }
    
    NSString *upper = [str uppercaseString];
    for (NSInteger i = 0; i < upper.length; i++) {
        NSString *c = [upper substringWithRange:NSMakeRange(i,1)];
        if ([c isEqualToString:@"0"]) {
            [symbols addObject:[NSNumber numberWithInt:FBFontSymbol0]];
        } else if ([c isEqualToString:@"1"]) {
            [symbols addObject:[NSNumber numberWithInt:FBFontSymbol1]];
        } else if ([c isEqualToString:@"2"]) {
            [symbols addObject:[NSNumber numberWithInt:FBFontSymbol2]];
        } else if ([c isEqualToString:@"3"]) {
            [symbols addObject:[NSNumber numberWithInt:FBFontSymbol3]];
        } else if ([c isEqualToString:@"4"]) {
            [symbols addObject:[NSNumber numberWithInt:FBFontSymbol4]];
        } else if ([c isEqualToString:@"5"]) {
            [symbols addObject:[NSNumber numberWithInt:FBFontSymbol5]];
        } else if ([c isEqualToString:@"6"]) {
            [symbols addObject:[NSNumber numberWithInt:FBFontSymbol6]];
        } else if ([c isEqualToString:@"7"]) {
            [symbols addObject:[NSNumber numberWithInt:FBFontSymbol7]];
        } else if ([c isEqualToString:@"8"]) {
            [symbols addObject:[NSNumber numberWithInt:FBFontSymbol8]];
        } else if ([c isEqualToString:@"9"]) {
            [symbols addObject:[NSNumber numberWithInt:FBFontSymbol9]];
        } else if ([c isEqualToString:@"A"]) {
            [symbols addObject:[NSNumber numberWithInt:FBFontSymbolA]];
        } else if ([c isEqualToString:@"B"]) {
            [symbols addObject:[NSNumber numberWithInt:FBFontSymbolB]];
        } else if ([c isEqualToString:@"C"]) {
            [symbols addObject:[NSNumber numberWithInt:FBFontSymbolC]];
        } else if ([c isEqualToString:@"D"]) {
            [symbols addObject:[NSNumber numberWithInt:FBFontSymbolD]];
        } else if ([c isEqualToString:@"E"]) {
            [symbols addObject:[NSNumber numberWithInt:FBFontSymbolE]];
        } else if ([c isEqualToString:@"F"]) {
            [symbols addObject:[NSNumber numberWithInt:FBFontSymbolF]];
        } else if ([c isEqualToString:@"G"]) {
            [symbols addObject:[NSNumber numberWithInt:FBFontSymbolG]];
        } else if ([c isEqualToString:@"H"]) {
            [symbols addObject:[NSNumber numberWithInt:FBFontSymbolH]];
        } else if ([c isEqualToString:@"I"]) {
            [symbols addObject:[NSNumber numberWithInt:FBFontSymbolI]];
        } else if ([c isEqualToString:@"J"]) {
            [symbols addObject:[NSNumber numberWithInt:FBFontSymbolJ]];
        } else if ([c isEqualToString:@"K"]) {
            [symbols addObject:[NSNumber numberWithInt:FBFontSymbolK]];
        } else if ([c isEqualToString:@"L"]) {
            [symbols addObject:[NSNumber numberWithInt:FBFontSymbolL]];
        } else if ([c isEqualToString:@"M"]) {
            [symbols addObject:[NSNumber numberWithInt:FBFontSymbolM]];
        } else if ([c isEqualToString:@"N"]) {
            [symbols addObject:[NSNumber numberWithInt:FBFontSymbolN]];
        } else if ([c isEqualToString:@"O"]) {
            [symbols addObject:[NSNumber numberWithInt:FBFontSymbolO]];
        } else if ([c isEqualToString:@"P"]) {
            [symbols addObject:[NSNumber numberWithInt:FBFontSymbolP]];
        } else if ([c isEqualToString:@"Q"]) {
            [symbols addObject:[NSNumber numberWithInt:FBFontSymbolQ]];
        } else if ([c isEqualToString:@"R"]) {
            [symbols addObject:[NSNumber numberWithInt:FBFontSymbolR]];
        } else if ([c isEqualToString:@"S"]) {
            [symbols addObject:[NSNumber numberWithInt:FBFontSymbolS]];
        } else if ([c isEqualToString:@"T"]) {
            [symbols addObject:[NSNumber numberWithInt:FBFontSymbolT]];
        } else if ([c isEqualToString:@"U"]) {
            [symbols addObject:[NSNumber numberWithInt:FBFontSymbolU]];
        } else if ([c isEqualToString:@"V"]) {
            [symbols addObject:[NSNumber numberWithInt:FBFontSymbolV]];
        } else if ([c isEqualToString:@"W"]) {
            [symbols addObject:[NSNumber numberWithInt:FBFontSymbolW]];
        } else if ([c isEqualToString:@"X"]) {
            [symbols addObject:[NSNumber numberWithInt:FBFontSymbolX]];
        } else if ([c isEqualToString:@"Y"]) {
            [symbols addObject:[NSNumber numberWithInt:FBFontSymbolY]];
        } else if ([c isEqualToString:@"Z"]) {
            [symbols addObject:[NSNumber numberWithInt:FBFontSymbolZ]];
        } else if ([c isEqualToString:@" "]) {
            [symbols addObject:[NSNumber numberWithInt:FBFontSymbolSpace]];
        } else if ([c isEqualToString:@"!"]) {
            [symbols addObject:[NSNumber numberWithInt:FBFontSymbolExclamationMark]];
        } else if ([c isEqualToString:@":"]) {
            [symbols addObject:[NSNumber numberWithInt:FBFontSymbolColon]];
        } else {
            [symbols addObject:[NSNumber numberWithInt:FBFontSymbolSpace]];
        }
    }
    return symbols;
}

@end
