//
//  ViewController.h
//  Test
//
//  Created by Cinderella on 2020/10/26.
//

#import <UIKit/UIKit.h>
#import <AFNetworking.h>

@class ModelStudent;

@interface ViewController : UIViewController

@property (nonatomic, strong) ModelStudent *student1;
@property (nonatomic, strong) ModelStudent *student2;
@property (nonatomic, copy) NSString *string;
@property (nonatomic,strong) AFHTTPSessionManager *session;

@end

