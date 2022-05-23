//
//  DeliveryCar.h
//  PizzaRestaurant
//
//  Created by Esperanza on 2022-05-23.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"

NS_ASSUME_NONNULL_BEGIN

@interface DeliveryCar : NSObject

- (void) deliverPizza:(Pizza *)pizza;

@end

NS_ASSUME_NONNULL_END
