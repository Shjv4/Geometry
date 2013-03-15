//
//  Geometry.h
//  Geometry
//
//  Created by MAC on 3/15/13.
//  Copyright (c) 2013 HoangNA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Geometry : NSObject
{
    float *_edges;
}
- (float) calPerimeter;
- (float) calArea;

@end
