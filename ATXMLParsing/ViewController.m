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
    parser.delegate = self;
    
    [parser parse];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark NSXML Delegate Methods

-(void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary<NSString *,NSString *> *)attributeDict {
    
    if ([elementName isEqualToString:@"root"]) {
        employees = [[NSMutableArray alloc]init];
    }
    else if([elementName isEqualToString:@"Employee"]) {
        employeeModel = [[Employee alloc]init];
        NSString *emp_id = [attributeDict valueForKey:@"id"];
        employeeModel.emp_id = emp_id;
    }
    else {
        dataString = [[NSMutableString alloc]init];
    }
    
}

-(void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
    
    dataString = [NSMutableString stringWithString:string];
}

-(void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName {
    
    if ([elementName isEqualToString:@"root"]) {
        //reload tableView
    }
    else if([elementName isEqualToString:@"Employee"]) {
        [employees addObject:employeeModel];
    }
    else if([elementName isEqualToString:@"Name"]) {
        employeeModel.name = dataString;
    }
    else if([elementName isEqualToString:@"Designation"]) {
        employeeModel.designation = dataString;
    }
    else if([elementName isEqualToString:@"Contact"]) {
        employeeModel.contact = dataString;
    }
    
}

@end
