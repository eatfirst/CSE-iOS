//
//  ADYCard.m
//  AdyenClientsideEncryptionDemo
//
//  Created by Karthikeya Udupa on 25/06/15.
//  Copyright (c) 2015 Adyen. All rights reserved.
//

#import "ADYCard.h"
#import "ADYEncrypter.h"

@implementation ADYCard

- (NSDictionary *)dictionaryRepresentation {
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];

    for (NSString *key in @[ @"number", @"holderName", @"cvc", @"expiryMonth", @"expiryYear" ]) {
        if ([self valueForKey:key]) {
            dict[key] = [self valueForKey:key];
        }
    }
    if (self.generationtime) {
        dict[@"generationtime"] = [self.dateFormatter stringFromDate:self.generationtime];
    }

    return dict;
}

- (NSData *)encode {
    return [NSJSONSerialization dataWithJSONObject:[self dictionaryRepresentation] options:0 error:nil];
}

- (NSString *)encryptWithKey:(NSString *)key {
    return [ADYEncrypter encrypt:[self encode] publicKeyInHex:key];
}

- (NSDateFormatter *)dateFormatter {
    static dispatch_once_t once;
    static NSDateFormatter *instance;
    dispatch_once(&once, ^{
      instance = [[NSDateFormatter alloc] init];
      instance.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
      instance.calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
      instance.timeZone = [NSTimeZone timeZoneWithName:@"UTC"];
      instance.dateFormat = @"yyyy-MM-dd'T'HH:mm:ss.SSS'Z'";
    });
    return instance;
}

@end
