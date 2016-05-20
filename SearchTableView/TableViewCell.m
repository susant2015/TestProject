//
//  TableViewCell.m
//  SearchTableView
//
//  Created by admin on 19/05/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

@synthesize lblNum;
@synthesize lblNumbers;
- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
