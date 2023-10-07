#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>
@property (nonatomic, strong) NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)notification {
    NSScreen *mainScreen = [NSScreen mainScreen];
    CGFloat screenHeight = mainScreen.frame.size.height;
    CGFloat screenWidth = mainScreen.frame.size.width;
    CGFloat menuBarHeight = 20;
    CGFloat coverWidth = 300;

    self.window = [[NSWindow alloc] initWithContentRect:NSMakeRect(screenWidth - coverWidth, screenHeight - menuBarHeight, coverWidth, menuBarHeight)
                                               styleMask:NSWindowStyleMaskBorderless
                                                 backing:NSBackingStoreBuffered
                                                   defer:NO];
    [self.window setLevel:NSMainMenuWindowLevel + 1];
    [self.window setBackgroundColor:[NSColor whiteColor]];
    [self.window makeKeyAndOrderFront:nil];
}

@end
