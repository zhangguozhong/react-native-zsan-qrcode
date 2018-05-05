
# react-native-code

## Getting started

`$ npm install react-native-code --save`

### Mostly automatic installation

`$ react-native link react-native-code`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-code` and add `QRCode.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libQRCode.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.QRCodePackage;` to the imports at the top of the file
  - Add `new QRCodePackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-code'
  	project(':react-native-code').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-code/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-code')
  	```


## Usage
```javascript
import QRCode from 'react-native-code';

// TODO: What to do with the module?
QRCode;
```
  