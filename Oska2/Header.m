//
//  Header.m
//  Oska2
//
//  Created by Neru on 24/02/2013.
//  Copyright (c) 2013 Neru. All rights reserved.
//

#import "Header.h"

@implementation Header

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self setBackgroundColor:[UIColor clearColor]];
        
        _headerLabel = [[UILabel alloc] init];
        [_headerLabel setText:NSLocalizedString(@"Your storehouse", nil)];
        [_headerLabel setFont:[UIFont fontWithName:@"Palatino-Italic" size:25.0f]];
        [_headerLabel setBackgroundColor:[UIColor clearColor]];
        [_headerLabel setTextAlignment:NSTextAlignmentCenter];
        [self addSubview:_headerLabel];
        
        _headerImageLeft = [[UIImageView alloc] init];
        [_headerImageLeft setImage:[UIImage imageNamed:@"fruits"]];
        [self addSubview:_headerImageLeft];
        
        _headerImageRight = [[UIImageView alloc] init];
        [_headerImageRight setImage:[UIImage imageNamed:@"fruits"]];
        [self addSubview:_headerImageRight];
    }
    return self;
}

/////////////////////////////////////////////////////////////////////////////////
-(void)layoutSubviews
{
    [super layoutSubviews];

    [_headerLabel setFrame:CGRectMake((CGRectGetHeight(self.frame) + 10.0f),
                                      10.0f,
                                      CGRectGetWidth(self.frame) - (CGRectGetHeight(self.frame) * 2.0f + 20.0f),
                                      CGRectGetHeight(self.frame) - 20.0f)];
    
    [_headerImageLeft setFrame:CGRectMake(10.0f,
                                          0.0f,
                                          CGRectGetHeight(self.frame),
                                          CGRectGetHeight(self.frame))];
    
    [_headerImageRight setFrame:CGRectMake((CGRectGetMaxX(self.frame) - CGRectGetHeight(self.frame) - 10.0f),
                                           0.0f,
                                           CGRectGetHeight(self.frame),
                                           CGRectGetHeight(self.frame))];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
