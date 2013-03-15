//
//  Ellipse.m
//  Geometry
//
//  Created by MAC on 3/15/13.
//  Copyright (c) 2013 HoangNA. All rights reserved.
//

#import "Ellipse.h"

@implementation Ellipse
- (id) initWithMajorAxis:(float)majorAxist andMinorAxis:(float)minorAxis
{
    if(self = [super init])
    {
        _edges = malloc(sizeof(float)*2);
        _edges[0] = majorAxist;
        _edges[1] = minorAxis;
    }
    return self;
}
- (NSString *) description
{
    return [NSString stringWithFormat:@"Ellipse major axis = %f, minor axis = %f", _edges[0], _edges[1]];
}
- (float) calPerimeter
{
    return 2 * M_PI * sqrtf((powf(_edges[0], 2) + powf(_edges[1], 2)) / 2);
}
- (float) calArea
{
    return M_PI * _edges[0] * _edges[1];
}
@end
