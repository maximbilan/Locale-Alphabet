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
    
    NSString *textHebrew = @"עִבְרִית";
    NSString *isoLangCode = [NSLocale isoLangCodeFromString:textHebrew];
    NSArray *chars = [NSLocale charactersByISOLangCode:isoLangCode];
    for (NSString *str in chars) {
        NSLog(@"%@", str);
    }
    
    NSString *textRu = @"птнпнх";
    isoLangCode = [NSLocale isoLangCodeFromString:textRu];
    chars = [NSLocale charactersByISOLangCode:isoLangCode];
    for (NSString *str in chars) {
        NSLog(@"%@", str);
    }
}

@end
