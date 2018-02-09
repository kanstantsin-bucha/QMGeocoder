//
//  QMViewController.m
//  QMGeocoder
//
//  Created by truebucha on 02/09/2018.
//  Copyright (c) 2018 truebucha. All rights reserved.
//

#import "QMViewController.h"
#import <QMGeocoder/QMGeocoder.h>
#import <CDBKit/CDBKit.h>


@interface QMViewController ()

@end


@implementation QMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // set API key if needed
    NSString * apiKey = @"AIzaSyBDb5DyG1tb203FxX1HlfWrRRKyAVsaISM";
	[QMGeocoder.shared acceptGoogleGeocoderApiKey: apiKey];
    
    [self geocodeAddress: @"District 2 1657 Riverside Drive Redding"
              completion:^{
                  
        [self geocodeAddress: @"Mc. Donalds New York"
                  completion:^{
                      
            [self geocodeAddress: @"Eiffel Tower"
                      completion:^{
                          
                [self geocodeAddress: @"lida belarus"
                          completion:^{

                }];
            }];
        }];
    }];
}

- (void) geocodeAddress: (NSString *) address
             completion: (CDBCompletion) completion {
    NSLog(@"====================");
    NSLog(@"Address: %@", address);
    [QMGeocoder.shared geocodeAddress: address
                                using: QMGeocoderServiceApple
                           completion:^(QMLocationInfo * _Nullable appleInfo, NSError * _Nullable error) {
        NSLog(@"Apple: %@", appleInfo);
                               
        [QMGeocoder.shared geocodeAddress: address
                                    using: QMGeocoderServiceGoogle
                               completion:^(QMLocationInfo * _Nullable googleInfo, NSError * _Nullable error) {
            NSLog(@"Google: %@", googleInfo);
            
//            BOOL equal = [appleInfo.sublocation isEqualToString: googleInfo.sublocation];
//            NSLog(@"%@", equal ? @"Same" : @"Different");
                                   
            if (completion != nil) {
                completion();
            }
        }];
    }];
 }


@end
