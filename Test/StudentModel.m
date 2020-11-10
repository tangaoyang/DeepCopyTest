//
//  StudentModel.m
//  Test
//
//  Created by Cinderella on 2020/11/9.
//

#import "StudentModel.h"

@implementation StudentModel

- (void)setValue:(id)value forUndefinedKey:(NSString *)key {
    if([key isEqualToString:@"sex"]){
        self.studentSex = (NSString *)value;
    }
}

@end
