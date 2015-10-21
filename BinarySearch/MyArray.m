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
    
    
    if (target == [sortArray[mid] intValue]) {
        
        return mid;
        
    } else if (target > [sortArray[mid] intValue]) {
        
        minArray = mid + 1;
        return [self searchBinary:target min:minArray max:maxArray myArray:sortArray];
        
        
        
    } else if (target < [sortArray[mid] intValue]) {
        
        maxArray = mid - 1;
        return [self searchBinary:target min:minArray max:maxArray myArray:sortArray];

        
    }
    return -1;
    

}

-(int)searchBinary:(int)target myArray:(NSArray *)sortArray {
    
    
    
    return [self searchBinary:(int)target min:0 max:(int)sortArray -1  myArray:(NSArray *)sortArray];
    
}

    
    
    




@end
