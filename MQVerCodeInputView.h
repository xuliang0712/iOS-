
/***************************************************************************
 *版权所有 ©大渭文化
 *
 *文件名称： 验证码输入框
 *文件标识： 见配置管理计划书
 *内容摘要： 简要描述本文件的内容，包括主要模块、函数及其功能的说明
 *其他说明： 其他内容的说明
 *当前版本： 1.0.0
 *作   者： 许亮
 *完成日期：2017.7.19
 
 *修改记录1： <#修改历史记录#>
 *    修改日期： <##>
 *    版 本 号： <##>
 *    修 改 人： <##>
 *    修改内容： <#修改原因以及修改内容说明#>
 *修改记录2：...
 *
 ***************************************************************************/

#import <UIKit/UIKit.h>

typedef void(^MQTextViewBlock)(NSString *text);

@interface MQVerCodeInputView : UIView

@property (nonatomic, assign) UIKeyboardType keyBoardType;
@property (nonatomic, copy) MQTextViewBlock block;

/*验证码的最大长度*/
@property (nonatomic, assign) NSInteger maxLenght;

/*未选中下的view的borderColor*/
@property (nonatomic, strong) UIColor *viewColor;

/*选中下的view的borderColor*/
@property (nonatomic, strong) UIColor *viewColorHL;

-(void)mq_verCodeViewWithMaxLenght;

@end
