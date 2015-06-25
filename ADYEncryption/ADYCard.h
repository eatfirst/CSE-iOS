//
//  ADYCard.h
//  AdyenClientsideEncryptionDemo
//
//  Created by Karthikeya Udupa on 25/06/15.
//  Copyright (c) 2015 Adyen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ADYPaymentMethod.h"

@interface ADYCard : ADYPaymentMethod
@property (nonatomic, strong) NSString *number;
@property (nonatomic, strong) NSString *holderName;
@property (nonatomic, strong) NSString *cvc;
@property (nonatomic, strong) NSString *expiryMonth;
@property (nonatomic, strong) NSString *expiryYear;

@property (nonatomic, strong) NSDate *generationtime;
@property (readonly) NSDateFormatter *dateFormatter;

@end
