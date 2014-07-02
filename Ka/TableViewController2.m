//
//  TableViewController2.m
//  Ka
//
//  Created by itisioslab on 02.07.14.
//  Copyright (c) 2014 itisioslab. All rights reserved.
//

#import "TableViewController2.h"
#import "ViewController.h"

@interface TableViewController2 ()
{
    NSArray * ListofNames;
    NSArray * Listofpics;
}

@end

@implementation TableViewController2

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    ListofNames = [NSArray arrayWithObjects:@"How to train your dragon",@"Lion the King",nil];
    Listofpics = [NSArray arrayWithObjects:@"iphone360_512883.jpg",@"iphone360_2360.jpg", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return ListofNames.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellIdentifier" forIndexPath:indexPath];
    
    // Configure the cell...
    cell.textLabel.text = [ListofNames objectAtIndex: indexPath.row];
    NSString * nameOfImage = [Listofpics objectAtIndex: indexPath.row];
    cell.imageView.image = [UIImage imageNamed:nameOfImage];
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
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
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

- (void)prepareForSegue: (UIStoryboardSegue *)segue sender:(id)sender
{
    ViewController *VC = [[ViewController alloc] init];
    VC = [segue destinationViewController];
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    NSString * nameOfImage = [Listofpics objectAtIndex: indexPath.row];
    VC.l = [ListofNames objectAtIndex: indexPath.row];
    VC.im = [Listofpics objectAtIndex: indexPath.row];
}


@end
