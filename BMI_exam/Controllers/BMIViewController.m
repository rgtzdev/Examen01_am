//
//  BMIViewController.m
//  BMI_exam
//
//  Created by Juan Carrillo Aguirre on 9/20/14.
//  Copyright (c) 2014 gunt_raro. All rights reserved.
//

#import "BMIViewController.h"

@interface BMIViewController ()

@property (strong, nonatomic) IBOutlet UITextField *txtHeight;
@property (strong, nonatomic) IBOutlet UITextField *txtWeight;
@property (strong, nonatomic) IBOutlet UIImageView *img;
@property (strong, nonatomic) IBOutlet UIButton *bBMI;
@property double bmiResult;
@property (strong, nonatomic) IBOutlet UILabel *lResult;

- (IBAction)CalculationBMI:(id)sender;

@end

@implementation BMIViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)CalculationBMI:(id)sender {
    
    [self.view endEditing:YES];
    
    double h = [self.txtHeight.text doubleValue];
    double w = [self.txtWeight.text doubleValue];
    
    NSString * state;
    
    self.bmiResult = ( w / ( h * h) );
    
    self.lResult.text = [NSString stringWithFormat:@"%g", self.bmiResult];
    
    if( self.bmiResult < 18.5 ){
        state = @"under.jpg";
    }else if( self.bmiResult > 18.5 && self.bmiResult < 22.9 ){
        state = @"normal.jpg";
    }else if( self.bmiResult > 23.0 && self.bmiResult < 24.9 ){
        state = @"risk.jpg";
    }else if( self.bmiResult > 25.0 && self.bmiResult < 29.9 ){
        state = @"moderately.jpg";
    }else if( self.bmiResult >= 30.0 ){
        state = @"severely.jpg";
    }
    [self.img setImage:[UIImage imageNamed:state]];
    
}
@end
