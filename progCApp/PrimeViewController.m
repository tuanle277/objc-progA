#import "PrimeViewController.h"
#import "ResultViewController.h"
@interface PrimeViewController ()

@end

@implementation PrimeViewController

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

- (IBAction)pResultBtn:(UIButton *)sender {
    NSString *aText = self.aTextField.text;
    NSString *bText = self.bTextField.text;
    NSString *cText = self.cTextField.text;
    
    float result = 0;
    
    NSNumberFormatter *f = [[NSNumberFormatter alloc] init];
    f.numberStyle = NSNumberFormatterDecimalStyle;
    
    NSNumber *a = [f numberFromString:aText];
    NSNumber *b = [f numberFromString:bText];
    
    if ([cText isEqualToString: @"+"]){
            result = [a floatValue] + [b floatValue];
        }
        else if ([cText isEqualToString: @"-"]){
            result = [a floatValue] - [b floatValue];
        }
        else if ([cText isEqualToString: @"*"]){
            result = [a floatValue] * [b floatValue];
        }
        else if ([cText isEqualToString: @"/"]){
            result = [a floatValue] / [b floatValue];
        }
        else {
            self.eLabel.text = @"Phép tính không hợp lệ";
        }

    [self performSegueWithIdentifier:@"primeToResult" sender: [NSString stringWithFormat:@"%.2f", result]];
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString: @"primeToResult"]) {
        ResultViewController
        *resultInstance = [segue destinationViewController];

        resultInstance.receivedData = (NSString *) sender;
    }
}

@end
