//
//  ViewController.m
//  Geometry
//
//  Created by MAC on 3/15/13.
//  Copyright (c) 2013 HoangNA. All rights reserved.
//

#import "ViewController.h"
#import "Rectangular.h"
#import "Square.h"
#import "Triangle.h"
@interface ViewController ()

@end

@implementation ViewController
static float perimeter, area; // public static variables
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - Demo Geometry
- (IBAction)testGeometry:(id)sender {
    
}

- (IBAction)testRectangular:(id)sender {
    float length = 10;
    float width = 5;
    Rectangular *myRect = [[Rectangular alloc] initWithLength:length andWidth:width];
    area = [myRect calArea];
    perimeter = [myRect calPerimeter];
    NSLog(@"Rectangular [%0.1f,%0.1f] area: %0.1f, perimeter: %0.1f", length, width, area, perimeter);
}
- (IBAction)testSquare:(id)sender {
    float side = 13;
    Square *mySquare = [[Square alloc] initWithSide:side];
    area = [mySquare calArea];
    perimeter = [mySquare calPerimeter];
    NSLog(@"Square [%0.1f] area: %0.1f, perimeter: %0.1f", side, area, perimeter);
}
- (IBAction)testTriangle:(id)sender {
    float edgeA = 3;
    float edgeB = 4;
    float edgeC = 5;
    Triangle *myTriangle = [[Triangle alloc] initWithEdgeA:edgeA EdgeB:edgeB EdgeC:edgeC];
    area = [myTriangle calArea];
    perimeter = [myTriangle calPerimeter];
    NSLog(@"Triangle [%0.1f,%0.1f,%0.1f] area: %0.1f, perimeter: %0.1f", edgeA, edgeB, edgeC, area, perimeter);
}



@end
