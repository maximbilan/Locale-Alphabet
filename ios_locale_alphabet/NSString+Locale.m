//
//  NSString+Locale.m
//  ios_locale_alphabet
//
//  Created by Maxim Bilan on 12/8/14.
//  Copyright (c) 2014 Maxim Bilan. All rights reserved.
//

#import "NSString+Locale.h"

@implementation NSString (Locale)

- (NSString *)isoLangCode
{
    if (self.length == 0) {
        return nil;
    }
    
    NSString *string = nil;
    
    // You can set a larger detect number here
    if (self.length > 30) {
        string = self;
    }
    else {
        NSMutableString *tempString = [NSMutableString stringWithString:self];
        
        while (tempString.length < 30) {
            [tempString appendFormat:@" %@",self];
        }
        
        string = tempString;
    }
    
    NSArray *tagschemes = [NSArray arrayWithObjects:NSLinguisticTagSchemeLanguage, nil];
    NSLinguisticTagger *tagger = [[NSLinguisticTagger alloc] initWithTagSchemes:tagschemes options:0];
    [tagger setString:string];
    NSString *language = [tagger tagAtIndex:0 scheme:NSLinguisticTagSchemeLanguage tokenRange:NULL sentenceRange:NULL];
    
    if (![language isEqualToString:@"und"]) {
        return language;
    }
    
    return (__bridge NSString *)CFStringTokenizerCopyBestStringLanguage((CFStringRef)string, CFRangeMake(0, MIN(string.length, 400)));
}

@end
