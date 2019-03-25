#import "Encryption.h"

@implementation Encryption

// Complete the encryption function below.
- (NSString *)encryption:(NSString *)string {
    
    NSString* cleane = [string stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSInteger count = [cleane length];
    NSInteger columns = (NSInteger)ceil(sqrt(count));
    NSInteger rows = (NSInteger)ceil(count / (float)columns);
    
    NSMutableArray* mutArray = [NSMutableArray array];
    for (int i = 0; i < [cleane length]; i++) {
        NSString *string = [cleane substringWithRange:NSMakeRange(i, 1)];
        [mutArray addObject:string];
        [string release];
    }
    
    NSMutableArray* encryption = [NSMutableArray array];
    for (int i = 0; i < rows; i++) {
        NSMutableArray* output = [NSMutableArray new];
        for (int j = 0; j < columns; j++) {
            if ([mutArray count] > columns*i+j) {
                [output addObject:[mutArray objectAtIndex:columns*i+j]];
            }
        }
        [encryption addObject:output];
        [output release];
    }
    
    NSString* outputString = @"";
    
    for (int i = 0; i < columns; i++) {
        for (int j = 0; j < rows; j++) {
            if ([[encryption objectAtIndex:j] count] > i) {
                outputString = [outputString stringByAppendingString:[[encryption objectAtIndex:j] objectAtIndex:i]];
            }
        }
        if (i != columns - 1) {
            outputString = [outputString stringByAppendingString:@" "];
        }
    }
    
    [cleane release];
    
    return outputString;
}


@end
