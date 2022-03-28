#import "IosLauncherSwiftPlugin.h"
#if __has_include(<ios_launcher_swift/ios_launcher_swift-Swift.h>)
#import <ios_launcher_swift/ios_launcher_swift-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "ios_launcher_swift-Swift.h"
#endif

@implementation IosLauncherSwiftPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftIosLauncherSwiftPlugin registerWithRegistrar:registrar];
}
@end
