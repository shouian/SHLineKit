# SHLineKit

This is a simple kit used to share photo / text message to your NAVER LINE app.

Note that this kit supports only LINE Version larger than 2.0 

Support ARC & MRC.

## Usage

Use the following class method to check if your iPhone installed LINE App,
Return YES means you have already installed it.
```ObjC
+ (BOOL)isUserInstallLine;
```

This method supports to send message to your LINE App
In this method, we have already transfered it as UTF-8 encoding; thus you don't have to do this.

```ObjC
+ (void)shareLineWithMessage:(NSString *)message;
```

This method supports to send image to your LINE App.
Use UIPasteboard to do this.

```ObjC
+ (void)shareLineWithImage:(UIImage *)image;
```

## Effect Screenshot
[![](https://raw.github.com/shouian/SHLineKit/master/Screens/IMG_0233.PNG)](https://raw.github.com/shouian/SHLineKit/master/Screens/IMG_0233.PNG)

[![](https://raw.github.com/shouian/SHLineKit/master/Screens/IMG_0225.jpg)](https://raw.github.com/shouian/SHLineKit/master/Screens/IMG_0225.jpg)

[![](https://raw.github.com/shouian/SHLineKit/master/Screens/IMG_0228.PNG)](https://raw.github.com/shouian/SHLineKit/master/Screens/IMG_0228.PNG)

[![](https://raw.github.com/shouian/SHLineKit/master/Screens/IMG_0230.PNG)](https://raw.github.com/shouian/SHLineKit/master/Screens/IMG_0230.PNG)

# More information

For more information, please contact us with

takobearx@gmail or 
our website: [Takobear] (http://www.takobear.tw/)





