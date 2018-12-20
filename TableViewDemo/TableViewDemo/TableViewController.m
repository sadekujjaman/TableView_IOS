//
//  TableViewController.m
//  TableViewDemo
//
//  Created by Saiful Islam on 19/12/18.
//  Copyright © 2018 Saiful Islam. All rights reserved.
//

#import "TableViewController.h"
#import "SecondTableViewController.h"

//rename to AnimalViewController
//
@interface TableViewController (){
    
    
    //No need to create multiple arrays
    //use NSDictionary
    //Should not use
    /*
     */
    NSDictionary *animalDictionary;
    NSArray *animals;
}


@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //Use NSDictionary here
    //Create this table from : NSArray *keys = dictionay.allkeys
    animalDictionary = [NSDictionary dictionaryWithObjects:@[[NSArray arrayWithObjects:
                                                              @"Dogs 1gahgagalkgaklgalghaghagajroijgrojgajgklagajglja", @"Dogs 2", @"Dogs 3", @"Dogs 4", @"Dogs 5", nil],
                                                             [NSArray arrayWithObjects:@"Cat 1",
                                                              @"Cat 2akgjalgjaljglajglajglajglkajglajgljalgjlgalgj", @"Cat 3", @"Cat 4", @"Cat 5", nil],
                                                             [NSArray arrayWithObjects:@"Frogs 1", @"Frogs 2",
                                                              @"Frogs 3agjagjalkjglakjglajgaljggaggaagjalgkjalgjajgajgjagjagjajg", @"Frogs 4", nil],
                                                             [NSArray arrayWithObjects:@"Cow 1", @"Cow 2", @"Cow 3", nil],
                                                             [NSArray arrayWithObjects:@"Goats1akgalgalkglaglaglagkakgaghakghagagagakgahg", @"Goats 2", @"Goats 3", @"Goats 4", nil]]
                                                   forKeys:[NSArray arrayWithObjects: @"Dogs", @"Cats", @"Frogs", @"Cows", @"Goats", nil]];
    animals = animalDictionary.allKeys;// [NSArray arrayWithObjects: @"Dogs", @"Cats", @"Frogs", @"Cows", @"Goats", nil];
   
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

    return [animals count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ItemCell" forIndexPath:indexPath];
    
    UILabel *label = [cell viewWithTag:11];
    [label setText:animals[indexPath.row]];
    // Configure the cell...
    
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



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
   
    if([segue.identifier isEqualToString:@"ShowItems"]){
        //send the Selected Value
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        SecondTableViewController *secondController = [segue destinationViewController];
        NSString *name = [animals objectAtIndex:indexPath.row];
        secondController.animalName = name;
        NSArray *animal = [animalDictionary objectForKey:name];
        secondController.animalArray = animal;
        secondController.title = secondController.animalName;
    }
}


@end
