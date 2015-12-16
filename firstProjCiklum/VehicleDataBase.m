

#import "VehicleDataBase.h"

@implementation VehicleDataBase

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.vehicleBase = [NSMutableArray new];
    }
    return self;
}

-(void)addNewVehicle:(Vehicle*)object
{
    [self.vehicleBase addObject:object];
}

-(Vehicle*)showVehicleFromBase:(NSInteger)index
{
    return [self.vehicleBase objectAtIndex:index];
}
-(NSInteger)vehicleCount
{
    return self.vehicleBase.count;
}

@end