//
//  Patient.h
//  PatientDoctor
//
//  Created by Harry Li on 2017-06-01.
//  Copyright © 2017 Harry. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Doctor;

@interface Patient : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) NSInteger age;
@property (nonatomic, assign) BOOL hasHealthCard;
@property (nonatomic, strong) NSArray *symptoms;

-(instancetype)initWithName: (NSString *)name andAge: (NSInteger)age andHasHealthCard: (BOOL)hasHealthCard andSymptoms: (NSArray *)symptoms;
-(void)visitDoctor:(Doctor *)doc;
-(void)requestMedication:(Doctor *)doc;
-(void)receiveMedication:(NSArray *)meds;

@end
