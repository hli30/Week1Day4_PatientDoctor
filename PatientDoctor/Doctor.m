//
//  Doctor.m
//  PatientDoctor
//
//  Created by Harry Li on 2017-06-01.
//  Copyright © 2017 Harry. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@implementation Doctor

- (instancetype)init
{
    self = [super init];
    if (self) {
        _patientDirectory = [NSMutableArray array];
        _treatBySymptom = [[NSDictionary alloc]initWithObjectsAndKeys:@"coughMed", @"cough",@"coldMed",@"cold",@"feverMed",@"fever", nil];
    }
    return self;
}

-(instancetype)initWithName: (NSString *)name andSpecialization: (NSString *)specialization{
  
    self = [self init];
    _name = name;
    _specialization = specialization;
    
    return self;
}

-(void)checkPatientHealthCard: (Patient *)pat{
    if ([pat hasHealthCard]) {
        [self.patientDirectory addObject:pat];
        [pat requestMedication:self];
    }else{
        NSLog(@"No health card, reject.");
    }
}

-(void)prescribeMed: (Patient *)pat{
    
    NSArray *patSymptoms = pat.symptoms;
    NSMutableArray *medication = [NSMutableArray array];
    
    for (NSString *symptom in patSymptoms) {
        [medication addObject:self.treatBySymptom[symptom]];
    }
    
    [self.prescriptionHistory addObject:medication];
    [pat receiveMedication:medication];
}





@end
