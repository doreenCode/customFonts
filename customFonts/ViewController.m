//
//  ViewController.m
//  customFonts
//
//  Created by DCT on 9/17/15.
//  Copyright © 2015 DCT. All rights reserved.
//
//
//  The MIT License (MIT)
//
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

#import "ViewController.h"
#define Rgb2UIColor(r, g, b)  [UIColor colorWithRed:((r) / 255.0) green:((g) / 255.0) blue:((b) / 255.0) alpha:1.0]

@interface ViewController ()

@end

@implementation ViewController{
    
   //Create a scrollView
    UIScrollView *customFontsScrollView;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //Create ScrollView
    CGRect fullScreenRect=CGRectMake(self.view.bounds.origin.x, self.view.bounds.origin.y, self.view.bounds.size.width, self.view.bounds.size.height);
    customFontsScrollView=[[UIScrollView alloc] initWithFrame:fullScreenRect];
    customFontsScrollView.contentSize=CGSizeMake(375,16500);
    
    // do any further configuration to the scroll view
   
    
    // release scrollView as self.view retains it
    self.view=customFontsScrollView;
      [customFontsScrollView setBackgroundColor:Rgb2UIColor(238,209,180)];
    
    
    NSArray *familyNamesArray = [[NSArray alloc] initWithArray:[UIFont familyNames]];
    NSArray *fontNamesArray;
    NSInteger fontFamily, singleFont , currentY;
    currentY = 1;
    for (fontFamily=0; fontFamily <[familyNamesArray count]; ++fontFamily)
    {
        //NSLog(@"Font Family: %@", [familyNamesArray objectAtIndex:fontFamily]);
        
        fontNamesArray = [[NSArray alloc] initWithArray:
                     [UIFont fontNamesForFamilyName:
                      [familyNamesArray objectAtIndex:fontFamily]]];
        
        UILabel *fontFamilyLabel =  [[UILabel alloc] initWithFrame: CGRectMake(30,currentY * 50,300,50)];
        UIFont *altFont = [UIFont fontWithName:[familyNamesArray objectAtIndex:fontFamily] size:20.0];
        fontFamilyLabel.text = [familyNamesArray objectAtIndex:fontFamily]; //etc...
        [fontFamilyLabel setFont:altFont];
        [customFontsScrollView addSubview:fontFamilyLabel];
        currentY ++;

        
        for (singleFont=0; singleFont<[fontNamesArray count]; ++singleFont)
        {
            
            //NSLog(@"Font Types: %@", [fontNamesArray objectAtIndex:singleFont]);
            
           
            UILabel *fontNamesLabel =  [[UILabel alloc] initWithFrame: CGRectMake(60,currentY * 50,300,50)];
            altFont = [UIFont fontWithName:[fontNamesArray objectAtIndex:singleFont] size:20.0];
            fontNamesLabel.text = [fontNamesArray objectAtIndex:singleFont]; //etc...
            [fontNamesLabel setFont:altFont];
            [customFontsScrollView addSubview:fontNamesLabel];
            currentY ++;


            }
        }
    
   }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
