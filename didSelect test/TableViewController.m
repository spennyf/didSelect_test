//
//  TableViewController.m
//  didSelect test
//
//  Created by Spencer Fontein on 5/28/14.
//  Copyright (c) 2014 Spencer Fontein. All rights reserved.
//

#import "TableViewController.h"
#import "ViewController.h"

@interface TableViewController () {
    NSMutableArray *_objects;
    
}


@end

@implementation TableViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _objects = [[NSMutableArray alloc] init];
    
    NSDictionary *obj1 = [[NSDictionary alloc] initWithObjectsAndKeys:@"object1", @"title", nil];
    NSDictionary *obj2 = [[NSDictionary alloc] initWithObjectsAndKeys:@"object2", @"title", nil];
    // NSDictionary *obj3 = [[NSDictionary alloc] initWithObjectsAndKeys:@"rpi", @"title", nil];
    
    [_objects addObject:obj1];
    [_objects addObject:obj2];
    


}



#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return _objects.count;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    
    //NSLog(@"%@", _objects);
    cell.textLabel.text = [[_objects objectAtIndex:indexPath.row] objectForKey:@"title"];
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    ViewController *myController = (ViewController *)[self.navigationController.viewControllers objectAtIndex:0];
    myController.object = [[_objects objectAtIndex:indexPath.row] objectForKey:@"title"];
    [self.navigationController popToRootViewControllerAnimated:YES];
    
    
    
    
    
    
    
}


@end
