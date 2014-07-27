#Code Book

##Human Activity Recognition Using Smartphones Dataset

###Variables description:

1. **subject**  (int)  
    id of the volunteer participating in the test
2. **activity** (string)  
    type of activity subject performed  
    *6 possible values*: 
    - WALKING,   
    - WALKING_UPSTAIRS,  
    - WALKING_DOWNSTAIRS,  
    - SITTING,  
    - STANDING,  
    - LAYING  
3. The following variables' names are constructed from several parameters. Signals are measured in standard gravity units ("*g*")
    Each variable parameter is separated with dots. The total name of the variable presented in the following way:
        ***domain.force.device.jerk.magn.measure.dimention*** (number)
    1. **domain**  
        possible values:  
        - *time*: variable measure was taken from time domain signals
        - *frequency*: variable measure was taken from frequency domain signals
    2. **force**  
        possible values:
        - *body*: signal was caused by subject movement
        - *gravity*: signal was caused by Earth gravitation
    3. **device**  
        possible values:
        - *accel*: signal produced by accelerometer
        - *gyro*: signal produced by gyroscope
    4. **jerk**  (optional)
        if this parameter mentioned, then measure was taken from Jerk signals
    5. **magn**  (optional)
        if this parameter mentioned, then measure represents magnitude of the signals
    6. **measure**  
        type of measure applied to the signal.  
        possible values:  
        - *mean*: mean of all signals of the subject and his/her activity
        - *sd*: standard deviation of all signals of the subject and his/her activity
    7. **dimention**
        shows in what dimention the signal was measured:
        - *x*: X-axis 
        - *y*: Y-axis
        - *z*: Z-axis


###The total list of variables:
1. **subject**
1. **activity**
1. **time.body.accel.mean.x**
1. **time.body.accel.mean.y**
1. **time.body.accel.mean.z**
1. **time.body.accel.sd.x**
1. **time.body.accel.sd.y**
1. **time.body.accel.sd.z**
1. **time.gravity.accel.mean.x**
1. **time.gravity.accel.mean.y**
1. **time.gravity.accel.mean.z**
1. **time.gravity.accel.sd.x**
1. **time.gravity.accel.sd.y**
1. **time.gravity.accel.sd.z**
1. **time.body.accel.jerk.mean.x**
1. **time.body.accel.jerk.mean.y**
1. **time.body.accel.jerk.mean.z**
1. **time.body.accel.jerk.sd.x**
1. **time.body.accel.jerk.sd.y**
1. **time.body.accel.jerk.sd.z**
1. **time.body.gyro.mean.x**
1. **time.body.gyro.mean.y**
1. **time.body.gyro.mean.z**
1. **time.body.gyro.sd.x**
1. **time.body.gyro.sd.y**
1. **time.body.gyro.sd.z**
1. **time.body.gyro.jerk.mean.x**
1. **time.body.gyro.jerk.mean.y**
1. **time.body.gyro.jerk.mean.z**
1. **time.body.gyro.jerk.sd.x**
1. **time.body.gyro.jerk.sd.y**
1. **time.body.gyro.jerk.sd.z**
1. **time.body.accel.magn.mean**
1. **time.body.accel.magn.sd**
1. **time.gravity.accel.magn.mean**
1. **time.gravity.accel.magn.sd**
1. **time.body.accel.jerk.magn.mean**
1. **time.body.accel.jerk.magn.sd**
1. **time.body.gyro.magn.mean**
1. **time.body.gyro.magn.sd**
1. **time.body.gyro.jerk.magn.mean**
1. **time.body.gyro.jerk.magn.sd**
1. **freq.body.accel.mean.x**
1. **freq.body.accel.mean.y**
1. **freq.body.accel.mean.z**
1. **freq.body.accel.sd.x**
1. **freq.body.accel.sd.y**
1. **freq.body.accel.sd.z**
1. **freq.body.accel.jerk.mean.x**
1. **freq.body.accel.jerk.mean.y**
1. **freq.body.accel.jerk.mean.z**
1. **freq.body.accel.jerk.sd.x**
1. **freq.body.accel.jerk.sd.y**
1. **freq.body.accel.jerk.sd.z**
1. **freq.body.gyro.mean.x**
1. **freq.body.gyro.mean.y**
1. **freq.body.gyro.mean.z**
1. **freq.body.gyro.sd.x**
1. **freq.body.gyro.sd.y**
1. **freq.body.gyro.sd.z**
1. **freq.body.accel.magn.mean**
1. **freq.body.accel.magn.sd**
1. **freq.bodybody.accel.jerk.magn.mean**
1. **freq.bodybody.accel.jerk.magn.sd**
1. **freq.bodybody.gyro.magn.mean**
1. **freq.bodybody.gyro.magn.sd**
1. **freq.bodybody.gyro.jerk.magn.mean**
1. **freq.bodybody.gyro.jerk.magn.sd**