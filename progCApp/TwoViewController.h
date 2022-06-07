//
//  TwoViewController.h
//  progCApp
//
//  Created by tuanlm on 6/7/22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TwoViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *aTextField;
@property (weak, nonatomic) IBOutlet UITextField *bTextField;
@property (weak, nonatomic) IBOutlet UITextField *cTextField;
- (IBAction)resultBtn:(UIButton *)sender;

@end

NS_ASSUME_NONNULL_END
