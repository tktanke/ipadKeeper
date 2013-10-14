//
//  allViewController.m
//  GJ
//
//  Created by apple NO5 on 13-7-2.
//  Copyright (c) 2013年 apple NO5. All rights reserved.
//

#import "allViewController.h"
#import "AppDelegate.h"
#import "SoundPlayer.h"

@interface allViewController ()

-(void)closeAboutElements;

@end

@implementation allViewController

-(void) closeAboutElements
{
    [self.closeBtn setAlpha:0];
    [self.aboutView setAlpha:0];
    [self.websiteButton setAlpha:0];
    [self.scoreButton setAlpha:0];
    [self.innoSiteBtn setAlpha:0];
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self closeAboutElements ];
    // Do any additional setup after loading the view from its nib.
    //app=(AppDelegate *)[[UIApplication sharedApplication]delegate];
    //[help setText:[app getHelp]];
}

-(void)viewDidAppear:(BOOL)animated{
    [self closeAboutElements];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)websiteBtnClick:(id)sender {
    NSString *textURL = @"http://www.woodseen.com/";
    NSURL *cleanURL = [NSURL URLWithString:[NSString stringWithFormat:@"%@", textURL]];
    [[UIApplication sharedApplication] openURL:cleanURL];
}

- (IBAction)scoreBtnClick:(id)sender {
    NSString *str = [NSString stringWithFormat: @"itms-apps://ax.itunes.apple.com/WebObjects/MZStore.woa/wa/viewContentsUserReviews?type=Purple+Software&id=%@", @"711264007"];
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:str]];
}

- (IBAction)closeAboutView:(id)sender
{
    [SoundPlayer playButtonSound];
    [self closeAboutElements];
}

- (IBAction)aboutClick:(id)sender
{
    [SoundPlayer playButtonSound];
    [self.closeBtn setAlpha:1];
    [self.aboutView setAlpha:1];
    [self.scoreButton setAlpha:1];
    [self.websiteButton setAlpha:1];
    [self.innoSiteBtn setAlpha:1];
}
- (void)viewDidUnload {
    [self setScoreButton:nil];
    [self setWebsiteButton:nil];
    [self setInnoSiteBtn:nil];
    [super viewDidUnload];
}
- (IBAction)innoSiteClick:(id)sender {
    NSString *textURL = @"http://www.innovationstations.com/";
    NSURL *cleanURL = [NSURL URLWithString:[NSString stringWithFormat:@"%@", textURL]];
    [[UIApplication sharedApplication] openURL:cleanURL];
}
@end
