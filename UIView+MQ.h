
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
 *    修改内容： 修改原因以及修改内容说明
 *修改记录2：...
 *
 ***************************************************************************/

#import <UIKit/UIKit.h>

@interface UIView (MQ)

@property (nonatomic) IBInspectable CGFloat cornerRadius;

/** 头像圆角 */
@property (nonatomic) IBInspectable BOOL avatarCorner;

/** 边框 */
@property (nonatomic) IBInspectable CGFloat borderWidth;

/** 边框颜色*/
@property (nonatomic, strong) IBInspectable UIColor *borderColor;

+ (__kindof UIView *)MQLoadNibView;
- (void)MQSetViewCircleWithBorderWidth:(CGFloat) width andColor:(UIColor *)borColor;
- (void)MQViewSetCornerRadius:(CGFloat)radius;

@end
