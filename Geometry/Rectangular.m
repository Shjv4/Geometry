//
//  Rectangular.m
//  Geometry
//
//  Created by MAC on 3/15/13.
//  Copyright (c) 2013 HoangNA. All rights reserved.
//

#import "Rectangular.h"

@implementation Rectangular
- (id) initWithLength:(float)length andWidth:(float)width
{
    if(self =[super init])
    {
        _edges = malloc(sizeof(float)*2);
        _edges[0] = length;
        _edges[1] = width;
        
    }
    return self;
}
- (NSString *) description
{
    return [NSString stringWithFormat:@"Rectangular length = %f, width = %f",_edges[0], _edges[1]];
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
