//
//  ViewController.m
//  CustomTransition
//
//  Created by wzkj on 15/12/9.
//  Copyright © 2015年 wzkj. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+WebCache.h"
#import "DZTransition.h"

#import "DetailController.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
{
    NSArray *images;
}
@property (weak, nonatomic) IBOutlet UITableView *table;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    images = images = @[@"http://g.hiphotos.baidu.com/image/h%3D300/sign=1f38efb6d7a20cf45990f8df46084b0c/9d82d158ccbf6c81c6b044d9bb3eb13533fa407f.jpg",
                                @"http://img15.3lian.com/2015/f2/147/d/36.jpg",
                                @"http://img2.3lian.com/2014/f4/171/d/67.jpg",
                                @"http://img2.3lian.com/2014/f5/36/d/8.jpg",
                              @"http://img15.3lian.com/2015/f2/147/d/32.jpg",
                            @"http://c.hiphotos.baidu.com/zhidao/pic/item/a686c9177f3e6709d391d3093bc79f3df9dc55b6.jpg",
                              @"http://tupian.enterdesk.com/2013/lxy/12/30/2/5.jpg",
                              @"http://img2.3lian.com/2014/f2/191/d/78.jpg",
                              @"http://d.3987.com/hunanxiaohua_141128/009.jpg",
                              @"http://pic25.nipic.com/20121128/7499444_201959693397_2.jpg",
                            @"http://img2.3lian.com/2014/f2/167/d/30.jpg",
                              @"http://img15.3lian.com/2015/f2/147/d/39.jpg",
                              @"http://img2.3lian.com/2014/f5/36/d/10.jpg",
                              @"http://tupian.enterdesk.com/2013/lxy/12/30/2/1.jpg",
                              @"http://g.hiphotos.baidu.com/zhidao/pic/item/6a63f6246b600c33d95600021a4c510fd8f9a1c9.jpg",
                              @"http://img2.3lian.com/2014/f5/36/d/17.jpg",
                              @"http://img2.3lian.com/2014/f5/36/d/14.jpg",
                            @"http://img2.3lian.com/2014/f5/36/d/13.jpg",
                              @"http://img1.3lian.com/2015/w7/87/d/25.jpg",
                        @"http://img4.imgtn.bdimg.com/it/u=3072567075,382986007&fm=23&gp=0.jpg",
                              @"http://img3.imgtn.bdimg.com/it/u=384098557,1600979096&fm=23&gp=0.jpg",
                              @"http://img3.imgtn.bdimg.com/it/u=956976017,2117149078&fm=23&gp=0.jpg",
                              @"http://img4.imgtn.bdimg.com/it/u=260409981,1792003879&fm=23&gp=0.jpg",
                              @"http://img5.imgtn.bdimg.com/it/u=4249217816,2028043027&fm=23&gp=0.jpg",
                              @"http://img0.imgtn.bdimg.com/it/u=1853615923,569681345&fm=23&gp=0.jpg",
                            @"http://img0.imgtn.bdimg.com/it/u=3713835842,3387090812&fm=23&gp=0.jpg",
                              @"http://img0.imgtn.bdimg.com/it/u=1439922953,3029001431&fm=23&gp=0.jpg",
                              @"http://img4.imgtn.bdimg.com/it/u=479424316,1039640634&fm=23&gp=0.jpg",
                              @"http://img3.imgtn.bdimg.com/it/u=1600444835,1038995668&fm=23&gp=0.jpg"
                        ];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return images.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"tablecell"];
    NSString *imageUrl = [images objectAtIndex:indexPath.row];
    [[cell imageView] sd_setImageWithURL:[NSURL URLWithString:imageUrl]];
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 350;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    DetailController *detail = [DetailController new];
    detail.delegate = [[DZTransitionDelegate alloc] init];
    [self presentViewController:detail animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
