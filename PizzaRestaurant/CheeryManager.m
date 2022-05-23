//
//  CheeryManager.m
//  PizzaRestaurant
//
//  Created by Esperanza on 2022-05-23.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import "CheeryManager.h"

@implementation CheeryManager

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
  return YES;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
  return YES;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza {
  NSLog(@"Good Pizza!");
}

@end
