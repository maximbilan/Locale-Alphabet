//
//  NSLocale+Alphabet.m
//  ios_locale_alphabet
//
//  Created by Maxim Bilan on 12/8/14.
//  Copyright (c) 2014 Maxim Bilan. All rights reserved.
//

#import "NSLocale+Alphabet.h"
#import "NSString+Locale.h"

@implementation NSLocale (Alphabet)

+ (NSArray *)alphabetFromText:(NSString *)text
{
    NSCharacterSet *charset = [[[NSLocale alloc] initWithLocaleIdentifier:text.isoLangCode] objectForKey:NSLocaleExemplarCharacterSet];
    return [self charactersInCharacterSet:charset];
}

+ (NSArray *)charactersInCharacterSet:(NSCharacterSet *)charset
{
    NSMutableArray *array = [NSMutableArray array];
    NSData *data = [charset bitmapRepresentation];
    const char *bytes = [data bytes];
    
    for (int i = 0; i < 8192; ++i) {
        if (bytes[i >> 3] & (((unsigned int)1) << (i & 7))) {
            [array addObject:[NSString stringWithFormat:@"%C", (unichar)i]];
        }
    }
    return [NSArray arrayWithArray:array];
}

@end
