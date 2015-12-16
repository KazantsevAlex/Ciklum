

#import "ViewController.h"
#import "Vehicle.h"
#import "VehicleDataBase.h"
#import "Mechanic.h"
#import <QuartzCore/QuartzCore.h>
#import "Student.h"


@interface ViewController ()
{
    Vehicle             *car;
    VehicleDataBase     *carDB;
    Mechanic            *mechanic;
    Student             *student;
    NSString *globalStr;
}
@property (weak, nonatomic) IBOutlet UITextField *vehicleName;
@property (weak, nonatomic) IBOutlet UITextField *odometrVehicle;
@property (weak, nonatomic) IBOutlet UITextView *vehicleTextView;
@property (weak, nonatomic) IBOutlet UIButton *magicButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    carDB   = [VehicleDataBase new];
    globalStr = [NSString new];
    mechanic = [Mechanic new];
    student = [Student new];
    
    _vehicleName.backgroundColor = [UIColor colorWithRed:190.f/255 green:255.f/255 blue:255.f/255 alpha:1];
    _vehicleName.textColor = [UIColor colorWithRed:130.f/255 green:0.f/255 blue:255.f/255 alpha:1];

    _odometrVehicle.backgroundColor = [UIColor colorWithRed:190.f/255 green:255.f/255 blue:255.f/255 alpha:1];
    _odometrVehicle.textColor = [UIColor colorWithRed:130.f/255 green:0.f/255 blue:255.f/255 alpha:1];
    
    _magicButton.backgroundColor = [UIColor colorWithRed:0.f/255 green:140.f/255 blue:255.f/255 alpha:1];
    _magicButton.titleLabel.font = [UIFont fontWithName:@"Chalkduster" size:20];
    _magicButton.layer.cornerRadius = 10;
    _magicButton.clipsToBounds = YES;
    
    _vehicleTextView.backgroundColor = [UIColor colorWithRed:190.f/255 green:255.f/255 blue:255.f/255 alpha:1];
    _vehicleTextView.textColor = [UIColor blackColor];
    

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)doMagic:(id)sender {
    car     = [Vehicle new];
    car.carName = self.vehicleName.text;
    car.carOdometr = [self.odometrVehicle.text intValue];
    
    if (self.skillSwitch.on == true) {
        car.delegate = mechanic;
    }
    else
    {
        car.delegate = student;
    }
    [car startEngine];
    [car vehicleNeedServide];
    [carDB addNewVehicle:car];
    [self showInfo];
    [self.view endEditing:YES];
}


-(void)showInfo
{
    for (int i = 0; i<carDB.vehicleCount; i++) {
        globalStr = [globalStr stringByAppendingString:[carDB showVehicleFromBase:i].carName];
        globalStr = [globalStr stringByAppendingString:@"-"];
        globalStr = [globalStr stringByAppendingString:[carDB showVehicleFromBase:i].serviceInfo];
        globalStr = [globalStr stringByAppendingString:@"  "];
        globalStr = [globalStr stringByAppendingString:[carDB showVehicleFromBase:i].carOdometrInfo];
        globalStr = [globalStr stringByAppendingString:@"\n"];
        [self.vehicleTextView setText:globalStr];
    }
    
    globalStr = @"";
}
-(void)vehicle
{
    
    
}

@end
