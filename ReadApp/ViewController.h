//
//  ViewController.h
//  ReadApp
//
//  Created by xyooyy on 14/10/20.
//  Copyright (c) 2014年 黄晓彤. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CenterView.h"
@interface ViewController : UIViewController
<UITableViewDataSource, UITableViewDelegate>
{
    UITableView *m_tableView;
    CenterView *centerView;
}
@property (nonatomic, retain)NSArray *listbookPicture;
@property (nonatomic, retain)NSArray *listbookName;
@property (nonatomic, retain)NSArray *listbookAuthor;
@property (nonatomic, retain)NSArray *listbookPrice;
@property (nonatomic, retain)NSArray *listbookSummary;
@end
