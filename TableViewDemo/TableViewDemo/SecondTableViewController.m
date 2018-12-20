//
//  SecondTableViewController.m
//  TableViewDemo
//
//  Created by Saiful Islam on 19/12/18.
//  Copyright © 2018 Saiful Islam. All rights reserved.
//

#import "SecondTableViewController.h"

@interface SecondTableViewController ()
{
    //animalArray
//    NSArray *dogs;
//    NSArray *cats;
//    NSArray *frogs;
//    NSArray *cows;
//    NSArray *goats;
    
    
}
@end
#warning //This class name should be DetailsViewController
@implementation SecondTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    dogs = [NSArray arrayWithObjects:
//            @"Dogs 1gahgagalkgaklgalghaghagajroijgrojgajgklagajglja", @"Dogs 2", @"Dogs 3", @"Dogs 4", @"Dogs 5", nil];
//    cats = [NSArray arrayWithObjects:@"Cat 1",
//            @"Cat 2akgjalgjaljglajglajglajglkajglajgljalgjlgalgj", @"Cat 3", @"Cat 4", @"Cat 5", nil];
//    frogs = [NSArray arrayWithObjects:@"Frogs 1", @"Frogs 2",
//             @"Frogs 3agjagjalkjglakjglajgaljggaggaagjalgkjalgjajgajgjagjagjajg", @"Frogs 4", nil];
//    cows = [NSArray arrayWithObjects:@"Cow 1", @"Cow 2", @"Cow 3", nil];
//    goats = [NSArray arrayWithObjects:@"Goats1akgalgalkglaglaglagkakgaghakghagagagakgahg", @"Goats 2", @"Goats 3", @"Goats 4", nil];
    
    
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
//  Dogs", @"Cats", @"Frogs", @"Cows", @"Goats
//    if([_animalName isEqualToString:@"Dogs"]){
//        return [dogs count];
//    }else if([_animalName isEqualToString:@"Cats"]){
//        return [cats count];
//    }else if([_animalName isEqualToString:@"Frogs"]){
//        return [frogs count];
//    }else if([_animalName isEqualToString:@"Cows"]){
//        return [cows count];
//    }else if([_animalName isEqualToString:@"Goats"]){
//        return [goats count];
//    }
    
    return self.animalArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"showDetails" forIndexPath:indexPath];
    
    UITextView *label = [cell viewWithTag:12];
    
//    if([_animalName isEqualToString:@"Dogs"]){
        [label setText:self.animalArray[indexPath.row]];
//    }else if([_animalName isEqualToString:@"Cats"]){
//        [label setText:cats[indexPath.row]];
//    }else if([_animalName isEqualToString:@"Frogs"]){
//        [label setText:frogs[indexPath.row]];
//    }else if([_animalName isEqualToString:@"Cows"]){
//       [label setText:cows[indexPath.row]];
//    }else if([_animalName isEqualToString:@"Goats"]){
//        [label setText:goats[indexPath.row]];
//    }
//    [label sizeToFit];
//    [cell layoutIfNeeded];
    
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
