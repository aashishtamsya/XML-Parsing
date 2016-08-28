//
//  ViewController.h
//  ATXMLParsing
//
//  Created by Felix ITs 01 on 27/08/16.
//  Copyright © 2016 Aashish Tamsya. All rights reserved.
//

#define kEmployeeCellIdentifier @"employeeCell"

#import <UIKit/UIKit.h>
#import "Employee.h"
#import "EmployeeTableViewCell.h"

@interface ViewController : UIViewController<NSXMLParserDelegate,UITableViewDelegate,UITableViewDataSource>
{
    NSXMLParser *parser;
    NSMutableArray *employees;
    NSMutableString *dataString;
    Employee *employeeModel;
}
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

