#import <Foundation/Foundation.h>
#import "Tire.h"
#import "Engine.h"
#import "Car.h"
#import "Slant6.h"
#import "AllWeatherRadial.h"

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	Car *car = [[Car alloc] init];
	car.name = @"Herbie";
	int i;
	
	for (i = 0; i < 4; i++) {
		AllWeatherRadial *tire = [[AllWeatherRadial alloc] init];
		tire.rainHandling = 20+i;
		tire.snowHandling = 28+i;
		[car setTire:tire atIndex:i];
		[tire release];
	}
	
	Engine *engine = [[Slant6 alloc] init];
	car.engine= engine;
	[engine release];
	
	[car print];
	
	Car *carCopy = [car copy];
	[carCopy print];
	
	[car release];
	[carCopy release];
    [pool drain];
    return 0;
}
