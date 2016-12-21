//
//  ViewController.m
//  Gestures
//
//  Created by Felix-Madhuri on 05/10/16.
//  Copyright © 2016 Felix-Madhuri. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    _lbl1.userInteractionEnabled=YES;
    
    
    UILongPressGestureRecognizer *longpress=[[UILongPressGestureRecognizer alloc]initWithTarget:self action:@selector(longpress)];
    
    longpress.minimumPressDuration=3;
    [_lbl1 addGestureRecognizer:longpress];
    
    
    _lbl2.userInteractionEnabled=YES;
    
    UITapGestureRecognizer *tap=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tap)];
    
    tap.numberOfTapsRequired=2;
    
    [_lbl2 addGestureRecognizer:tap];
    
    
    
    _imview.userInteractionEnabled=YES;
    
    
    _s1=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipe:)];
    _s1.direction=UISwipeGestureRecognizerDirectionLeft;
    
    _s2=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipe:)];
    _s2.direction=UISwipeGestureRecognizerDirectionRight;
    
    _s3=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipe:)];
    _s3.direction=UISwipeGestureRecognizerDirectionUp;
    
    _s4=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipe:)];
    _s4.direction=UISwipeGestureRecognizerDirectionDown;
    
    
    [_imview addGestureRecognizer:_s1];
    [_imview addGestureRecognizer:_s2];
    [_imview addGestureRecognizer:_s3];
    [_imview addGestureRecognizer:_s4];
}

-(void)swipe:(UISwipeGestureRecognizer *)sender
{
    if(sender==_s1)
        _imview.image=[UIImage imageNamed:@"2"];
    else if(sender==_s2)
        _imview.image=[UIImage imageNamed:@"3"];
    else if(sender==_s3)
        _imview.image=[UIImage imageNamed:@"04"];

    else
        _imview.image=[UIImage imageNamed:@"05"];


    
}










-(void)longpress
{
    self.view.backgroundColor=[UIColor greenColor];
}
-(void)tap{
    
    self.view.backgroundColor=[UIColor blueColor];
}

//-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
//   UITouch *mytouchpoints= [touches anyObject];
//   CGPoint points= [mytouchpoints locationInView:self.view];
//    NSLog(@"start at %.f   %.f",points.x,points.y);
//    
//}
//-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
//    
//    UITouch *mytouchpoints= [touches anyObject];
//    CGPoint points= [mytouchpoints locationInView:self.view];
//    NSLog(@"move at %.f   %.f",points.x,points.y);
//}
//-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
//    
//    UITouch *mytouchpoints= [touches anyObject];
//    CGPoint points= [mytouchpoints locationInView:self.view];
//    NSLog(@"end at %.f   %.f",points.x,points.y);
//}
//
//











- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
