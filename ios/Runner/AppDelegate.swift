import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
      let _: FlutterViewController = window?.rootViewController as! FlutterViewController
          
      // Call the static method 'register' directly on the type 'PhotoGalleryPlugin'
      PhotoGalleryPlugin.register(with: registrar(forPlugin: "PhotoGalleryPlugin")!)
          
      GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
