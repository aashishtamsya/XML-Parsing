//
//  EmployeeTableViewCell.h
//  ATXMLParsing
//
//  Created by Felix ITs 01 on 28/08/16.
//  Copyright © 2016 Aashish Tamsya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EmployeeTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *labelEmployeeId;

@property (weak, nonatomic) IBOutlet UILabel *labelName;

@property (weak, nonatomic) IBOutlet UILabel *labelContact;

@property (weak, nonatomic) IBOutlet UILabel *labelDesignation;




@end
