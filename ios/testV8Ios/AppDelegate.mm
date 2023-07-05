#import "AppDelegate.h"
// @generated begin react-native-v8:imports - expo prebuild (DO NOT MODIFY) sync-aae8e52f4335d04cb1af283f277918aba7c2df82
#ifndef FOLLY_NO_CONFIG
#define FOLLY_NO_CONFIG 1
#endif

#ifndef FOLLY_MOBILE
#define FOLLY_MOBILE 1
#endif

#ifndef FOLLY_USE_LIBCPP
#define FOLLY_USE_LIBCPP 1
#endif

#ifndef FOLLY_HAVE_PTHREAD
#define FOLLY_HAVE_PTHREAD 1
#endif

#import <memory>
#import <React/RCTCxxBridgeDelegate.h>
#import <React/RCTJSIExecutorRuntimeInstaller.h>
#import <RNV8/V8ExecutorFactory.h>
#if RCT_NEW_ARCH_ENABLED
#import <ReactCommon/RCTTurboModuleManager.h>
#endif

// @generated end react-native-v8:imports

#import <React/RCTBundleURLProvider.h>
#import <React/RCTLinkingManager.h>

// @generated begin react-native-v8:cxxBridgeCategory - expo prebuild (DO NOT MODIFY) sync-cd022d8b5744eaf0850e863a349c6d008e52c9a8
#if RCT_NEW_ARCH_ENABLED
@interface AppDelegate() <RCTCxxBridgeDelegate, RCTTurboModuleManagerDelegate>
@end
#else
@interface AppDelegate() <RCTCxxBridgeDelegate>
@end
#endif // RCT_NEW_ARCH_ENABLED

// @generated end react-native-v8:cxxBridgeCategory
@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  self.moduleName = @"main";

  // You can add your custom initial props in the dictionary below.
  // They will be passed down to the ViewController used by React Native.
  self.initialProps = @{};

  return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

- (NSURL *)sourceURLForBridge:(RCTBridge *)bridge
{
#if DEBUG
  return [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index"];
#else
  return [[NSBundle mainBundle] URLForResource:@"main" withExtension:@"jsbundle"];
#endif
}

/// This method controls whether the `concurrentRoot`feature of React18 is turned on or off.
///
/// @see: https://reactjs.org/blog/2022/03/29/react-v18.html
/// @note: This requires to be rendering on Fabric (i.e. on the New Architecture).
/// @return: `true` if the `concurrentRoot` feature is enabled. Otherwise, it returns `false`.
- (BOOL)concurrentRootEnabled
{
  return true;
}

// Linking API
- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options {
  return [super application:application openURL:url options:options] || [RCTLinkingManager application:application openURL:url options:options];
}

// Universal Links
- (BOOL)application:(UIApplication *)application continueUserActivity:(nonnull NSUserActivity *)userActivity restorationHandler:(nonnull void (^)(NSArray<id<UIUserActivityRestoring>> * _Nullable))restorationHandler {
  BOOL result = [RCTLinkingManager application:application continueUserActivity:userActivity restorationHandler:restorationHandler];
  return [super application:application continueUserActivity:userActivity restorationHandler:restorationHandler] || result;
}

// Explicitly define remote notification delegates to ensure compatibility with some third-party libraries
- (void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken
{
  return [super application:application didRegisterForRemoteNotificationsWithDeviceToken:deviceToken];
}

// Explicitly define remote notification delegates to ensure compatibility with some third-party libraries
- (void)application:(UIApplication *)application didFailToRegisterForRemoteNotificationsWithError:(NSError *)error
{
  return [super application:application didFailToRegisterForRemoteNotificationsWithError:error];
}

// Explicitly define remote notification delegates to ensure compatibility with some third-party libraries
- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo fetchCompletionHandler:(void (^)(UIBackgroundFetchResult))completionHandler
{
  return [super application:application didReceiveRemoteNotification:userInfo fetchCompletionHandler:completionHandler];
}

// @generated begin react-native-v8:jsExecutorFactoryForBridge - expo prebuild (DO NOT MODIFY) sync-5a111d72c26dbb9775e9c4efedee4ec384bd5ad8

- (std::unique_ptr<facebook::react::JSExecutorFactory>)jsExecutorFactoryForBridge:(RCTBridge *)bridge
{
#if RCT_NEW_ARCH_ENABLED
  self.turboModuleManager = [[RCTTurboModuleManager alloc] initWithBridge:bridge
                                                                 delegate:self
                                                                jsInvoker:bridge.jsCallInvoker];
  // Necessary to allow NativeModules to lookup TurboModules
  [bridge setRCTTurboModuleRegistry:self.turboModuleManager];

#if RCT_DEV
  if (!RCTTurboModuleEagerInitEnabled()) {
    /**
     * Instantiating DevMenu has the side-effect of registering
     * shortcuts for CMD + d, CMD + i,  and CMD + n via RCTDevMenu.
     * Therefore, when TurboModules are enabled, we must manually create this
     * NativeModule.
     */
    [self.turboModuleManager moduleForName:"RCTDevMenu"];
  }
#endif // RCT_DEV

  return std::make_unique<rnv8::V8ExecutorFactory>(
      facebook::react::RCTJSIExecutorRuntimeInstaller([bridge, turboModuleManager = self.turboModuleManager](facebook::jsi::Runtime &runtime) {
        if (!bridge || !turboModuleManager) {
          return;
        }
        facebook::react::RuntimeExecutor syncRuntimeExecutor =
            [&](std::function<void(facebook::jsi::Runtime & runtime_)> &&callback) { callback(runtime); };
        [turboModuleManager installJSBindingWithRuntimeExecutor:syncRuntimeExecutor];
      }));
#else
  return std::make_unique<rnv8::V8ExecutorFactory>(facebook::react::RCTJSIExecutorRuntimeInstaller(nullptr));
#endif // RCT_NEW_ARCH_ENABLED
}

// @generated end react-native-v8:jsExecutorFactoryForBridge
@end
