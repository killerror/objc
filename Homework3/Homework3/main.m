//
//  main.m
//  Homework3
//
//  Created by Максим Бобков on 13.02.2024.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Doctor *doctor = [Doctor new];
        Patient *patient1 = [Patient new];
        Patient *patient2 = [Patient new];
        
        doctor.delegate = patient1;
        doctor.delegate = patient2;
        
        [doctor giveMedicine];
    }
    return 0;
}
