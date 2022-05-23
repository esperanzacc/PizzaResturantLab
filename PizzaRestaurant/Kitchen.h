//
//  Kitchen.h
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "KitchenDelegate.h"

@interface Kitchen : NSObject

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings;
- (PizzaSize)pizzaSize: (NSString *)userInput;
+ (NSString *)sizeStringFromPizzaSize:(PizzaSize)size;
- (Pizza *)makeLargePepperoni;

@property (nonatomic, weak) id<KitchenDelegate> delegate;


@end
