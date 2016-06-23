//
//  SBBaseModel.m
//  A50
//
//  Created by lsb on 16/4/27.
//  Copyright © 2016年 lsb. All rights reserved.
//

#import "SBBaseModel.h"
#import "SBModelManager.h"

@implementation SBBaseModel

- (void)save {
    [[SBModelManager manager] saveObjectToUserDefaults:self];
}

- (void)remove {
     [[SBModelManager manager] removeObject:self];
}
@end
