//
//  ViewController.m
//  ios_locale_alphabet
//
//  Created by Maxim Bilan on 12/8/14.
//  Copyright (c) 2014 Maxim Bilan. All rights reserved.
//

#import "ViewController.h"

#import "NSLocale+Alphabet.h"
#import "NSString+Locale.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString *textHebrew = @"עִבְרִית";
    NSArray *chars = [NSLocale alphabetFromText:textHebrew];
    for (NSString *str in chars) {
        NSLog(@"%@", str);
    }
    
    NSString *textRu = @"птнпнх";
    chars = [NSLocale alphabetFromText:textRu];
    for (NSString *str in chars) {
        NSLog(@"%@", str);
    }
}

@end
