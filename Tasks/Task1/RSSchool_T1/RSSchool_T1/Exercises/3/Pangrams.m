#import "Pangrams.h"

@implementation Pangrams

// Complete the pangrams function below.
- (BOOL)pangrams:(NSString *)string {
    
    NSString* alphabet = @"abcdefghijklmnopqrstuvwxyz";
    NSInteger count = 0;
    
    NSMutableArray *mainArray = [NSMutableArray array];
    
    for (int i = 0; i < [alphabet length]; i++) {
        NSString *string = [alphabet substringWithRange:NSMakeRange(i, 1)];
        [mainArray addObject:string];
    }
    
    for (NSString* value in mainArray) {
        if ([[string lowercaseString] containsString:value]) {
            count += 1;
        }
        [string release];
    }
    
    return count == [alphabet length];
}

@end
