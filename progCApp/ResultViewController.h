//
//  ResultViewController.h
//  progCApp
//
//  Created by tuanlm on 6/7/22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ResultViewController : UIViewController

@property NSString *receivedData;
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

NS_ASSUME_NONNULL_END
