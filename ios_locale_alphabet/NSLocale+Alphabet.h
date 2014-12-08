//
//  NSLocale+Alphabet.h
//  ios_locale_alphabet
//
//  Created by Maxim Bilan on 12/8/14.
//  Copyright (c) 2014 Maxim Bilan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSLocale (Alphabet)

+ (NSArray *)charactersByISOLangCode:(NSString *)isoLangCode;
+ (NSArray *)charactersInCharacterSet:(NSCharacterSet *)charset;
+ (NSString *)isoLangCodeFromString:(NSString *)text;

@end
