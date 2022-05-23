//
//  Manager.m
//  PizzaRestaurant
//
//  Created by Esperanza on 2022-05-23.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import "Manager.h"

@implementation Manager

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
  if ([toppings containsObject:@"anchovies"]) {
    return NO;
  } else {
    return YES;
  }
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen { 
  return NO;
}

@end
