# FBDigitalFont

![Example](http://static.squarespace.com/static/51c2c539e4b032aad7050f2e/t/529405dee4b006d90611f81b/1385432543354/fonts_iphone.png?format=750w "DigitalFontExample")

This library includes some kind of digital styled font drawer. They're not TTF files or something. They just draw fonts with CoreGraphics. So, you don't need to worry about redistribution license of font files when you release your application.

## Example

### Bitmap Font

![BitmapFont](http://static.squarespace.com/static/51c2c539e4b032aad7050f2e/t/5294a08ee4b080890ab2d599/1385472143725/FBFontBitmap.png?format=1500w "BitmapFont")

supporting 
```
A-Z, 0-9, !:
```

### LCD Font

![LCDFont](http://static.squarespace.com/static/51c2c539e4b032aad7050f2e/t/5294a0aae4b0f601b40f61a0/1385472171287/FBFontLCD.png?format=1500w "LCDFont")

supporting 
```
0-9, dash
```

### Square Font

![SquareFont](http://static.squarespace.com/static/51c2c539e4b032aad7050f2e/t/5294a0bfe4b02cc5320e5d8e/1385472192323/FBFontSquare.png?format=1500w "SquareFont")

supporting 
```
A-Z, 0-9, dash
```

## GLOWING EFFECT

I guess this kind of fonts have high affinity to glowing effects.
So I support same effect as [FBGlowLabel]("http://github.com/lyokato/fbglowlabel").

All you have to do is to set 4 properties.

- glowColor
- innnerGlowColor
- glowSize
- innerGlowSize

## APPLICATION EXAMPLE

In my app, "Flashback", Most of digital styled fonts are provided by this technique.

![Flashback](http://static.squarespace.com/static/51c2c539e4b032aad7050f2e/t/5280c72be4b05ebb58c32579/1384171308891/Screens5.png?format=1500w "Flashback")

For more detail, access to [Flashback Calendar](http://flashback-calendar.com/)

## SETTING UP

If you use CocoaPods, add following line into your Podfile

```
pod 'FBDigitalFont', :git => 'https://github.com/lyokato/FBDigitalFont.git'
```

or directly git clone or download from this page. 

## IMPLEMENTATION

This includes some UIView classes which is customized to handle these fonts easily. 

- FBBitmapFontView
- FBLCDFontView
- FBSquareFontView

Or If you want, you can directly use drawer classes.

- FBBitmapFont
- FBLCDFont
- FBSquareFont

Each of view classes require you to call resetSize method after modified properties to adjust view size according to modified parameters.
Don't forget about this.

### FBBitmapFontView

```
#import <FBDigitalFont/FBBitmapFontView.h>

- (void)setupBitmapFontView
{
    CGRect frame = CGRectMake(10, 60, 300, 50);
    FBBitmapFontView *v = [[FBBitmapFontView alloc] initWithFrame:frame];
    v.text = @"BITMAP";
    v.numberOfBottomPaddingDot = 1;
    v.numberOfTopPaddingDot    = 1;
    v.numberOfLeftPaddingDot   = 2;
    v.numberOfRightPaddingDot  = 2;
    v.glowSize = 20.0;
    v.innerGlowSize = 3.0;
    v.edgeLength = 5.0;
    [self.view addSubview:v];
    [v resetSize];
}
```

- dotType
- edgeLength
- margin
- numberOfLeftPaddingDot
- numberOfTopPaddingDot
- numberOfRightPaddingDot
- numberOfBottomPaddingDot
- ~~numberOfPaddingDotWithinDigits~~ numberOfPaddingDotsBetweenDigits
- offColor
- onColor
- glowColor
- innerGlowColo
- glowSize
- innerGlowSize
- text

![BitmapFontDescription](http://static.squarespace.com/static/51c2c539e4b032aad7050f2e/t/52975587e4b05482b01991b7/1385649545573/bitmap_desc.png?format=1500w "BitmapFontDescription")

### FBLCDFontView

```
#import <FBDigitalFont/FBLCDFontView.h>

- (void)setupLCDFontView
{
    CGRect frame = CGRectMake(40, 150, 300, 50);
    FBLCDFontView *v = [[FBLCDFontView alloc] initWithFrame:frame];
    v.text = @"20141231";
    v.lineWidth = 4.0;
    v.drawOffLine = YES;
    v.edgeLength = 20;
    v.margin = 10.0;
    v.backgroundColor = [UIColor blackColor];
    v.horizontalPadding = 20;
    v.verticalPadding = 14;
    v.glowSize = 10.0;
    v.glowColor = UIColorFromRGB(0x00ffff);
    v.innerGlowColor = UIColorFromRGB(0x00ffff);
    v.innerGlowSize = 3.0;
    [self.view addSubview:v];
    [v resetSize];
}
```

- drawOffLine
- edgeLength
- margin
- lineWidth
- horizontalPadding
- verticalPadding
- glowSize
- innerGlowSize
- lineColor
- offColor
- glowColor
- innerGlowColor
- text

![LCDFontDescription](http://static.squarespace.com/static/51c2c539e4b032aad7050f2e/t/529755a0e4b0a6ba0e3444c0/1385649570268/lcd_desc.png?format=1500w "LCDFontDescription")

### FBSquareFontView

```
#import <FBDigitalFont/FBSquareFontView.h>

- (void)setupSquareFontView
{
    CGRect frame = CGRectMake(10, 240, 300, 50);
    FBSquareFontView *v = [[FBSquareFontView alloc] initWithFrame:frame];
    v.text = @"SQUARE";
    v.lineWidth = 3.0;
    v.lineCap = kCGLineCapRound;
    v.lineJoin = kCGLineJoinRound;
    v.margin = 12.0;
    v.backgroundColor = [UIColor blackColor];
    v.horizontalPadding = 30;
    v.verticalPadding = 14;
    v.glowSize = 10.0;
    v.glowColor = UIColorFromRGB(0x00ffff);
    v.innerGlowColor = UIColorFromRGB(0x00ffff);
    v.lineColor = UIColorFromRGB(0xffffff); // 0xffdd66
    v.innerGlowSize = 2.0;
    v.verticalEdgeLength = 12;
    v.horizontalEdgeLength = 14;
    [self.view addSubview:v];
    [v resetSize];
}

```

- horizontalEdgeLength
- verticalEdgeLength
- margin
- lineWidth
- horizontalPadding
- verticalPadding
- glowSize
- innerGlowSize
- lineJoin
- lineCap
- lineColor
- glowColor
- innerGlowColor
- text

## SEE ALSO

If you don't need digital font but glowing effect,
See [FBGlowLabel](http://github.com/lyokato/fbglowlabel "FBGlowLabel")

![FBGlowLabelImage](http://static.squarespace.com/static/51c2c539e4b032aad7050f2e/t/52821ce0e4b03c032e6c1113/1384258840734/glow.png?format=750w "FBGlowLabelImage")

## FOR MORE DETAIL

This repository includes demo project, so you can dig into it for more detail. 

