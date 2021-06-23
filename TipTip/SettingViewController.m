//
//  SettingViewController.m
//  TipTip
//
//  Created by jose1009 on 6/22/21.
//

#import "SettingViewController.h"

@interface SettingViewController ()

@property (weak, nonatomic) IBOutlet UILabel *tipPercentageLabel;
@property (weak, nonatomic) IBOutlet UISlider *tipPercentageSlider;



@end

@implementation SettingViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)updateLabels:(id)sender {
    
    int tipPercentage = self.tipPercentageSlider.value;
    NSString *tipPerString = [@(tipPercentage) stringValue];
    
    self.tipPercentageLabel.text = [tipPerString stringByAppendingString:@"%"];
    
//    self.tipGlobalPercentage = [tipPerString stringByAppendingString:@"%"];
    
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
