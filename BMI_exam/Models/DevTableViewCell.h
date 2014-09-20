//
//  DevTableViewCell.h
//  BMI_exam
//
//  Created by Juan Carrillo Aguirre on 9/20/14.
//  Copyright (c) 2014 gunt_raro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DevTableViewCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel * name;
@property (strong, nonatomic) IBOutlet UILabel * email;

@property (strong, nonatomic) IBOutlet UILabel* street;
@property (strong, nonatomic) IBOutlet UILabel* state;
@property (strong, nonatomic) IBOutlet UILabel* city;

@end
