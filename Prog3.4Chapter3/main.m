//
//  main.m
//  Prog3.4Chapter3
//
//  Created by Tống Đăng Tình on 11/18/17.
//  Copyright © 2017 Tống Đăng Tình. All rights reserved.
//-------------------------------------------------------
// Program to access instance variables

//-------------------------------------------------------
#import <Foundation/Foundation.h>
// -------------interface section----------
@interface Fraction : NSObject{
    int numerator;
    int denomirator;
    
}

-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;
-(int)  numerator;
-(int)  denomirator;
@end

//-------------implemtation section-----------------
@implementation Fraction

-(void) print {
    NSLog(@" %i/%i", numerator, denomirator);
}

-(void) setNumerator:(int)n {
    numerator = n;
    
}

-(void) setDenominator:(int)d {
    denomirator = d;
}


-(int) numerator{
    return numerator;
}


-(int) denomirator{
    return denomirator;
}
@end

//#import <Foundation/Foundation.h>

//----------Program section-----------

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //NSLog(@"Hello, World!");
        Fraction *myFraction  = [[Fraction alloc] init];
        // Set fraction to 1/3
        [myFraction setNumerator:1];
        [myFraction setDenominator:3];
        
        
        // Display the fraction using our two new method
        NSLog(@"The value of fraction is; %i/%i",[myFraction numerator],[myFraction denomirator]);
        
    }
    return 0;
}
