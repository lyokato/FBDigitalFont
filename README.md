# FBDigitalFont

This library includes some kind of font drawer. They're not TTF files or something. They just draw with CoreGraphics. So, you don't need to worry about redistribution license of font files when you release your application.

This includes some UIView classes which is customized to handle these fonts easily. 

- FBBitmapFontView
- FBLCDFontView
- FBSquareFontView

Or If you want, you can directly use drawer classes.

- FBBitmapFont
- FBLCDFont
- FBSquareFont

## Example

![Example](http://static.squarespace.com/static/51c2c539e4b032aad7050f2e/t/529405dee4b006d90611f81b/1385432543354/fonts_iphone.png?format=750w "DigitalFontExample")

### Bitmap Font

![BitmapFont](http://static.squarespace.com/static/51c2c539e4b032aad7050f2e/t/5294a08ee4b080890ab2d599/1385472143725/FBFontBitmap.png?format=1500w "BitmapFont")

### LCD Font

![LCDFont](http://static.squarespace.com/static/51c2c539e4b032aad7050f2e/t/5294a0aae4b0f601b40f61a0/1385472171287/FBFontLCD.png?format=1500w "LCDFont")

### Square Font

![SquareFont](http://static.squarespace.com/static/51c2c539e4b032aad7050f2e/t/5294a0bfe4b02cc5320e5d8e/1385472192323/FBFontSquare.png?format=1500w "SquareFont")

### SUPPORTING CHARACTER

- Digit (0-1)
- Upper Case Alphabet (A-Z)
- Dash (-)

## GLOWING EFFECT

I guess this kind of fonts have high affinity to glowing effects.
So I support same effect as FBGlowLabel.

All you have to do is to set 4 properties.

- glowColor
- innnerGlowColor
- glowSize
- innerGlowSize

[See also FBGlowLabel](http://github.com/lyokato/fbglowlabel)

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

## FOR MORE DETAIL

This repository includes demo project, so you can dig into it for more detail. 

