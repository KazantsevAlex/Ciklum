

#import "Mechanic.h"

#import "Mechanic.h"

@implementation Mechanic

-(void)vehicleEngineRepaer:(Vehicle *)vehicle{
    switch (vehicle.typeEngineType) {
        case 0:
            NSLog(@"Mechanic doesn't know how to fix this type engine");
            vehicle.serviceInfo = @"Mechanic doesn't know how to fix this type engine.";
            break;
        case 1:
            NSLog(@"Mechanic fixes this type engine very well");
            vehicle.serviceInfo = @"Mechanic fix this type engine very well.";
            break;
        case 2:
            NSLog(@"Mechanic fixes this type engine rearly");
            vehicle.serviceInfo = @"Mechanic fixes this type engine rearly.";
            break;
        case 3:
            NSLog(@"Mechanic  fixes this type engine once");
            vehicle.serviceInfo = @"Mechanic  fixes this type engine once.";
            break;
    }
}
-(void)vehicleMaintenance:(Vehicle *)vehicle{
    if (vehicle.carOdometr > 10000) {
        NSLog(@"Car %@ need service", vehicle.carName);
        vehicle.carOdometrInfo = @"Car need service.";
    }
    if (vehicle.carOdometr < 10000) {
        NSLog(@"Car %@ has to service %ld km", vehicle.carName, (10000 - vehicle.carOdometr));
        vehicle.carOdometrInfo = @"Car hasn't need service now.";
    }
}

@end

