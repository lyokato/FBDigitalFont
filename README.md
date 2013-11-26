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

![Example](http://static.squarespace.com/static/51c2c539e4b032aad7050f2e/t/529405dee4b006d90611f81b/1385432543354/fonts_iphone.png?format=750w "DigitalFontExample")

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

