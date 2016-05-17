//
//  main.m
//  ArrayAbsurdity


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *line = @"5;6,1,2,0,0";
        NSArray *componentsArray = [line componentsSeparatedByString:@";"];
        NSInteger arrayCount = [[componentsArray objectAtIndex:0]integerValue];
        NSArray *numberStringsArray = [[componentsArray objectAtIndex:1] componentsSeparatedByString:@","];
        BOOL duplicateFound = NO;
        
        NSInteger i = 0;
        for (i = 0; i < arrayCount - 1; i++) {
            NSString *numStringAtIndexI = [numberStringsArray objectAtIndex:i];
            NSLog(@"numStringAtIndexI: %@", numStringAtIndexI);
            
            NSInteger j = 0;
            for (j = 1; j < arrayCount - i; j++) {
                NSString *numStringAtIndexJ = [numberStringsArray objectAtIndex:j + i];

                if ([numStringAtIndexI isEqualToString:numStringAtIndexJ]) {
                    NSLog(@"repeated number is %@", numStringAtIndexI);
                    duplicateFound = YES;
                    break;
                }
                else {
                    NSLog(@"%@ not duplicate", numStringAtIndexJ);
                }
            }
            if (duplicateFound) {
                break;
            }
        }
    }
    return 0;
}
