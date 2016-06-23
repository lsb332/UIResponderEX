//
//  SBModelManager.h
//  A50
//
//  Created by lsb on 16/4/27.
//  Copyright © 2016年 lsb. All rights reserved.
//

#import <Foundation/Foundation.h>


@class SBBaseModel;

@interface SBModelManager : NSObject

+ (instancetype)manager;

- (void)saveObjectToUserDefaults:(SBBaseModel *)obj;

- (void)saveObjectToDatabase:(SBBaseModel *)obj;


- (NSArray *)findAllObjects:(Class)objectCalss;

- (id)findObjectByUniqueKey:(NSString *)key objectClass:(Class)objectCalss;

- (void)removeAllObjects:(Class)objectCalss;

- (void)removeObject:(SBBaseModel *)obj;


@end
