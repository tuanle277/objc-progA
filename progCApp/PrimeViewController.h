//
//  PrimeViewController.h
//  progCApp
//
//  Created by tuanlm on 6/7/22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PrimeViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *aTextField;
@property (weak, nonatomic) IBOutlet UITextField *bTextField;
@property (weak, nonatomic) IBOutlet UITextField *cTextField;
- (IBAction)pResultBtn:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *eLabel;

@end

NS_ASSUME_NONNULL_END
