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
#import "Trapezoid.h"
#import "Parallelogram.h"
#import "Ellipse.h"
#import "Circle.h"
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
- (IBAction)testTrapezoid:(id)sender {
    float edgeA = 4;
    float edgeB = 3;
    float edgeC = 5;
    float edgeD = 6;
    Trapezoid *myTrapezoid = [[Trapezoid alloc] initWithEdgeA:edgeA edgeB:edgeB edgeC:edgeC edgeD:edgeD];
    area = [myTrapezoid calArea];
    perimeter = [myTrapezoid calPerimeter];
    NSLog(@"Trapezoid [%0.1f,%0.1f,%0.1f,%0.1f] area: %0.1f, perimeter: %0.1f", edgeA, edgeB, edgeC, edgeD, area, perimeter);
}
- (IBAction)testParallogram:(id)sender {
    float edgeA = 4;
    float edgeB = 4;
    float height = 3;
    Parallelogram *myParallelogram = [[Parallelogram alloc] initWithEdgeA:edgeA edgeB:edgeB height:height];
    area = [myParallelogram calArea];
    perimeter = [myParallelogram calPerimeter];
    NSLog(@"Parallelogram [%0.1f,%0.1f,%0.1f] area: %0.1f, perimeter: %0.1f", edgeA, edgeB, height, area, perimeter);
}
- (IBAction)testEllipse:(id)sender {
    float majorAxis = 5;
    float minorAxis = 3;
    Ellipse *myEllipse = [[Ellipse alloc] initWithMajorAxis:majorAxis andMinorAxis:minorAxis];
    area = [myEllipse calArea];
    perimeter = [myEllipse calPerimeter];
    NSLog(@"Ellipse [%0.1f,%0.1f] area: %0.1f, perimeter: %0.1f", majorAxis, minorAxis, area, perimeter);
}
- (IBAction)testCircle:(id)sender {
    float radius = 7;
    Circle *myCircle = [[Circle alloc] initWithRadius:radius];
    area = [myCircle calArea];
    perimeter = [myCircle calPerimeter];
    NSLog(@"Circle [%0.1f] area: %0.1f, perimeter: %0.1f", radius, area, perimeter);
}



@end
