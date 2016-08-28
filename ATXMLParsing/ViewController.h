//
//  ViewController.h
//  ATXMLParsing
//
//  Created by Felix ITs 01 on 27/08/16.
//  Copyright © 2016 Aashish Tamsya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    NSXMLParser *parser;
    NSMutableArray *employees;
    NSMutableString *dataString;
}

@end

