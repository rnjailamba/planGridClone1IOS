
//
//  MessageCell.m
//  planGridClone
//
//  Created by Mr Ruby on 18/09/16.
//  Copyright © 2016 Rnjai Lamba. All rights reserved.
//

#import "MessageCell.h"

@implementation MessageCell

- (void)awakeFromNib {
    // Initialization code
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(handleUpdatedData:)
                                                 name:@"hideDot"
                                               object:nil];

}

-(void)handleUpdatedData:(NSNotification *)notification {
    NSLog(@"recieved");
    self.dotImage.hidden = YES;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}



@end
