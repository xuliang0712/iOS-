
/***************************************************************************
 *版权所有 ©大渭文化
 *
 *文件名称： 文件名
 *文件标识： 见配置管理计划书
 *内容摘要： 简要描述本文件的内容，包括主要模块、函数及其功能的说明
 *其他说明： 其他内容的说明
 *当前版本： 1.0.0
 *作   者： 许亮
 *完成日期：时间
 
 *修改记录1： 修改历史记录
 *    修改日期： <##>
 *    版 本 号： <##>
 *    修 改 人： <##>
 *    修改内容： <#修改原因以及修改内容说明#>
 *修改记录2：...
 *
 ***************************************************************************/

#import "UIView+MQ.h"
#import <objc/runtime.h>

@implementation UIView (MQ)

- (CGFloat)cornerRadius
{
    return [objc_getAssociatedObject(self, @selector(cornerRadius)) floatValue];
}

- (void)setCornerRadius:(CGFloat)cornerRadius
{
    self.layer.cornerRadius = cornerRadius;
    self.layer.masksToBounds = (cornerRadius > 0);
}

- (BOOL)avatarCorner{
    return [objc_getAssociatedObject(self, @selector(cornerRadius)) floatValue] > 0;
}

- (void)setAvatarCorner:(BOOL)corner{
    if (corner){
        self.layer.cornerRadius = CGRectGetWidth(self.frame)/2;
        self.layer.masksToBounds = corner;
    }
}

- (CGFloat)borderWidth{
    return [objc_getAssociatedObject(self, @selector(borderWidth)) floatValue];
}

- (void)setBorderWidth:(CGFloat)borderWidth{
    self.layer.borderWidth = borderWidth;
    self.layer.masksToBounds = (borderWidth > 0);
}


- (UIColor *)borderColor{
    return objc_getAssociatedObject(self, @selector(borderColor));
}

- (void)setBorderColor:(UIColor *)borderColor{
    self.layer.borderColor = borderColor.CGColor;
}


+ (__kindof UIView *)MQLoadNibView{
    NSString *className = NSStringFromClass([self class]);
    return [[[UINib nibWithNibName:className bundle:nil] instantiateWithOwner:self options:nil] lastObject];
}


-(void)MQViewSetCornerRadius:(CGFloat)radius{
    [self.layer setMasksToBounds:YES];
    [self.layer setCornerRadius:radius];
}
-(void)MQSetViewCircleWithBorderWidth:(CGFloat) width andColor:(UIColor *)borColor{
    [self MQViewSetCornerRadius:(self.frame.size.height/2)];
    self.layer.borderWidth=width;
    self.layer.borderColor=[borColor CGColor];
}

@end
