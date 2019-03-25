#import "SummArray.h"

@implementation SummArray

// Complete the summArray function below.
- (NSNumber *)summArray:(NSArray *)array {
    
    NSInteger summElements = 0;
    
        for (NSNumber* value in array) {
            summElements += [value integerValue];
       }
   
    return [@(summElements) autorelease];
}

@end
