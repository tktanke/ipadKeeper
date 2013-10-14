//
//  allViewController.h
//  GJ
//
//  Created by apple NO5 on 13-7-2.
//  Copyright (c) 2013年 apple NO5. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface allViewController : UIViewController{
    AppDelegate *app;
}
- (IBAction)innoSiteClick:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *innoSiteBtn;
- (IBAction)websiteBtnClick:(id)sender;
- (IBAction)scoreBtnClick:(id)sender;
- (IBAction)closeAboutView:(id)sender;
- (IBAction)aboutClick:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *websiteButton;
@property (weak, nonatomic) IBOutlet UIButton *scoreButton;
@property (weak, nonatomic) IBOutlet UIButton *closeBtn;
@property (weak, nonatomic) IBOutlet UIImageView *aboutView;

@end
