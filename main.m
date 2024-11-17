#import <Foundation/Foundation.h>

// Kernel class interface
@interface Kernel : NSObject {
    NSString *_kernelVersion;
    NSString *_kernelType;
}
@property (nonatomic, retain) NSString *kernelVersion;
@property (nonatomic, retain) NSString *kernelType;
@end

// Kernel class implementation
@implementation Kernel
@synthesize kernelVersion = _kernelVersion;
@synthesize kernelType = _kernelType;
@end

// DisplayKext class interface
@interface DisplayKext : NSObject {
    int _res;
    int _ppi;
    double _fps;
}
@property (nonatomic, assign) int res;
@property (nonatomic, assign) int ppi;
@property (nonatomic, assign) double fps;
@end

// DisplayKext class implementation
@implementation DisplayKext
@synthesize res = _res;
@synthesize ppi = _ppi;
@synthesize fps = _fps;
@end

// Function to print DisplayKext details
void memory(DisplayKext *display) {
    display.res = 1440;
    display.ppi = 400;
    display.fps = 60.0;

    NSLog(@"Resolution: %dp", display.res);
    NSLog(@"PPI: %d", display.ppi);
    NSLog(@"FPS: %.1f", display.fps);
}

// Main function
int main(int argc, const char * argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init]; // GNUstep-compatible memory pool

    Kernel *kernelObj = [[Kernel alloc] init];
    DisplayKext *displayObj = [[DisplayKext alloc] init];

    kernelObj.kernelVersion = @"6.x";
    kernelObj.kernelType = @"Linux";

    NSLog(@"Kernel Type: %@", kernelObj.kernelType);
    NSLog(@"Kernel Version: %@", kernelObj.kernelVersion);

    memory(displayObj);

    NSLog(@"Objective-C Linux Kernel V6.X");

    [kernelObj release];
    [displayObj release];
    [pool release];

    return 0;
}
