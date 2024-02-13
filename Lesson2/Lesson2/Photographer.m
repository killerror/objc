//
//  Photographer.m
//  Lesson2
//
//  Created by Максим Бобков on 08.02.2024.
//

#import "Photographer.h"

@implementation Photographer

- (instancetype)initWithCameraType:(CameraType)cameraType {
    self = [super init];
    if (self) {
        _cameraType = cameraType;
        _startNumberOfPhoto = 0;
        _wAge = 0;
    }
    return self;
}

- (instancetype)initWithCameraType:(CameraType)cameraType startNumberOfPhoto:(NSInteger)startNumberOfPhoto {
    self = [super init];
    if (self) {
        _cameraType = cameraType;
        _startNumberOfPhoto = startNumberOfPhoto;
        _wAge = 0;
    }
    return self;
}

- (instancetype)initWithCameraType:(CameraType)cameraType startNumberOfPhoto:(NSInteger)startNumberOfPhoto wAge:(NSInteger)wAge {
    self = [super init];
    if (self) {
        _cameraType = cameraType;
        _startNumberOfPhoto = startNumberOfPhoto;
        _wAge = wAge;
    }
    return self;
}

- (CameraType)getCameraType {
    return _cameraType;
}

- (void)setCameraType:(CameraType)cameraType {
    _cameraType = cameraType;
}

- (NSInteger)getStartNumberOfPhoto {
    return _startNumberOfPhoto;
}

- (void)setStartNumberOfPhoto:(NSInteger)startNumberOfPhoto {
    _startNumberOfPhoto = startNumberOfPhoto;
}

- (NSInteger)getWAge {
    return _wAge;
}

- (void)setWAge:(NSInteger)wAge {
    _wAge = wAge;
}

// Вызывается тогда, когда из памяти удаляется объект
- (void)dealloc
{
    // Вместо __PRETTY_FUNCTION__ автоматически подставляется название данного метода
    NSLog(@"%s", __PRETTY_FUNCTION__);
}


- (NSInteger)checkMoney {
    NSInteger k;
    switch (_cameraType) {
        case Nikon: k = 10; break;
        case Canon: k = 5; break;
    }
    return _startNumberOfPhoto * k;
}

@end
