//
//  ADYApplePayPayment.m
//  AdyenClientsideEncryptionDemo
//
//  Created by Karthikeya Udupa on 14/11/2016.
//  Copyright © 2016 Adyen. All rights reserved.
//

#import "ADYApplePayPayment.h"

@implementation ADYApplePayPayment
- (BOOL)isAuthorised {
	if (self.paymentToken && self.paymentToken.length > 0) {
		return YES;
	}
}
@end
