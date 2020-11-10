//
//  ModelStudent.m
//  Test
//
//  Created by Cinderella on 2020/10/26.
//

#import "ModelStudent.h"
#import "ModelDog.h"

@interface ModelStudent ()

@property NSString *city;

@end

@implementation ModelStudent

//@dynamic name;

- (void)setName:(NSString *)name {
    _name = name;
}
//
//- (void)setAge:(NSInteger)age {
////    _age = age;
//    NSLog(@"setAge: %ld", (long)age);
//}
//

//- (void)setName:(NSString *)name {
//    _name = name;
//    NSLog(@"setName: - %@", name);
//}

//- (void)_setName:(NSString *)name {
//    name = name;
//    NSLog(@"_setName: - %@", name);
//}

//- (void)getName {
//    NSLog(@"getName");
//}
//
//- (void)name {
//    NSLog(@"name");
//}
//
//- (void)isName {
//    NSLog(@"isName");
//}
//
//- (void)_getName {
//    NSLog(@"_getName");
//}
//
//- (void)_name {
//    NSLog(@"_name");
//}

- (void)willChangeValueForKey:(NSString *)key {
    [super willChangeValueForKey:key];
    NSLog(@"willChangeValueForKey - %@", key);
}

- (void)didChangeValueForKey:(NSString *)key {
    NSLog(@"didChangeValueForKey - begin - %@", key);
    [super didChangeValueForKey:key];
    NSLog(@"didChangeValueForKey - end - %@", key);
}

//+ (BOOL)accessInstanceVariablesDirectly {
//    return YES;
//}

//- (void)_setAge:(NSInteger)age {
////    _age = age;
//    NSLog(@"_setAge: %ld", (long)age);
//}

//- (void)willChangeValueForKey:(NSString *)key {
//    NSLog(@"willChangeValueForKey: - begin");
//    [super willChangeValueForKey:key];
//    NSLog(@"willChangeValueForKey: - end");
//}
//
//- (void)didChangeValueForKey:(NSString *)key {
//    NSLog(@"didChangeValueForKey: - begin");
//    [super didChangeValueForKey:key];
//    NSLog(@"didChangeValueForKey: - end");
//}

/*
- (id)copyWithZone:(NSZone *)zone {
    ModelStudent *student = [[ModelStudent alloc] init];
    student.name = self.name;
//    student.age = self.age;
    student.sex = self.sex;
    return student;
}
 */

/*
//NSCoding协议方法：将需要归档的属性进行归档
- (void)encodeWithCoder:(NSCoder *)coder {
    [coder encodeInteger:self.age forKey:@"age"];
    [coder encodeObject:self.name forKey:@"name"];
}

//NSCoding协议方法：将需要解档的属性进行解档
- (instancetype)initWithCoder:(NSCoder *)coder {
    if (self = [super init]) {
        self.name = [coder decodeObjectForKey:@"name"];
        self.age = [coder decodeIntegerForKey:@"age"];
    }
    return self;
}*/

@end
