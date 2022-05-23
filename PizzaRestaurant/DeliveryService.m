//
//  DeliveryService.m
//  PizzaRestaurant
//
//  Created by Esperanza on 2022-05-23.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import "DeliveryService.h"
#import "Pizza.h"
#import "DeliveryCar.h"

@implementation DeliveryService

- (instancetype)init
{
  self = [super init];
  if (self) {
    _deliverdPizzaArr = [NSMutableArray new];
    _deliveryCar = [DeliveryCar new];
  }
  return self;
}

- (void) deliverPizza:(Pizza *)pizza {
  [_deliverdPizzaArr addObject:pizza];
  [_deliveryCar deliverPizza:pizza];
}

- (void) pizzaHasDelivered {
  
  NSLog(@"Here is record of %@", _deliverdPizzaArr);

}
@end
