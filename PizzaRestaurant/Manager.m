//
//  Manager.m
//  PizzaRestaurant
//
//  Created by Esperanza on 2022-05-23.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import "Manager.h"
#import "KitchenDelegate.h"
#import "DeliveryService.h"


@implementation Manager
- (instancetype)init
{
  self = [super init];
  if (self) {
    _deliveryService = [DeliveryService new];
  }
  return self;
}
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

- (void)kitchenDidMakePizza:(Pizza *)pizza {
  if (pizza != nil) {
    NSLog(@"Making Pizza.");
    [_deliveryService deliverPizza:pizza];
  }
  
}
@end
