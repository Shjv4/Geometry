//
//  Triangle.m
//  Geometry
//
//  Created by MAC on 3/15/13.
//  Copyright (c) 2013 HoangNA. All rights reserved.
//

#import "Triangle.h"

@implementation Triangle
- (id) initWithEdgeA:(float)edgeA EdgeB:(float)edgeB EdgeC:(float)edgeC 
{
    if(self = [super init])
    {
        _edges = malloc(sizeof(float)*3);
        _edges[0] = edgeA;
        _edges[1] = edgeB;
        _edges[2] = edgeC;
        
    }
    return self;
}
- (NSString *) description
{
    return [NSString stringWithFormat:@"Triangle edgeA = %f, edgeB = %f, edgeC = %f", _edges[0], _edges[1], _edges[2]];
}
- (float) calPerimeter
{
    return _edges[0] + _edges[1] + _edges[2];
}
- (float) calArea
{
    // cong thuc Herone
    float p = (_edges[0] + _edges[1] + _edges[2])/2;
    return sqrtf(p * (p - _edges[0]) * (p - _edges[1]) * (p - _edges[2]));
}
@end
