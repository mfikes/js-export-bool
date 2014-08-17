//
//  TestObject.h
//  JSExportBOOL
//
//  Created by Mike Fikes on 8/17/14.
//  Copyright (c) 2014 FikesFarm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>

@protocol MyProtocol<JSExport>

@property BOOL alwaysTrueBOOL;
@property BOOL alwaysFalseBOOL;

@property JSValue* alwaysTrueJSValue;
@property JSValue* alwaysFalseJSValue;

@end

@interface TestObject : NSObject<MyProtocol>

@end
