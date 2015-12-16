
#import <Foundation/Foundation.h>
#import "Vehicle.h"

@interface VehicleDataBase : NSObject

@property (strong, nonatomic)NSMutableArray *vehicleBase;

- (instancetype) init;
- (void) addNewVehicle:(Vehicle*)object;
- (Vehicle*) showVehicleFromBase:(NSInteger)index;
- (NSInteger) vehicleCount;

@end
