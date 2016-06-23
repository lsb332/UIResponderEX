//
//  SBModelManager.m
//  A50
//
//  Created by lsb on 16/4/27.
//  Copyright © 2016年 lsb. All rights reserved.
//

#import "SBModelManager.h"
#import "SBBaseModel.h"

static  NSString const * UserKey = @"A50UserList";

@implementation SBModelManager

+(instancetype)manager {
    static id manager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[self alloc] init];
    });
    return manager;
}


- (void)saveObjectToDatabase:(id)obj {
    
}

- (void)saveObjectToUserDefaults:(SBBaseModel *)obj {
    
}

- (id)findObjectByUniqueKey:(NSString *)key objectClass:(Class)objectCalss{
       return nil;
}

- (id)findObjectByKey:(NSString *)key {
    NSDictionary *object = [[NSUserDefaults standardUserDefaults] dictionaryForKey:key];
    if (!object) {
        return nil;
    }
    return object;
}

- (NSArray *)findAllObjects:(Class)objectCalss {
    return nil;
}

- (void)removeAllObjects:(Class)objectCalss {
    
}

- (void)removeObject:(SBBaseModel *)obj {
    NSString *key = NSStringFromClass([obj class]);
    NSDictionary * result = [[NSUserDefaults standardUserDefaults] dictionaryForKey:key];
    NSMutableDictionary * list = [NSMutableDictionary dictionaryWithDictionary:result];
    [list removeObjectForKey:obj.uniqueKey];
    [[NSUserDefaults standardUserDefaults] setObject:list forKey:key];
}
@end
