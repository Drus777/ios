#import "Diagonal.h"

@implementation Diagonal

// Complete the diagonalDifference function below.
- (NSNumber *) diagonalDifference:(NSArray *)array {
    
    NSMutableArray* mainArray = [NSMutableArray new];
    NSInteger firstDiagonal = 0;
    NSInteger secondDiagonal = 0;
    
    for (NSString* сomponents in array) {
        NSArray* array = [сomponents componentsSeparatedByString:@" "];
        [mainArray addObject:array];
    }
    
    for (int i = 0; i < [mainArray count]; i++) {
        NSArray* array = [mainArray objectAtIndex:i];
        for (int j = 0; j < [array count]; j++) {
            if (i == j) {
                firstDiagonal += [[array objectAtIndex: j] intValue];
                secondDiagonal += [[array objectAtIndex: [array count] - 1 - j] intValue];
            }
        }
        [array release];
    }
    
    if (firstDiagonal > secondDiagonal) {
        return [@(firstDiagonal - secondDiagonal) autorelease];;
    } else {
        return [@(secondDiagonal - firstDiagonal) autorelease];;
    }
}

@end
