//
//  main.m
//  BinarySearch
//
//  Created by Samer Rohani on 2015-10-20.
//  Copyright © 2015 Samer Rohani. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "MyArray.h"









int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        NSArray *listOfNumbers = @[@1,@2,@3,@4,@5,@6,@7,@8,@9,@10,@11,@12,@13,@14,@15,@16,@17,@18,@19,@20,@21,@22,@23,@24,@25,@26];
        
        NSArray *listOfNumbers = @[@3,@5,@7,@9,@11,@13];
        
        MyArray *myArray = [[MyArray alloc] init];
        int index = [myArray searchBinary:7 min:0 max:(int)listOfNumbers.count - 1 myArray:listOfNumbers];
        
        
        
        NSLog(@"array you want is in the position %d", index);
        NSLog(@"my target number is %@", listOfNumbers[index]);
        
        
        
    }
    return 0;
}
