//
//  osCaculateBrain.m
//  caculator
//
//  Created by hai.li on 6/2/13.
//  Copyright (c) 2013 hai.li. All rights reserved.
//

#import "osCaculateBrain.h"

@interface osCaculateBrain()
@property (nonatomic,strong)NSMutableArray *operandStack;
@end


@implementation osCaculateBrain

@synthesize operandStack = _operandStack;

- (NSMutableArray *)operandStack
{
    if(_operandStack == nil)_operandStack = [[NSMutableArray alloc] init];
    return _operandStack;
}

- (void)setOperandStack:(NSMutableArray *)operandStack{
    _operandStack = operandStack;
}

- (double) popOperand
{
    //peek the last object of the array
    NSNumber *operandObject = [self.operandStack lastObject];
    //remove last
    if (self.operandStack) {
        [self.operandStack removeLastObject];
    }
    
    return [operandObject doubleValue];
}


- (void)pushOperand:(double)operand
{
    [self.operandStack addObject:[NSNumber numberWithDouble:operand]];
}

- (double)performOperation:(NSString *) operation{
    double result = 0;
    if([operation isEqualToString:@"+"]){
        result  = [self popOperand] + [self popOperand];
    } else if ([@"*" isEqualToString:operation]){
        result = [self popOperand] * [self popOperand];
    } else if ([@"-" isEqualToString:operation]){
        result = [self popOperand] - [self popOperand];
    } else if ([@"/" isEqualToString:operation]){
        result = [self popOperand] / [self popOperand];
    }
    
    //push result into the stack
    [self pushOperand:result];
    //caculate result
    return result;
}



@end
