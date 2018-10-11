//
//  KSDMainController.m
//  基础项目搭建
//
//  Created by 王笛 on 2018/8/30.
//  Copyright © 2018年 jizhicar. All rights reserved.
//

#import "KSDMainController.h"
#import "KSDSecondController.h"

@interface KSDMainController () <UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;

@end

@implementation KSDMainController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"主页";
    
    [self setUpTableView];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

#pragma btnClick

#pragma setUpUI
- (void)setUpTableView
{
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, KSDSCREENWIDTH, KSDSCREENHEIGHT) style:UITableViewStylePlain];
    tableView.delegate = self;
    tableView.dataSource = self;
    tableView.estimatedRowHeight = 50;
    tableView.rowHeight = UITableViewAutomaticDimension;
    tableView.showsVerticalScrollIndicator = NO;
    tableView.showsHorizontalScrollIndicator = NO;
//    tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.view addSubview:tableView];
    
    self.tableView = tableView;
}

#pragma delegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 30;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cellID"];
    cell.textLabel.text = @"测试";
//    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    KSDSecondController *tempVC = [[KSDSecondController alloc] init];
    [self.navigationController pushViewController:tempVC animated:YES];
}

#pragma customMethod

#pragma lazyLoading

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
