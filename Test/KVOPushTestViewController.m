//
//  KVOPushTestViewController.m
//  Test
//
//  Created by Cinderella on 2020/11/9.
//

#import "KVOPushTestViewController.h"
#import "ModelStudent.h"

@interface KVOPushTestViewController ()

@end

@implementation KVOPushTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor blueColor];
    
    ModelStudent *student = [[ModelStudent alloc] init];
    // 添加KVO监听
    [student addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:NULL];
    
    NSLog(@"---");
    
    student.name = @"122";
    
    // 通过KVC修改age属性
//    [student setValue:@"qqq" forKey:@"name"];
//    NSLog(@"%@", [student valueForKey:@"name"]);
    
//    [student removeObserver:self forKeyPath:@"name"];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self dismissViewControllerAnimated:NO completion:nil];
}

- (void)dealloc {
    NSLog(@"5678");
//    [super dealloc];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    NSLog(@"KVO --  %@", change);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
