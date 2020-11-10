//
//  NSArray+DeepCopy.m
//  Test
//
//  Created by Cinderella on 2020/10/27.
//

#import "NSArray+DeepCopy.h"

@implementation NSArray (DeepCopy)

- (instancetype)deepCopy {
    NSMutableArray *mutableResultArray = [[NSMutableArray alloc] initWithCapacity:[self count]];
    for (id subObject in self) {
        id deepCopySubObject = nil;
        if ([subObject respondsToSelector:@selector(deepCopy)]) {   // 比如NSArray嵌套
            deepCopySubObject = [subObject deepCopy];
        } else if ([subObject isKindOfClass:[NSMutableArray class]] || [subObject isKindOfClass:[NSMutableSet class]] || [subObject isKindOfClass:[NSMutableDictionary class]]) {
            deepCopySubObject = [subObject mutableCopy];   // 对于单层mutable元素mutableCopy就是深复制
        } else if ([subObject conformsToProtocol:@protocol(NSCopying)]) {
            deepCopySubObject = [subObject copy];  // 如果实现了NSCopying协议 就直接copy
        } else {
            deepCopySubObject = subObject;
        }

        if (deepCopySubObject) {
            [mutableResultArray addObject:deepCopySubObject];
        } else {
            [mutableResultArray addObject:subObject];
        }
    }

    if ([self isKindOfClass:[NSMutableArray class]]) {
        return mutableResultArray;
    } else {
        return [NSArray arrayWithArray:mutableResultArray];
    }
}

@end
