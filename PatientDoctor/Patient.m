//
//  Patient.m
//  PatientDoctor
//
//  Created by Harry Li on 2017-06-01.
//  Copyright © 2017 Harry. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient

- (instancetype)init
{
    self = [super init];
    if (self) {
        _symptoms = [NSArray array];
    }
    return self;
}


-(instancetype)initWithName: (NSString *)name andAge: (NSInteger)age andHasHealthCard:(BOOL)hasHealthCard andSymptoms: (NSArray *)symptoms{
    self = [self init];
    _name = name;
    _age = age;
    _hasHealthCard = hasHealthCard;
    _symptoms = symptoms;
    
    return self;
}

-(void)visitDoctor:(Doctor *)doc{
    [doc checkPatientHealthCard: self];
}

-(void)requestMedication:(Doctor *)doc{
    [doc prescribeMed:self];
}

-(void)receiveMedication:(NSArray *)meds{
    NSLog(@"Medicine received: %@", meds);
}

@end
