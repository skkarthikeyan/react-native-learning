/**
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

#import "AppDelegate.h"
#import <TrustKit/TrustKit.h>
#import <React/RCTBridge.h>
#import <React/RCTBundleURLProvider.h>
#import <React/RCTRootView.h>

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  
  // Initialize TrustKit
  // NSDictionary *trustKitConfig =
  //   @{
  //   // Auto-swizzle NSURLSession delegates to add pinning validation
  //   kTSKSwizzleNetworkDelegates: @YES,

  //   kTSKPinnedDomains: @{

  //      // Pin invalid SPKI hashes to *.yahoo.com to demonstrate pinning failures
  //      @"efghermes.com" : @{
  //          kTSKEnforcePinning:@YES,
  //          kTSKIncludeSubdomains:@YES,
  //          kTSKPublicKeyAlgorithms : @[kTSKAlgorithmRsa2048],

  //          // Wrong SPKI hashes to demonstrate pinning failure
  //          kTSKPublicKeyHashes : @[
  //             @"MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDu08E+TAPkhaqGpPr86vvGJaazasnLgVpX8zC4th90f/GFFwfWjteKllkCYvBBqJB++2nu9G4TBcJ11eXF7gyxBn94pm4mAIoFBSNZ7P4pfc8zHkyYnTLLi3w7e71b7orMKUxeCeFIKd3yhddjGjLg/h63EtB+RgGwoG8BhWu6oJHBUH8OV0DD4l59DRtyZ1IFNgUkeI2CPAHEJoZ2+RnruGZM4jx3wBzqQn5Zu+TlGMPpuI0N5tUhX7IMo2tPokVTOuRXT1o+yidkXNvKu4XT+uSlEZy4Srs3QhsgwjSObgQoMfgCDw6iR4RaHDD4yD2oMCetO8nXG5arJHud8FZXAgMBAAECggEALvzegkE2atmZiVAgSW56BqwVtisGdNGIUtF3/n9mhOc/P24ejqof4hZegMeyeViOxUz1tJvGpFt3vPNOd7i0KogawEQOW8+zV/WA1Qp5nvQvteD6NPSIr99Lm/BmexXdnPlrGv1ao3YJQtPuYoMfC4EzzdUXzCA96OBHtsbnQRpBBssrq7gzRksolCliiIfrA1vztuDXtL+As7Z7bVktrIMa/cm2NKI5JdQWg0fz6vrExJAzX4YJx5iAv0AGX3WvvLrUPUiwPi4PtJ9lsWwk5lQHodj5fUoUyxj0fcl1uk1kAWQZi708sE4nlDL9NF+z4BOvVj1ulbNMLVa/Zv0vgQKBgQD4OvASTIpwb1BkkuAGBXidvQIuJnbg7nI1QOxkOOkwyyPtXMPDxLz8hj3IcCJ8RmQInSuEOyEO69c+OySgoaGmRa7b27OtPcZaNAg6re4nkcdenmNHIwJUJDIw70LuYwrNqouABs/kIq1uCHNtmhV7uVbzMELJGe4kp7e4HTZ4YQKBgQD2TXh6mPt9uiK8Vy0mOU11Hs6kOnirJ+qRuFVZ4JOaZERuHpqFR6wCuj2Q9N4AP26SaaNP6CW5O1MoLcMjKQSRgQwnIq6+xq1bzsjt0Ba+L0gX4KDYvBYhUrg/MbyDmmPXkn693xP0bLlCtLhrjC+ir9cIX6cRbwijW7fMPnDptwKBgHc3PyNatUZIf7C9xW++4u3G36wwdvmSKzGeS6nal0wC0+9klPSJoUYaZsPD7xwGZnaonUS1bSwQYmCV4QJwfgUwBEm9G28BcyjRQn6EGBPS9JBhu0Zn7u9gLubHkjqRQJgD51mGbAOiD+7/ighCbzzrh3HmZLzWgkQCdL6s8QMhAoGBAN7rQPaczUl+lP+nWwq0ZEFzb40+CobGKsxWbJFa69yZkUGlWy7zrmANlblDlkXdI0NKbu/caYAbjGjZ+joxXpwekxQ8lLG/+ZkVL8/lPSBGhNZvjMR8fv8L8gvoBPmLW3/5a9KHO3VGjeoszJkyGM8CnPlMMVZbCxNm6JPnk6RDAoGBAKmtkhOm2fHm80ZZXfjY/sFf1OcmQFG3wuaKIANHjiwjIZuBiZaY128/XCePqTzxkb36+OWr9cK1PeswtG3OtfG3/GfxcWy7wu/395DVm6vWDGeDsJh4LYOQFg/mMIOwFFFUckvscCfxFR6jVsjWNInj5wt80qpG8f9Gs2kpUrcx"
  //             ],

  //         // Send reports for pinning failures
  //         // Email info@datatheorem.com if you need a free dashboard to see your App's reports
  //         kTSKReportUris: @[@""]
  //         },

  //    }
  // };

  // [TrustKit initSharedInstanceWithConfiguration:trustKitConfig];

  RCTBridge *bridge = [[RCTBridge alloc] initWithDelegate:self launchOptions:launchOptions];
  RCTRootView *rootView = [[RCTRootView alloc] initWithBridge:bridge
                                                   moduleName:@"myLearningProj"
                                            initialProperties:nil];

  rootView.backgroundColor = [[UIColor alloc] initWithRed:1.0f green:1.0f blue:1.0f alpha:1];

  self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
  UIViewController *rootViewController = [UIViewController new];
  rootViewController.view = rootView;
  self.window.rootViewController = rootViewController;
  [self.window makeKeyAndVisible];
  return YES;
}

- (NSURL *)sourceURLForBridge:(RCTBridge *)bridge
{
#if DEBUG
  return [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index" fallbackResource:nil];
#else
  return [[NSBundle mainBundle] URLForResource:@"main" withExtension:@"jsbundle"];
#endif
}

@end
