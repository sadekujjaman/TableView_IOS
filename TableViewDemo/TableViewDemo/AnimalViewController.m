//
//  TableViewController.m
//  TableViewDemo
//
//  Created by Saiful Islam on 19/12/18.
//  Copyright © 2018 Saiful Islam. All rights reserved.
//

#import "AnimalViewController.h"
#import "DetailsViewController.h"


@interface AnimalViewController (){
    
    
    
    NSDictionary *animalDictionary;
    NSArray *animals;
}


@end

@implementation AnimalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    animalDictionary = [NSDictionary dictionaryWithObjects:@[
                                                            [NSArray arrayWithObjects:@"Rocky", @"Oliver" , @"Jack", @"Luna",@"Lola", nil],
                                                            [NSArray arrayWithObjects:@"Coco", @"Missiy", @"Charlie", @"Sasha", @"Lilly",  nil],
                                                            [NSArray arrayWithObjects:@"Annabelle", @"Anna", @"Dorothy", @"Annie", @"Molly", nil],
                                                            [NSArray arrayWithObjects:@"Lambert", @"Wooly",@"Bo Peep",@"Ramsey",@"Daisy",@"Snowball", nil]
                                                            
                                                            ] forKeys:[NSArray arrayWithObjects:@"Dogs", @"Cats", @"Cows", @"Goats", nil]];
    
    animals = animalDictionary.allKeys;
    
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
    [label setTextAlignment:NSTextAlignmentCenter];
    
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
        DetailsViewController *secondController = [segue destinationViewController];
        NSString *name = [animals objectAtIndex:indexPath.row];
        secondController.animalName = name;
        NSArray *animal = [animalDictionary objectForKey:name];
        secondController.animalArray = animal;
        NSString *title = [NSString stringWithFormat:@"%@ %@ %@",@"Popular", secondController.animalName, @"Name"];
        secondController.title = title;
    }
}


@end
