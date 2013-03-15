//
//  Parallelogram.m
//  Geometry
//
//  Created by MAC on 3/15/13.
//  Copyright (c) 2013 HoangNA. All rights reserved.
//

#import "Parallelogram.h"

@implementation Parallelogram
- (id) initWithEdgeA: (float)edgeA
               edgeB: (float)edgeB
              height: (float)height
{
    if (self = [super init])
    {
        _edges = malloc(sizeof(float)*3);
        _edges[0] = edgeA;
        _edges[1] = edgeB;
        _edges[2] = height;
    }
    return self;
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"Parallelogram [%f, %f, %f]", _edges[0], _edges[1], _edges[2]];
}

- (float) calPerimeter
{
    return 2 * (_edges[0] + _edges[1]);
}

- (float) calArea
{
    return _edges[0] * _edges[1];
}
@end
