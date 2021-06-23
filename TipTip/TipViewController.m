//
//  TipViewController.m
//  TipTip
//
//  Created by jose1009 on 6/22/21.
//

#import "TipViewController.h"


@interface TipViewController ()
@property (weak, nonatomic) IBOutlet UITextField *billField;
@property (weak, nonatomic) IBOutlet UILabel *tipLabel;
@property (weak, nonatomic) IBOutlet UILabel *totalLabel;

@property (weak, nonatomic) IBOutlet UISegmentedControl *tipPercentageControl;

@property (weak, nonatomic) IBOutlet UILabel *numOfPersonLabel;
@property (weak, nonatomic) IBOutlet UIStepper *numOfPersonStepper;

@property (weak, nonatomic) IBOutlet UILabel *totalPerPersonLabel;


@end

@implementation TipViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)onTap:(id)sender {
    
    [self.view endEditing:TRUE];
}

- (IBAction)updateLabels:(id)sender {
    
    double tipPercentages[] = {0.15, 0.18, 0.20};
    double tipPercentage = tipPercentages[self.tipPercentageControl.selectedSegmentIndex];
    
    int numOfPerson = self.numOfPersonStepper.value;
    
    
    double bill = [self.billField.text doubleValue];
    double tip = bill * tipPercentage;
    double total = tip + bill;
    
    
    self.tipLabel.text = [NSString stringWithFormat:@"$%.2f", tip];
    self.totalLabel.text = [NSString stringWithFormat:@"$%.2f", total];
    
    self.numOfPersonLabel.text = [NSString stringWithFormat:@"%.0d", numOfPerson];
    
    self.totalPerPersonLabel.text = [NSString stringWithFormat:@"$%.2f", total / numOfPerson];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
