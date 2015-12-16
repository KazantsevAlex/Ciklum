//
//  Student.m
//  firstProjCiklum
//
//  Created by Казанцев Алексей on 12/14/15.
//  Copyright © 2015 Kazantsev Alexey. All rights reserved.
//

#import "Student.h"

@implementation Student

-(void)vehicleEngineRepaer:(Vehicle *)vehicle{
    vehicle.serviceInfo = @"Ops, student broke it!";
}
-(void)vehicleMaintenance:(Vehicle *)vehicle{
    vehicle.carOdometrInfo = @"Student doesn't know something about it";
}

@end