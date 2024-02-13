//
//  Photographer.h
//  Lesson2
//
//  Created by Максим Бобков on 08.02.2024.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// NSUInteger - только положительные числа
typedef NS_ENUM(NSUInteger, CameraType) {
    Canon, Nikon
};

@interface Photographer : NSObject {
    
    // iVar
    @private CameraType _cameraType;
    @private NSInteger _startNumberOfPhoto;
    @private NSInteger _wAge;
}

// Инициализаторы с одним, двумя и тремя параметрами

- (instancetype) initWithCameraType: (CameraType) cameraType;
- (instancetype) initWithCameraType: (CameraType) cameraType startNumberOfPhoto: (NSInteger) startNumberOfPhoto;
- (instancetype) initWithCameraType: (CameraType) cameraType startNumberOfPhoto: (NSInteger) startNumberOfPhoto wAge: (NSInteger) wAge;

// Геттеры и сеттеры

- (CameraType) getCameraType;
- (void) setCameraType: (CameraType) cameraType;

- (NSInteger) getStartNumberOfPhoto;
- (void) setStartNumberOfPhoto: (NSInteger) startNumberOfPhoto;

- (NSInteger) getWAge;
- (void) setWAge: (NSInteger) wAge;

// Метод подсчёта заработка фотографа.
// Если у него фотоаппрат Nikon, коэффициент будет 10, а если Canon - 5.
- (NSInteger) checkMoney;


@end

NS_ASSUME_NONNULL_END
