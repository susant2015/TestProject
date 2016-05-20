//
//  ViewController.m
//  SearchTableView
//
//  Created by admin on 18/05/16.
//  Copyright © 2016 Xigmapro. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"

@interface ViewController ()<UISearchBarDelegate>

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    totalStrimg = [[NSMutableArray alloc] initWithObjects:@"one",@"two",@"three",@"four",@"five",@"six", nil];
    strNumber=[[NSMutableArray alloc] initWithObjects:@"1",@"2",@"3",@"4",@"5",@"6", nil];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText{
    
    if (searchText.length==0) {
        isFilletered=NO;
    }
    else{
        
        isFilletered=YES;
        filterString=[[NSMutableArray alloc]  init];
        filterString2=[[NSMutableArray alloc]  init];
        for (NSString *str in totalStrimg) {
            
            NSRange stringRange=[str rangeOfString:searchText options:NSCaseInsensitiveSearch];
            if (stringRange.location !=NSNotFound) {
                [filterString addObject:str];
            }
        }
        
        for (NSString *str in strNumber) {
            
            NSRange stringRange=[str rangeOfString:searchText options:NSCaseInsensitiveSearch];
            if (stringRange.location !=NSNotFound) {
                [filterString2 addObject:str];
            }
        }
    }
    [myTableView reloadData];
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    if (isFilletered) {
        return [filterString count];
    }
    return [totalStrimg count];
}
-(void)searchBarCancelButtonClicked:(UISearchBar *)searchBar{
    
    [myTableView resignFirstResponder];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *myCell=nil;
    
    static NSString *applicantIndexCellIdentifier=@"TableViewCell";
    TableViewCell *cell=(TableViewCell *)[tableView dequeueReusableCellWithIdentifier:applicantIndexCellIdentifier];
    if (!cell) {
        cell=[[[NSBundle mainBundle] loadNibNamed:@"TableViewCell" owner:self options:nil]objectAtIndex:0];
    }
    
    if (isFilletered)
    {
         cell.lblNumbers.text = [filterString objectAtIndex:indexPath.row];
        //cell.lblNum.text = [filterString2 objectAtIndex:indexPath.row];
    }
    else{

      cell.lblNumbers.text = [totalStrimg objectAtIndex:indexPath.row];
      cell.lblNum.text=[strNumber objectAtIndex:indexPath.row];
    }
    myCell=cell;
    return cell;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
