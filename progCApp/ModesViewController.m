//
//  ViewController.m
//  progCApp
//
//  Created by tuanlm on 6/7/22.
//

#import "ModesViewController.h"

@interface ModesViewController ()

@end

@implementation ModesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}


- (IBAction)toTwoBtn:(UIButton *)sender {
    [self performSegueWithIdentifier:@"modeToTwo" sender:nil];
}

- (IBAction)toOneBtn:(UIButton *)sender {
    [self performSegueWithIdentifier:@"modeToOne" sender:nil];
}

- (IBAction)toPrimeBtn:(UIButton *)sender {
    [self performSegueWithIdentifier:@"modeToPrime" sender:nil];
}

//- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
//{
//    if ([segue.identifier isEqualToString: @"toSecond"]) {
//        SecondViewController *thisSecondInstance = [segue destinationViewController];
//
//        thisSecondInstance.receivedData = (NSString *) sender;
//    }
//}

@end
