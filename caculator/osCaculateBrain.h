//
//  osCaculateBrain.h
//  caculator
//
//  Created by hai.li on 6/2/13.
//  Copyright (c) 2013 hai.li. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface osCaculateBrain : NSObject
- (void)pushOperand:(double) operand;
- (double) performOperation:(NSString *) operation;

@end
