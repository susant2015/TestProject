//
//  ViewController.h
//  SearchTableView
//
//  Created by admin on 18/05/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
{
     NSMutableArray *totalStrimg;
     NSMutableArray *filterString;
    NSMutableArray *filterString2;
     NSMutableArray *strNumber;
     BOOL isFilletered;

     IBOutlet UISearchBar *mySearch;
     IBOutlet UITableView *myTableView;
    
}

@end

