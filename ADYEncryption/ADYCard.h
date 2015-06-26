//
//  ADYCard.h
//  AdyenClientsideEncryptionDemo
//
//  Created by Karthikeya Udupa on 25/06/15.
//  Copyright (c) 2015 Adyen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ADYCard : NSObject
@property (nonatomic, strong) NSString *number;
@property (nonatomic, strong) NSString *holderName;
@property (nonatomic, strong) NSString *cvc;
@property (nonatomic, strong) NSString *expiryMonth;
@property (nonatomic, strong) NSString *expiryYear;

@property (nonatomic, strong) NSDate *generationtime;
@property (readonly) NSDateFormatter *dateFormatter;

/**
 *  Encrypt the card information in a JSON format using the public key provided by Adyen.
 *
 *  @param key THe public key of the merchent.
 *
 *  @return An encypted string to be used as payment payload.
 */
- (NSString *)encryptWithKey:(NSString *)key;

@end
