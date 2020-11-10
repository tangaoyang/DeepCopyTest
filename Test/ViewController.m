//
//  ViewController.m
//  Test
//
//  Created by Cinderella on 2020/10/26.
//

#import "ViewController.h"
#import "ModelStudent.h"
#import "NSArray+DeepCopy.h"
#import "ModelDog.h"
#import "StudentModel.h"
#import "KVOPushTestViewController.h"

@interface ViewController ()

@property (nonatomic, copy) NSArray *array;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    /*
     
     完全深复制
     
    ModelStudent *student1 = [[ModelStudent alloc] init];
    student1.name = @"111";
    student1.age = 10;
    student1.sex = 1;
    
    ModelStudent *student2 = [[ModelStudent alloc] init];
    student2.name = @"222";
    student2.age = 20;
    student2.sex = 0;

    self.array = @[student1, student2];
    
     协议
     
    NSMutableString *string = [[NSMutableString alloc] initWithString:@"123"];
    NSArray *manyArray = [[NSArray alloc] initWithObjects:_array, string, nil];
    NSArray *copyArray = [manyArray deepCopy];
    [string appendString:@"123"];
    NSLog(@"manyArray %@ \ncopy array %@", manyArray, copyArray);
     */
    
    /*     测试归档解档
    UIButton *writeButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.view addSubview:writeButton];
    writeButton.frame = CGRectMake(100, 100, 100, 100);
    writeButton.backgroundColor = [UIColor grayColor];
    [writeButton setTitle:@"write" forState:UIControlStateNormal];
    [writeButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [writeButton addTarget:self action:@selector(write) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *removeButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.view addSubview:removeButton];
    removeButton.frame = CGRectMake(100, 300, 100, 100);
    removeButton.backgroundColor = [UIColor grayColor];
    [removeButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [removeButton setTitle:@"remove" forState:UIControlStateNormal];
    [removeButton addTarget:self action:@selector(remove) forControlEvents:UIControlEventTouchUpInside];
     */
    
    /*    block 使用弱指针
    ModelStudent *student = [[ModelStudent alloc] init];
    student.name = @"Hello World";
    __weak typeof(student) weakSelf = student;
    student.study = ^{
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)),dispatch_get_main_queue(), ^{
            NSLog(@"dispatch_after ---  %@", weakSelf);  //  (null)
            NSLog(@"my name is = %@",weakSelf.name);
        });
        NSLog(@"student.study  ---  %@", weakSelf);   //   <ModelStudent: 0x6000021a2280>
    };
     
    NSLog(@"outside   ---  %@", weakSelf);  // <ModelStudent: 0x6000021a2280>
    student.study();
    */
    
    /*    KVO
    self.student1 = [[ModelStudent alloc] init];
    _student1.age = 10;
    NSKeyValueObservingOptions options = NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld;
    [_student1 addObserver:self forKeyPath: @"age" options: options context:nil];
    
    NSLog(@"willChangeValueForKey");
    [_student1 willChangeValueForKey:@"age"];
    NSLog(@"didChangeValueForKey");
    [_student1 didChangeValueForKey:@"age"];

    
    self.student2 = [[ModelStudent alloc] init];
    _student2.age = 10;
    
    NSLog(@"stu1 %s ---  stu2 %s", object_getClassName(_student1), object_getClassName(_student2));
    NSLog(@"stu1 %p ---  stu2 %p", [_student1 methodForSelector:@selector(setAge:)], [_student2 methodForSelector:@selector(setAge:)]);
     */
    
    
    /*      KVC
//    ModelStudent *student = [[ModelStudent alloc] init];
//    student.dog = [[ModelDog alloc] init];
//    [student.dog setValue:@"aa" forKey:@"name"];
//    NSLog(@"%@", [student.dog valueForKey:@"name"]);
//    [student setValue:@"ww" forKeyPath:@"dog.name"];
//    NSLog(@"%@", [student valueForKeyPath:@"dog.name"]);
    
//    [_student1 setValue:@"yyy" forKey:@"name"];
//    NSLog(@"%@", [_student1 valueForKey:@"name"]);
//
//    [_student1 setValue:@"xian" forKey:@"city"];
//    NSLog(@"%@", [_student1 valueForKey:@"city"]);
    
//    NSKeyValueObservingOptions options = NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld;
//    [_student1 addObserver:self forKeyPath: @"age" options: options context:nil];
    
    
//    NSLog(@"%ld", _student1.age);
    
    
    NSDictionary *dic = @{@"name":@"book", @"age" : @"66", @"sex": @"male"};
    StudentModel *model = [[StudentModel alloc] init];
    
    [model setValuesForKeysWithDictionary:dic];
    
    NSLog(@"model.name : %@", model.name);
    NSLog(@"model.num : %@", model.age);
    NSLog(@"model.sex : %@", model.studentSex);
    
    NSDictionary *dic = @{@"name" : @"book", @"age" : @"66", @"sex" : @"male"};
    StudentModel *model = [[StudentModel alloc] init];
    
    [model setValuesForKeysWithDictionary:dic];
    
    NSDictionary *modelDic = [model dictionaryWithValuesForKeys:@[@"name", @"age", @"studentSex"]];
    NSLog(@"modelDic : %@", modelDic);
     */
    
    /*    string的copy测试
    NSMutableString *mutableString = [NSMutableString stringWithFormat:@"123"];
    self.string = mutableString;
    NSLog(@"%p %p", _string, mutableString);
    [mutableString appendFormat:@"456"];
    NSLog(@"%@", _string);
    NSLog(@"%p %p", _string, mutableString);
     */
    

    [self communication];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
//    [_student1 setValue:@10 forKey:@"age"];
//    NSLog(@"%ld", _student1.age);
    
    /*    KVO
    _student1.age = 20;
    NSLog(@"_student1.age  ----    %ld", (long)_student1.age);
    
    _student2.age = 30;
    NSLog(@"_student2.age  ----    %ld", (long)_student2.age);
     */
    
//    NSLog(@"%@", _student1);
    
    KVOPushTestViewController *push = [[KVOPushTestViewController alloc] init];
    [self presentViewController:push animated:NO completion:nil];
    
}

/**
 * 线程间通信
 */
- (void)communication {
    // 获取全局并发队列
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    // 获取主队列
    dispatch_queue_t mainQueue = dispatch_get_main_queue();
    
    dispatch_async(queue, ^{
        // 异步追加任务 1
        [NSThread sleepForTimeInterval:2];              // 模拟耗时操作
        NSLog(@"1---%@",[NSThread currentThread]);      // 打印当前线程
        
        // 回到主线程
        dispatch_async(mainQueue, ^{
            // 追加在主线程中执行的任务
            [NSThread sleepForTimeInterval:2];              // 模拟耗时操作
            NSLog(@"2---%@",[NSThread currentThread]);      // 打印当前线程
        });
    });
    
    [NSThread sleepForTimeInterval:2];              // 模拟耗时操作
    NSLog(@"3---%@",[NSThread currentThread]);      // 打印当前线程
    
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    NSLog(@"触发了KVO   -   %@", change);
}

- (void)dealloc {
//    [_student1 removeObserver:self forKeyPath:@"age" context:nil];
    NSLog(@"dealloc");
}

- (void)write {
    
    /*   自定义对象
    
    ModelStudent *student1 = [[ModelStudent alloc] init];
    student1.name = @"111";
//    student1.age = 10;
    student1.sex = 1;
    
    ModelStudent *student2 = [[ModelStudent alloc] init];
    student1.name = @"111222";
//    student1.age = 120;
    student1.sex = 12;
    
    NSMutableString *string = [[NSMutableString alloc] initWithString:@"123"];
    NSArray *aArray = @[@"123", string];
    self.array = @[aArray, student1, student2];
    
     //沙盒ducument目录
     NSString *docPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
     //完整的文件路径
     NSString *path = [docPath stringByAppendingPathComponent:@"student.archiver"];
     
     //将数据归档到path文件路径里面
     NSData *data = [NSKeyedArchiver archivedDataWithRootObject:_array requiringSecureCoding:NO error:nil];
     BOOL success = [data writeToFile:path atomically:YES];
     
     if (success) {
         NSLog(@"归档成功");
     }else {
         NSLog(@"归档失败");
     }
    
    [string appendString:@"222"];
    */
    
    /*  普通类型数组
    //沙盒根目录
    NSString *docPath = NSHomeDirectory();
    //完整的文件路径
    NSString *path = [docPath stringByAppendingPathComponent:@"Documents/numbers.plist"];
    NSArray *numbers = @[@"one",@"two"];
    
    //将数据归档到path文件路径里面
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:numbers requiringSecureCoding:NO error:nil];
    BOOL success = [data writeToFile:path atomically:NO];
    
    if (success) {
        NSLog(@"文件归档成功");
    } else {
        NSLog(@"文件归档失败");
    }
     */
    
}

- (void)remove {
    
    /*   普通类型数组
    NSString *docPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    //完整的文件路径
    NSString *path = [docPath stringByAppendingPathComponent:@"numbers.plist"];
    NSData *data = [NSData dataWithContentsOfFile:path];
    NSArray *array = [NSKeyedUnarchiver unarchivedObjectOfClass:[NSArray class] fromData:data error:nil];
    NSLog(@"%@", array);
    */
     
    /*   自定义对象
     */
    NSString *docPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    NSString *path = [docPath stringByAppendingPathComponent:@"student.archiver"];
    NSArray *copyArray = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
    NSLog(@"%@\n%@", _array, copyArray);
    
}


@end
