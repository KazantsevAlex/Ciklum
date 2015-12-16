

#import "Vehicle.h"

@implementation Vehicle

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.carName = @"default";
        self.carOdometr = 0;
        self.typeEngineFuel = arc4random()%2;
        self.typeEngineType = arc4random()%3;
        self.serviceInfo = @"";
        self.carOdometrInfo = @"";
    }
    return self;
}

-(void)vehicleNeedServide{
    [self.delegate vehicleMaintenance:self];
}
-(void)startEngine{
    bool isStart = arc4random()%2;
    
    if (!isStart) {
        NSLog(@"%@ isn't start and need repear", self.carName);
        [self.delegate vehicleEngineRepaer:self];
    }
}

@end

