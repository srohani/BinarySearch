//
//  MyArray.h
//  BinarySearch
//
//  Created by Samer Rohani on 2015-10-20.
//  Copyright © 2015 Samer Rohani. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyArray : NSObject


-(int)searchBinary:(int)target min:(int)minArray max:(int)maxArray myArray:(NSArray *)sortArray;

-(int)findIndexOfNumber:(int)target myArray:(NSArray *)sortArray;

@end
