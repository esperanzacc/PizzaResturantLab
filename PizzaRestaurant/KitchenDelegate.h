//
//  KitchenDelegate.h
//  PizzaRestaurant
//
//  Created by Esperanza on 2022-05-21.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class Kitchen;
@class Pizza;

typedef NS_ENUM(char, PizzaSize) {
  small,
  medium,
  large
};

@protocol KitchenDelegate <NSObject>

-(BOOL)kitchen:(Kitchen*)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray*)toppings;
-(BOOL)kitchenShouldUpgradeOrder:(Kitchen*)kitchen;
@optional
-(void)kitchenDidMakePizza:(Pizza *)pizza;

@end

NS_ASSUME_NONNULL_END
