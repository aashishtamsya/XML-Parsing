//
//  ViewController.m
//  ATXMLParsing
//
//  Created by Felix ITs 01 on 27/08/16.
//  Copyright © 2016 Aashish Tamsya. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSURL *xmlURLPath = [[NSBundle mainBundle]URLForResource:@"Employee" withExtension:@"xml"];
    parser = [[NSXMLParser alloc]initWithContentsOfURL:xmlURLPath];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
