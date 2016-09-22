//
//  MessageViewController.m
//  planGridClone
//
//  Created by Mr Ruby on 16/09/16.
//  Copyright © 2016 Rnjai Lamba. All rights reserved.
//

#import "MessageViewController.h"
#import "NewMessageViewController.h"
#import "MessageCell.h"

@interface MessageViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation MessageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.frame = [[UIScreen mainScreen]bounds];
    [self setUpNavBar];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.tableView registerNib:[UINib nibWithNibName:@"MessageCell" bundle:nil] forCellReuseIdentifier:@"cell"];
    // Do any additional setup after loading the view from its nib.
}

-(void)setUpNavBar{
    self.navigationItem.title = @"Messages";
    UIButton *buttonView1 = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 24, 24)];
    [buttonView1 addTarget:self action:@selector(newMessageClicked) forControlEvents:UIControlEventTouchUpInside];
    [buttonView1 setBackgroundImage:[UIImage imageNamed:@"edit.png"] forState:UIControlStateNormal];
    UIBarButtonItem *barButton1 = [[UIBarButtonItem alloc] initWithCustomView:buttonView1];
    
    [self.navigationItem setRightBarButtonItem:barButton1];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)newMessageClicked{
    NewMessageViewController *newMessageVC = [[NewMessageViewController alloc]initWithNibName:@"NewMessageViewController" bundle:nil];
    newMessageVC.view.frame = [[UIScreen mainScreen] bounds ];
    UINavigationController *navController = [[UINavigationController alloc]initWithRootViewController:newMessageVC];
    [self.navigationController presentViewController:navController animated:YES completion:nil];
}

#pragma UITableViewDelegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;    //count of section
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 1;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *MyIdentifier = @"cell";
    MessageCell *cell = [tableView dequeueReusableCellWithIdentifier:MyIdentifier];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 120.5;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NewMessageViewController *newMessageVC = [[NewMessageViewController alloc]initWithNibName:@"NewMessageViewController" bundle:nil];
    newMessageVC.showMessageDirectly = YES;
    [[NSNotificationCenter defaultCenter] postNotificationName:@"hideDot" object:self];
    [self.navigationController pushViewController:newMessageVC animated:YES];
    
}

@end
