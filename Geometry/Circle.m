//
//  Circle.m
//  Geometry
//
//  Created by MAC on 3/15/13.
//  Copyright (c) 2013 HoangNA. All rights reserved.
//

#import "Circle.h"

@implementation Circle
- (id) initWithRadius:(float)radius
{
    if(self = [super init])
    {
        _edges = malloc(sizeof(float));
        _edges[0] = radius;
    }
    return self;
}
- (NSString *) description
{
    return [NSString stringWithFormat:@"Circle radius = %f", _edges[0]];
}
- (float) calPerimeter
{
    return 2 * M_PI * _edges[0];
}
- (float)calArea
{
    return M_PI * powf(_edges[0], 2);
}
@end
