//
//  main.m
//  PatientDoctor
//
//  Created by Harry Li on 2017-06-01.
//  Copyright © 2017 Harry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Doctor.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
      
        Doctor *doc = [[Doctor alloc]initWithName:@"Tom" andSpecialization:@"Physician"];
        Patient *pat = [[Patient alloc]initWithName:@"Bob" andAge:30 andHasHealthCard:YES andSymptoms:@[@"cough"]];
        Patient *pat2 = [[Patient alloc]initWithName:@"Joe" andAge:20 andHasHealthCard:YES andSymptoms:@[@"fever"]];
        Patient *pat3 = [[Patient alloc]initWithName:@"James" andAge:20 andHasHealthCard:NO andSymptoms:@[@"fever"]];
        
        [pat visitDoctor:doc];
        [pat2 visitDoctor:doc];
        [pat3 visitDoctor:doc];
 
    }
    return 0;
}
