//
//  ViewController.m
//  SHLineKitDemo
//
//  Created by shouian on 2014/2/2.
//  Copyright (c) 2014年 shouian. All rights reserved.
//

#import "ViewController.h"
#import "SHLineKit.h"

@interface ViewController () <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    if (![SHLineKit isUserInstallLine]) {
        UIAlertView *alertView = [[[UIAlertView alloc] initWithTitle:@"Warning"
                                                            message:@"You did not install LINE in your iPhone" delegate:nil cancelButtonTitle:@"Done" otherButtonTitles:nil, nil] autorelease];
        [alertView show];
    }
    
    UIButton *msgBtn = [[UIButton alloc] initWithFrame:CGRectMake(20, 50, 200, 70)];
    [msgBtn setTitle:@"LINE(Message)" forState:UIControlStateNormal];
    [msgBtn addTarget:self action:@selector(sendMsgToLine:) forControlEvents:UIControlEventTouchUpInside];
    [msgBtn setBackgroundColor:[UIColor greenColor]];
    [msgBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:msgBtn];
    [msgBtn release];
    
    UIButton *imgBtn = [[UIButton alloc] initWithFrame:CGRectMake(20, 250, 200, 70)];
    [imgBtn setTitle:@"LINE(Image)" forState:UIControlStateNormal];
    [imgBtn addTarget:self action:@selector(sendImgToLine:) forControlEvents:UIControlEventTouchUpInside];
    [imgBtn setBackgroundColor:[UIColor greenColor]];
    [imgBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:imgBtn];
    [imgBtn release];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UIButton Action
- (void)sendMsgToLine:(id)sender
{
    if ([SHLineKit isUserInstallLine]) {
        [SHLineKit shareLineWithMessage:@"Hello this is a test to share with Line"];
    } else {
        NSLog(@"You did not install LINE, please install it");
    }
}

- (void)sendImgToLine:(id)sender
{
    UIImagePickerController *controller = [[UIImagePickerController alloc] init];
    controller.delegate = self;
    [self presentViewController:controller animated:YES completion:NULL];
}

#pragma mark - UIImagePickerControllerDelegate

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    UIImage *img = [info objectForKey:@"UIImagePickerControllerOriginalImage"];
    
    if ([SHLineKit isUserInstallLine]) {
        [SHLineKit shareLineWithImage:img];
    } else {
        NSLog(@"You did not install LINE, please install it");
    }
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

@end
