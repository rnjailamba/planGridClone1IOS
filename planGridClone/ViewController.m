//
//  ViewController.m
//  planGridClone
//
//  Created by Mr Ruby on 07/09/16.
//  Copyright © 2016 Rnjai Lamba. All rights reserved.
//

#import "ViewController.h"
#import "NotificationsViewController.h"
#import "MessageViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.frame = [[UIScreen mainScreen]bounds];
    [self setUpNavBar];
    [self performSelector:@selector(changeNotifImage) withObject:nil afterDelay:1.0];

}

-(void)setUpNavBar{
    self.navigationItem.title = @"Projects";
    
    UIButton *buttonView = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 24, 24)];
    [buttonView addTarget:self action:@selector(rightProfileButtonClicked) forControlEvents:UIControlEventTouchUpInside];
    [buttonView setBackgroundImage:[UIImage imageNamed:@"user1.png"] forState:UIControlStateNormal];
    UIBarButtonItem *barButton = [[UIBarButtonItem alloc] initWithCustomView:buttonView];
    
    UIButton *buttonView2 = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 24, 24)];
    [buttonView2 addTarget:self action:@selector(rightNotifButtonClicked) forControlEvents:UIControlEventTouchUpInside];
    [buttonView2 setBackgroundImage:[UIImage imageNamed:@"notif.png"] forState:UIControlStateNormal];
    UIBarButtonItem *barButton2 = [[UIBarButtonItem alloc] initWithCustomView:buttonView2];


    UIButton *buttonView1 = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 24, 24)];
    [buttonView1 addTarget:self action:@selector(leftAddClicked) forControlEvents:UIControlEventTouchUpInside];
    [buttonView1 setBackgroundImage:[UIImage imageNamed:@"plus.png"] forState:UIControlStateNormal];
    UIBarButtonItem *barButton1 = [[UIBarButtonItem alloc] initWithCustomView:buttonView1];
    
    UIButton *buttonView3 = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 24, 24)];
    [buttonView3 addTarget:self action:@selector(leftMessageClicked) forControlEvents:UIControlEventTouchUpInside];
    [buttonView3 setBackgroundImage:[UIImage imageNamed:@"inbox.png"] forState:UIControlStateNormal];
    UIBarButtonItem *barButton3 = [[UIBarButtonItem alloc] initWithCustomView:buttonView3];
    
    [self.navigationItem setLeftBarButtonItems:@[barButton1,barButton]];
    [self.navigationItem setRightBarButtonItems:@[barButton3,barButton2]];

}

-(void)changeNotifImage{
    
    UIButton *buttonView = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 24, 24)];
    [buttonView addTarget:self action:@selector(rightProfileButtonClicked) forControlEvents:UIControlEventTouchUpInside];
    [buttonView setBackgroundImage:[UIImage imageNamed:@"user1.png"] forState:UIControlStateNormal];
    UIBarButtonItem *barButton = [[UIBarButtonItem alloc] initWithCustomView:buttonView];
    
    UIButton *buttonView2 = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 24, 24)];
    [buttonView2 addTarget:self action:@selector(rightNotifButtonClicked) forControlEvents:UIControlEventTouchUpInside];
    [buttonView2 setBackgroundImage:[UIImage imageNamed:@"notiff.png"] forState:UIControlStateNormal];
    UIBarButtonItem *barButton2 = [[UIBarButtonItem alloc] initWithCustomView:buttonView2];
    
    
    UIButton *buttonView1 = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 24, 24)];
    [buttonView1 addTarget:self action:@selector(leftAddClicked) forControlEvents:UIControlEventTouchUpInside];
    [buttonView1 setBackgroundImage:[UIImage imageNamed:@"plus.png"] forState:UIControlStateNormal];
    UIBarButtonItem *barButton1 = [[UIBarButtonItem alloc] initWithCustomView:buttonView1];
    
    UIButton *buttonView3 = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 24, 24)];
    [buttonView3 addTarget:self action:@selector(leftMessageClicked) forControlEvents:UIControlEventTouchUpInside];
    [buttonView3 setBackgroundImage:[UIImage imageNamed:@"inbox.png"] forState:UIControlStateNormal];
    UIBarButtonItem *barButton3 = [[UIBarButtonItem alloc] initWithCustomView:buttonView3];
    
    [self.navigationItem setLeftBarButtonItems:@[barButton1,barButton]];
    [self.navigationItem setRightBarButtonItems:@[barButton3,barButton2]];
}

-(void)rightProfileButtonClicked{
    
    UIAlertController *actionSheet = [UIAlertController alertControllerWithTitle:@"Action Sheet" message:@"Using the alert controller" preferredStyle:UIAlertControllerStyleActionSheet];
    
    [actionSheet addAction:[UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
        
        // Cancel button tappped.
        [self dismissViewControllerAnimated:YES completion:^{
        }];

    }]];
    
    [actionSheet addAction:[UIAlertAction actionWithTitle:@"Account" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        
        // Distructive button tapped.
        [self dismissViewControllerAnimated:YES completion:^{
        }];
    }]];
    
    [actionSheet addAction:[UIAlertAction actionWithTitle:@"Log Out" style:UIAlertActionStyleDestructive handler:^(UIAlertAction *action) {
        
        // OK button tapped.
        
        [self dismissViewControllerAnimated:YES completion:^{
        }];
    }]];
    actionSheet.popoverPresentationController.sourceView = self.view;
    actionSheet.popoverPresentationController.sourceRect = self.view.bounds;
    
    // Present action sheet.
    [self presentViewController:actionSheet animated:YES completion:nil];
    
}

-(void)rightNotifButtonClicked{
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:[[NotificationsViewController alloc]initWithNibName:@"NotificationsViewController" bundle:nil]];
    [self.navigationController presentViewController:navigationController animated:YES completion:nil];
}

-(void)leftAddClicked{
 
    
}


-(void)leftMessageClicked{
    MessageViewController *messageVC = [[MessageViewController alloc]initWithNibName:@"MessageViewController" bundle:nil];
    [self.navigationController pushViewController:messageVC animated:YES];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
