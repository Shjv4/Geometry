//
//  Trapezoid.m
//  Geometry
//
//  Created by MAC on 3/15/13.
//  Copyright (c) 2013 HoangNA. All rights reserved.
//

#import "Trapezoid.h"

@implementation Trapezoid
- (id) initWithEdgeA:(float)edgeA edgeB:(float)edgeB edgeC:(float)edgeC edgeD:(float)edgeD
{
    if(self = [super init])
    {
        _edges = malloc(sizeof(float)* 4);
        _edges[0] = edgeA;
        _edges[1] = edgeB;
        _edges[2] = edgeC;
        _edges[3] = edgeD;
    }
    return self;
}
- (NSString *) description
{
    return [NSString stringWithFormat:@"Trapezoid edgeA = %f, edgeB = %f, edgeC = %f, edgeD = %f", _edges[0], _edges[1], _edges[2], _edges[3]];
}
- (float) calPerimeter
{
    return _edges[0] + _edges[1] + _edges[2] + _edges[3];
}
- (float) calArea
{
    // theo cong thuc Herone
    float s = (_edges[0] + _edges[1] + _edges[2] + _edges[3]) / 2;
    float area = (_edges[0] + _edges[1])/ABS(_edges[0] - _edges[1]) * sqrtf((s - _edges[0]) * (s - _edges[1]) * (s - _edges[1] - _edges[2]) * (s - _edges[1] - _edges[3]));
    return area;
}
@end
