//
//  TTCAddItemViewController.m
//  iPrompter
//
//  Created by Alex Parella on 10/5/14.
//  Copyright (c) 2014 Tree Traversal Collective. All rights reserved.
//

#import "TTCAddItemViewController.h"
#import "TTCTableViewController.h"
#import "TTCAddCollectionTableViewController.h"
#import "TTCAddSourceTableViewController.h"

@interface TTCAddItemViewController ()

@end

@implementation TTCAddItemViewController

- (instancetype) init {
    self = [super init];
    if (self) {
        TTCAddSourceTableViewController *addSource = [TTCAddSourceTableViewController new];
//        TTCAddSourceViewController *addSource = [TTCAddSourceViewController new];
        TTCAddCollectionTableViewController *addColl = [TTCAddCollectionTableViewController new];
        
        addSource.delegate = self;
        addColl.delegate = self;
        
        [self addChildViewController:[[UINavigationController alloc] initWithRootViewController:addSource]];
        [self addChildViewController:[[UINavigationController alloc] initWithRootViewController:addColl]];
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
