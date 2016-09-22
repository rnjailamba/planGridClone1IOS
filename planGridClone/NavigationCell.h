//
//  NavigationCell.h
//  planGridClone
//
//  Created by Mr Ruby on 08/09/16.
//  Copyright © 2016 Rnjai Lamba. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NavigationCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *smallImage;
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UILabel *lastUpdated;
@property (weak, nonatomic) IBOutlet UILabel *moreDetails;
@property (weak, nonatomic) IBOutlet UILabel *who;

- (IBAction)centreButtonClicked:(id)sender;
- (IBAction)topButtonClicked:(id)sender;
- (IBAction)bottomButtonClicked:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *topButton;
@property (weak, nonatomic) IBOutlet UIButton *centreButton;
@property (weak, nonatomic) IBOutlet UIButton *bottomButton;



@end
