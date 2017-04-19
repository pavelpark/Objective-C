//
//  TableViewController.m
//  Objective-C
//
//  Created by Pavel Parkhomey on 4/18/17.
//  Copyright © 2017 Pavel Parkhomey. All rights reserved.
//

#import "TableViewController.h"
#import "EmpolyeeDataBase.h"
@interface TableViewController () <UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableViewMain;

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableViewMain.dataSource = self;
//    self.tableViewMain.delegate = self;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [[EmpolyeeDataBase shared] count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"EmployeeCell" forIndexPath:indexPath];
    
    NSArray *employees = [[EmpolyeeDataBase shared] allEmployees];
    Employee *employee = employees[indexPath.row];
    
    
    cell.textLabel.text = employee.firstName;
    return cell;
}

@end
