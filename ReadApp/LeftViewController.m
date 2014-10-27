//
//  LeftViewController.m
//  ReadApp
//
//  Created by xyooyy on 14/10/22.
//  Copyright (c) 2014年 黄晓彤. All rights reserved.
//

#import "LeftViewController.h"
#import "UIViewController+MMDrawerController.h"
#import "LeftView.h"
@interface LeftViewController ()

@end

@implementation LeftViewController
@synthesize listbookmenu;
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
    self.title = @"书单";
    self.view.backgroundColor = [UIColor whiteColor];
    UITableView *tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 20, self.view.bounds.size.width, self.view.bounds.size.height) style:UITableViewStylePlain];
    [self.view addSubview:tableView];
    tableView.delegate = self;
    tableView.dataSource = self;
    LeftView *leftView = [[LeftView alloc]init];
    NSArray *bookmenu = [leftView bookMenu];
    self.listbookmenu = bookmenu;
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.listbookmenu count];
}
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    
    return @"BOOKNAME";
    
}
-(UITableViewCell*)tableView:(UITableView*)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    NSUInteger row = [indexPath row];
    cell.textLabel.text = [listbookmenu objectAtIndex:row];
    cell.textLabel.font = [UIFont boldSystemFontOfSize:12];
    cell.textLabel.textColor = [UIColor blueColor];
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self.mm_drawerController closeDrawerAnimated:YES completion:nil];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
