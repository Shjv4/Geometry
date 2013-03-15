//
//  Square.m
//  Geometry
//
//  Created by MAC on 3/15/13.
//  Copyright (c) 2013 HoangNA. All rights reserved.
//

#import "Square.h"

@implementation Square
- (id) initWithSide: (float)side
{
    if(self = [super init])
    {
        _edges = malloc(sizeof(float));
        _edges[0] = side;
    }
    return self;
}
- (NSString *) description
{
    return [NSString stringWithFormat:@"Square side = %f", _edges[0]];
}
- (float) calPerimeter
{
    return 4 * _edges[0];
}
- (float) calArea
{
    return powf(_edges[0], 2);
}
@end
