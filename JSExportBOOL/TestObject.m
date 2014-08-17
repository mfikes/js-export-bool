//
//  TestObject.m
//  JSExportBOOL
//
//  Created by Mike Fikes on 8/17/14.
//  Copyright (c) 2014 FikesFarm. All rights reserved.
//

#import "TestObject.h"

@implementation TestObject

-(BOOL)alwaysTrueBOOL
{
    return YES;
}

-(void)setAlwaysTrueBOOL:(BOOL)value
{
    // Ignore
}

-(BOOL)alwaysFalseBOOL
{
    return NO;
}

-(void)setAlwaysFalseBOOL:(BOOL)alwaysFalse
{
    // Ignore
}

-(JSValue*)alwaysTrueJSValue
{
    return [JSValue valueWithBool:YES inContext:[JSContext currentContext]];
}

-(void)setAlwaysTrueJSValue:(JSValue *)alwaysTrueJSValue
{
    // Ignore
}

-(JSValue*)alwaysFalseJSValue
{
    return [JSValue valueWithBool:NO inContext:[JSContext currentContext]];
}

-(void)setAlwaysFalseJSValue:(JSValue *)alwaysFalseJSValue
{
    // Ignore
}

@end
