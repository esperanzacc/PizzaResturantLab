//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"
#import "Manager.h"
#import "CheeryManager.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        
        
      Kitchen *restaurantKitchen = [Kitchen new];
      Manager *manager = [Manager new];
      CheeryManager *cheeryManager = [CheeryManager new];
        
        while (TRUE) {
            // Loop forever
          NSLog(@"You can choose one: 1.Manager, 2.CheeryManager, or 3.None.");
          char str[100];
          fgets (str, 100, stdin);
          
          NSString *managerInput = [[NSString alloc] initWithUTF8String:str];
          managerInput = [managerInput stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
          
          NSLog(@"Manager was %@", managerInput);
          if ([[managerInput lowercaseString]isEqualToString:@"1"]) {
            if (manager == nil) {
              manager = [Manager new];
            } else {
              restaurantKitchen.delegate = manager;
            }
          } else if ([[managerInput lowercaseString]isEqualToString:@"2"]) {
            if (manager == nil) {
              cheeryManager = [CheeryManager new];
            } else {
              restaurantKitchen.delegate = cheeryManager;
            }
          } else if ([[managerInput lowercaseString]isEqualToString:@"3"]) {
            NSLog(@"Please pick your pizza size and toppings:");

            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
          
          if ([inputString isEqualToString:@"pepperoni"]) {
            [restaurantKitchen makeLargePepperoni];
            NSLog(@"\nYour largePepperoni pizza is here.");
          } else {
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            
            // And then send some message to the kitchen...
          PizzaSize orderSize = [restaurantKitchen pizzaSize:[commandWords objectAtIndex:0]];
          NSArray *toppingsArray = [commandWords subarrayWithRange:NSMakeRange(1, [commandWords count] - 1)];
          [restaurantKitchen makePizzaWithSize:orderSize toppings:toppingsArray];
         
          NSString *pizzaSize = [Kitchen sizeStringFromPizzaSize:orderSize];
          NSString *pizzaToppings = [toppingsArray componentsJoinedByString:@", "];
          NSLog(@"\nYour pizza is %@ size with %@.", pizzaSize, pizzaToppings);
          }
          
        }
      }

    }
    return 0;
}

