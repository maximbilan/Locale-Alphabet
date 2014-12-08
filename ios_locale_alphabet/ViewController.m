//
//  ViewController.m
//  ios_locale_alphabet
//
//  Created by Maxim Bilan on 12/8/14.
//  Copyright (c) 2014 Maxim Bilan. All rights reserved.
//

#import "ViewController.h"

#import "NSLocale+Alphabet.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString *stringToTest = @"עִבְרִית";
    NSString *isoLangCode = (__bridge_transfer NSString *)CFStringTokenizerCopyBestStringLanguage((__bridge CFStringRef)stringToTest, CFRangeMake(0, stringToTest.length));
    
    NSCharacterSet * charset = [[[NSLocale alloc] initWithLocaleIdentifier:isoLangCode] objectForKey:NSLocaleExemplarCharacterSet];
    NSArray * chars = [NSLocale charactersInCharacterSet:charset];
    for (NSString *str in chars)
    {
        NSLog(@"%@", str);
    }
}

@end
