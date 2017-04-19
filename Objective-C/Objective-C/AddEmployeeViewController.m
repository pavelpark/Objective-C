//
//  AddEmployeeViewController.m
//  Objective-C
//
//  Created by Pavel Parkhomey on 4/19/17.
//  Copyright © 2017 Pavel Parkhomey. All rights reserved.
//

#import "AddEmployeeViewController.h"

@interface AddEmployeeViewController ()

- (IBAction)backToMain:(UIButton *)sender;
- (IBAction)saveButton:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UITextField *firstName;
@property (weak, nonatomic) IBOutlet UITextField *lastName;
@property (weak, nonatomic) IBOutlet UITextField *emailAdress;

@end

@implementation AddEmployeeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)backToMain:(UIButton *)sender {
}

- (IBAction)saveButton:(UIButton *)sender {
}
@end
