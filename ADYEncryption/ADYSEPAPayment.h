//
//  ADYSEPAPayment.h
//  AdyenClientsideEncryptionDemo
//
//  Created by Karthikeya Udupa on 25/06/15.
//  Copyright (c) 2015 Adyen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ADYEncrypter.h"

@interface ADYSEPAPayment : NSObject
@property (nonatomic, strong) NSString *iban;
@property (nonatomic, strong) NSString *ownerName;
@end
