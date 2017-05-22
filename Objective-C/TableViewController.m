//
//  TableViewController.m
//  Objective-C
//
//  Created by Pavel Parkhomey on 4/18/17.
//  Copyright © 2017 Pavel Parkhomey. All rights reserved.
//

#import "TableViewController.h"
#import "EmpolyeeDataBase.h"
#import "AddEmployeeViewController.h"

@interface TableViewController () <UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableViewMain;

@end

@implementation TableViewController

-(void)viewWillAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [self.tableViewMain reloadData];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableViewMain.dataSource = self;
//    self.tableViewMain.delegate = self;
}
- (IBAction)clearListButtonPressed:(UIBarButtonItem *)sender {
    [[EmpolyeeDataBase shared] removeAllEmployees];
    [self.tableViewMain reloadData];
}



-(BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath{
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [[EmpolyeeDataBase shared] removeEmployeeatIndex:(int)indexPath.row];
        [self.tableViewMain reloadData];
    }
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [[EmpolyeeDataBase shared] count];
   }


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"EmployeeCell" forIndexPath:indexPath];
    
    NSArray *employees = [[EmpolyeeDataBase shared] allEmployees];
    Employee *employee = employees[indexPath.row];
    
    cell.textLabel.text = [NSString stringWithFormat:@"%@ %@ %@", employee.firstName, employee.lastName, employee.email];
    
    return cell;
}

@end
