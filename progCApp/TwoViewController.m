#import "TwoViewController.h"
#import "ResultViewController.h"

@interface TwoViewController ()

@end

@implementation TwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)resultBtn:(UIButton *)sender {
    NSString *aText = self.aTextField.text;
    NSString *bText = self.bTextField.text;
    NSString *cText = self.cTextField.text;
    
    float delta = 0;
    NSString *resultTxt;
    
    NSNumberFormatter *f = [[NSNumberFormatter alloc] init];
    f.numberStyle = NSNumberFormatterDecimalStyle;
    
    NSNumber *a = [f numberFromString:aText];
    NSNumber *b = [f numberFromString:bText];
    NSNumber *c = [f numberFromString:cText];
    
    delta = [b floatValue] * [b floatValue] -  4 * [a floatValue] * [c floatValue];
    
    if (delta > 0){
        float x1 = (-[b floatValue] + sqrt(delta))/ (2 * [a floatValue]);
        float x2 = (-[b floatValue] - sqrt(delta))/ (2 * [a floatValue]);
        resultTxt = [NSString stringWithFormat: @"Phương trình có 2 nghiệm phân biệt, x1 = %.1f, x2 = %.1f", x1, x2];
    }
    else if(delta == 0){
        float x = -[b floatValue] / (2 * [a floatValue]);
        resultTxt = [NSString stringWithFormat: @"Phương trình có nghiệm kép x1 = x2 = %.1f", x];
    }
    else {
        resultTxt = @"Phương trình vô nghiệm";
    }
    
    [self performSegueWithIdentifier: @"twoToResult" sender: resultTxt];
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString: @"twoToResult"]) {
        ResultViewController
        *resultInstance = [segue destinationViewController];

        resultInstance.receivedData = (NSString *) sender;
    }
}

@end
