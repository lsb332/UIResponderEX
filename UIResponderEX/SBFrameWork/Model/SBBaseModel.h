//
//  SBBaseModel.h
//  A50
//
//  Created by lsb on 16/4/27.
//  Copyright © 2016年 lsb. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SBBaseModel : NSObject

@property (nonatomic, copy)NSString *uniqueKey;

-(void)save;

-(void)remove;

@end
