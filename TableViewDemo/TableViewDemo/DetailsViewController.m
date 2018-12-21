//
//  SecondTableViewController.m
//  TableViewDemo
//
//  Created by Saiful Islam on 19/12/18.
//  Copyright © 2018 Saiful Islam. All rights reserved.
//

#import "DetailsViewController.h"

@interface DetailsViewController ()
{
 
}
@end

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIColor *navBarBackColor = [UIColor colorWithRed:66.0f/255.0f
                    green:79.0f/255.0f
                     blue:91.0f/255.0f
                    alpha:1.0f];
    [self.navigationController.navigationBar setBackgroundColor: navBarBackColor];
    self.navigationController.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName : [UIColor blueColor]};
}
-(void)viewWillAppear:(BOOL)animated{
    
    [self.tableView setEstimatedRowHeight:100.0];
    [self.tableView setRowHeight:UITableViewAutomaticDimension];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    
    return self.animalArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"showDetails" forIndexPath:indexPath];
    
    UITextView *label = [cell viewWithTag:12];
    
    [label setText:self.animalArray[indexPath.row]];
    [label setTextAlignment:NSTextAlignmentCenter];
    
    [label setFont:[UIFont boldSystemFontOfSize:18]];
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
