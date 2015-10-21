//
//  MyArray.m
//  BinarySearch
//
//  Created by Samer Rohani on 2015-10-20.
//  Copyright © 2015 Samer Rohani. All rights reserved.
//

#import "MyArray.h"

@implementation MyArray



-(int)searchBinary:(int)target min:(int)minArray max:(int)maxArray myArray:(NSArray *)sortArray {
    
    int mid = (minArray + maxArray) / 2;
    
    NSNumber *midNumber = sortArray[mid];
    
    if (target == midNumber.intValue) {
        
        return mid;
        
    } else if (target > midNumber.intValue) {
        
        minArray = mid + 1;
        return [self searchBinary:target min:minArray max:maxArray myArray:sortArray];
        
        
        
    } else if (target < midNumber.intValue) {
        
        maxArray = mid - 1;
        return [self searchBinary:target min:minArray max:maxArray myArray:sortArray];

        
    }
    return -1;
    

}

-(int)findIndexOfNumber:(int)target myArray:(NSArray *)sortArray {
    
    return [self searchBinary:(int)target min:(int)minArray max:(int)maxArray myArray:(NSArray *)sortArray - 1];

    
    
    
}



@end
