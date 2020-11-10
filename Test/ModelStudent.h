//
//  ModelStudent.h
//  Test
//
//  Created by Cinderella on 2020/10/26.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class ModelDog;

@interface ModelStudent : NSObject<NSCoding, NSCopying> {
    @public
//    NSString *name;
//    NSString *isName;
//    NSString *_isName;
//    NSString *_name;
}

//oid (^)(void) study;
typedef void (^StudyBlock)(void);

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) StudyBlock _Nullable study;
//@property (nonatomic, assign) NSInteger age;
@property (nonatomic, assign) NSInteger sex;
@property (nonatomic, strong) ModelDog *dog;

@end

NS_ASSUME_NONNULL_END
