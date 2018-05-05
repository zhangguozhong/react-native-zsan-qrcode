
package com.qrcode;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;

public class QRCodeModule extends ReactContextBaseJavaModule {

  private final ReactApplicationContext reactContext;

  public QRCodeModule(ReactApplicationContext reactContext) {
    super(reactContext);
    this.reactContext = reactContext;
  }

  @Override
  public String getName() {
    return "QRCode";
  }
}