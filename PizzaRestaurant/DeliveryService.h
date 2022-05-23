//
//  DeliveryService.h
//  PizzaRestaurant
//
//  Created by Esperanza on 2022-05-23.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "DeliveryCar.h"

NS_ASSUME_NONNULL_BEGIN

@class DeliveryCar;

@interface DeliveryService : NSObject

@property (nonatomic) NSMutableArray *deliverdPizzaArr;
@property (nonatomic) DeliveryCar *deliveryCar;

- (instancetype)init;
- (void) deliverPizza:(Pizza *)pizza;
- (void) pizzaHasDelivered;


@end

NS_ASSUME_NONNULL_END
