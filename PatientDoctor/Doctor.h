//
//  Doctor.h
//  PatientDoctor
//
//  Created by Harry Li on 2017-06-01.
//  Copyright © 2017 Harry. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Patient;

@interface Doctor : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *specialization;
@property (nonatomic, strong) NSMutableArray *patientDirectory;
@property (nonatomic, strong) NSDictionary *treatBySymptom;
@property (nonatomic, strong) NSMutableArray *prescriptionHistory;

-(instancetype)initWithName: (NSString *)name andSpecialization: (NSString *)specialization;
-(void)checkPatientHealthCard: (Patient *)pat;
-(void)prescribeMed:(Patient *)pat;

@end
