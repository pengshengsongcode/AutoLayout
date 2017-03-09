//
//  MyTableViewCell.m
//  xibDemo
//
//  Created by 彭盛凇 on 2017/3/9.
//  Copyright © 2017年 huangbaoche. All rights reserved.
//

#import "MyTableViewCell.h"

@interface MyTableViewCell ()
@property (weak, nonatomic) IBOutlet UILabel *textLB;

@end


@implementation MyTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
    }
    return self;
}

/**
 *  赋值
 *
 *  @param model ViewController传递过来的Model用来赋值
 */
- (void)setModel:(Model *)model{
        _model = model;
        _textLB.text = [NSString stringWithFormat:@"%@", model.text];
}

@end
