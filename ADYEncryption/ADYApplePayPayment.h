//
//  ADYApplePayPayment.h
//  AdyenClientsideEncryptionDemo
//
//  Created by Karthikeya Udupa on 14/11/2016.
//  Copyright © 2016 Adyen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ADYApplePayPayment : NSObject
@property (nonatomic, strong) NSString *paymentToken;
- (BOOL)isAuthorised;
@end
