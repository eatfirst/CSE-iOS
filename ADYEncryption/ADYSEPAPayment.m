//
//  ADYSEPAPayment.m
//  AdyenClientsideEncryptionDemo
//
//  Created by Karthikeya Udupa on 25/06/15.
//  Copyright (c) 2015 Adyen. All rights reserved.
//

#import "ADYSEPAPayment.h"

@implementation ADYSEPAPayment

- (NSString *)encryptWithKey:(NSString *)key {
    NSString *encryptedOwnerName = [[NSString alloc] initWithData:[ADYEncrypter rsaEncrypt:[self.ownerName dataUsingEncoding:NSUTF8StringEncoding] withKeyInHex:key] encoding:NSUTF8StringEncoding];
    NSString *encryptedIBAN = [[NSString alloc] initWithData:[ADYEncrypter rsaEncrypt:[self.iban dataUsingEncoding:NSUTF8StringEncoding] withKeyInHex:key] encoding:NSUTF8StringEncoding];

    if (encryptedOwnerName && encryptedIBAN) {
        NSDictionary *cardData = @{ @"iban" : encryptedIBAN,
                                    @"ownerName" : encryptedOwnerName };
        NSData *jsonData = [NSJSONSerialization dataWithJSONObject:cardData options:0 error:nil];
        return [[NSString alloc] initWithBytes:[jsonData bytes] length:[jsonData length] encoding:NSUTF8StringEncoding];
    }
    return nil;
}

@end
