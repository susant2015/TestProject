//
//  ViewController.h
//  SearchTableView
//
//  Created by admin on 18/05/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) NSArray *tableData;
@property (nonatomic, strong) NSMutableArray *searchResult;

@end

