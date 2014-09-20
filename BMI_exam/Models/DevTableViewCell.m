//
//  DevTableViewCell.m
//  BMI_exam
//
//  Created by Juan Carrillo Aguirre on 9/20/14.
//  Copyright (c) 2014 gunt_raro. All rights reserved.
//

#import "DevTableViewCell.h"

@implementation DevTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
