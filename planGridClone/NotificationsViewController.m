//
//  NotificationsViewController.m
//  planGridClone
//
//  Created by Mr Ruby on 08/09/16.
//  Copyright © 2016 Rnjai Lamba. All rights reserved.
//

#import "NotificationsViewController.h"
#import "NotificationViewController.h"
#import "NavigationCell.h"

@interface NotificationsViewController () <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation NotificationsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpNavBar];
    [self setUpTableView];
    [self registerNib];
}

-(void)setUpTableView{
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}

-(void)registerNib{
    [self.tableView registerNib:[UINib nibWithNibName:@"NavigationCell" bundle:nil] forCellReuseIdentifier:@"cell"];
}

-(void)setUpNavBar{
    self.navigationItem.title = @"Notifications";
    UIBarButtonItem *barButton = [[UIBarButtonItem alloc] initWithTitle:@"Done" style:UIBarButtonItemStyleDone target:self action:@selector(doneClicked)];
    [self.navigationItem setRightBarButtonItem:barButton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)doneClicked {
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;    //count of section
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 11;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *MyIdentifier = @"cell";
    NavigationCell *cell = [tableView dequeueReusableCellWithIdentifier:MyIdentifier];
    if(indexPath.row == 0){
        cell.title.text = @"Architect Blueprints";
        cell.moreDetails.text = @"For first floor";
        cell.smallImage.image = [UIImage imageNamed:@"blueprint"];
        cell.centreButton.hidden = NO;
        cell.topButton.hidden = YES;
        cell.bottomButton.hidden = YES;
        [cell.centreButton setBackgroundImage:[UIImage imageNamed:@"visible"] forState:UIControlStateNormal];

    }
    else if(indexPath.row == 1){
        cell.title.text = @"Paint Job [Exterior]";
        cell.moreDetails.text = @"Weather proof job done";
        cell.smallImage.image = [UIImage imageNamed:@"roller"];
        cell.centreButton.hidden = YES;
        cell.topButton.hidden = NO;
        cell.bottomButton.hidden = NO;
    }
    else if(indexPath.row == 2){
        cell.title.text = @"Garden Wall Delayed";
        cell.moreDetails.text = @"Wall delayed";
        cell.smallImage.image = [UIImage imageNamed:@"wall"];
        cell.centreButton.hidden = NO;
        cell.topButton.hidden = YES;
        cell.bottomButton.hidden = YES;
        [cell.centreButton setBackgroundImage:[UIImage imageNamed:@"warning.png"] forState:UIControlStateNormal];
    }
    else if(indexPath.row == 5){
        cell.title.text = @"Room Plan";
        cell.moreDetails.text = @"Room plan done";
        cell.smallImage.image = [UIImage imageNamed:@"rooms"];
        cell.centreButton.hidden = NO;
        cell.topButton.hidden = YES;
        cell.bottomButton.hidden = YES;
        [cell.centreButton setBackgroundImage:[UIImage imageNamed:@"visible"] forState:UIControlStateNormal];

    }
    else if(indexPath.row == 10){
        cell.title.text = @"Civil Engineer Visit";
        cell.moreDetails.text = @"Scheduled today 12:00 pm";
        cell.smallImage.image = [UIImage imageNamed:@"helmet"];
        cell.centreButton.hidden = NO;
        cell.topButton.hidden = YES;
        cell.bottomButton.hidden = YES;
        [cell.centreButton setBackgroundImage:[UIImage imageNamed:@"correct"] forState:UIControlStateNormal];

    }
    else if(indexPath.row == 3){
        cell.title.text = @"Architect Visit";
        cell.moreDetails.text = @"Please give feedback";
        cell.smallImage.image = [UIImage imageNamed:@"architect"];
        cell.centreButton.hidden = NO;
        cell.topButton.hidden = YES;
        cell.bottomButton.hidden = YES;
        [cell.centreButton setBackgroundImage:[UIImage imageNamed:@"chat"] forState:UIControlStateNormal];
    }
    else if(indexPath.row == 6){
        cell.title.text = @"Fence Around Garden";
        cell.moreDetails.text = @"Today 1:00 pm";
        cell.smallImage.image = [UIImage imageNamed:@"fence"];
        cell.centreButton.hidden = YES;
        cell.topButton.hidden = NO;
        cell.bottomButton.hidden = NO;
    }
    else if(indexPath.row == 7){
        cell.title.text = @"Fountain";
        cell.moreDetails.text = @"Today 1:00 pm";
        cell.smallImage.image = [UIImage imageNamed:@"fountain"];
        cell.centreButton.hidden = YES;
        cell.topButton.hidden = NO;
        cell.bottomButton.hidden = NO;
    }
    else if(indexPath.row == 8){
        cell.title.text = @"RFI";
        cell.moreDetails.text = @"Flooring information requested";
        cell.smallImage.image = [UIImage imageNamed:@"newsletter"];
        cell.centreButton.hidden = NO;
        cell.topButton.hidden = YES;
        cell.bottomButton.hidden = YES;
        [cell.centreButton setBackgroundImage:[UIImage imageNamed:@"visible"] forState:UIControlStateNormal];

    }
    else if(indexPath.row == 9){
        cell.title.text = @"Garden Landscaping";
        cell.moreDetails.text = @"Landscaping done";
        cell.smallImage.image = [UIImage imageNamed:@"trees"];
        cell.centreButton.hidden = YES;
        cell.topButton.hidden = NO;
        cell.bottomButton.hidden = NO;
    }
    else if(indexPath.row == 4){
        cell.title.text = @"Payment Due";
        cell.moreDetails.text = @"Phase 3 completed]";
        cell.smallImage.image = [UIImage imageNamed:@"money"];
        cell.centreButton.hidden = NO;
        cell.topButton.hidden = YES;
        cell.bottomButton.hidden = YES;
        [cell.centreButton setBackgroundImage:[UIImage imageNamed:@"card"] forState:UIControlStateNormal];
    }
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 100.5f;
}


@end
