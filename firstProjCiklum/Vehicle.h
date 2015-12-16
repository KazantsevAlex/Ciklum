

#import <Foundation/Foundation.h>

@protocol VehicleDelegate;

typedef enum vehicleEngineFuel{
    diselType,
    GasType
}vehicleEngineFuel;

typedef enum vehicleEngineType{
    rotaryType,
    inlineType,
    VType,
    WType
}vehicleEngineType;

@interface Vehicle : NSObject

@property (strong, nonatomic) NSString *carName;
@property (assign, nonatomic) NSInteger carOdometr;
@property (assign, nonatomic) vehicleEngineFuel typeEngineFuel;
@property (assign, nonatomic) vehicleEngineType typeEngineType;
@property (strong, nonatomic) NSString *serviceInfo;
@property (assign, nonatomic) NSString *carOdometrInfo;
@property (weak, nonatomic) id<VehicleDelegate> delegate;


-(void)startEngine;
-(void)vehicleNeedServide;


@end

#pragma mark - VehicleDelegate

@protocol VehicleDelegate <NSObject>

-(void)vehicleEngineRepaer:(Vehicle*) vehicle;
-(void)vehicleMaintenance:(Vehicle*)vehicle;


@end