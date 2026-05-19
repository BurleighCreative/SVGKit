#import "SVGPreserveAspectRatio.h"
#import "SVGKDefine.h"

@implementation SVGPreserveAspectRatio

/** Sets default values mandated by SVG Spec */
- (id)init
{
    self = [super init];
    if (self) {
        self.align = SVG_PRESERVEASPECTRATIO_XMIDYMID;
		self.meetOrSlice = SVG_MEETORSLICE_MEET;
    }
    return self;
}
@end
