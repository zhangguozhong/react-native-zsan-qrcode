
# react-native-zsan-qrcode

## Getting started

`$ npm install react-native-zsan-qrcode --save`

### Mostly automatic installation

`$ react-native link react-native-zsan-qrcode`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-zsan-qrcode` and add `QRCode.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libQRCode.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.QRCodePackage;` to the imports at the top of the file
  - Add `new QRCodePackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-zsan-qrcode'
  	project(':react-native-zsan-qrcode').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-zsan-qrcode/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-zsan-qrcode')
  	```


## Usage
```javascript
import QRCodeView from 'react-native-zsan-qrcode';

// TODO: What to do with the module?
QRCodeView;
```
  
