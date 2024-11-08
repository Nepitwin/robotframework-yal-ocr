*** Settings ***
Documentation       Test suite for detection keywords.
...

Library             RobotframeworkYetAnotherOcrLibrary

*** Settings ***
Variables    variables.py

*** Test Cases ***
Blue Max Image Should Be Detected
    ${ObjectDetection}  Find Object  ../img/simple_objects.jpg  ../img/blue.jpg  ${MAX_DIAMOND_IMG_TEST_PARAMS}
    Log  ${ObjectDetection}
    Snapshot Object  ../img/simple_objects.jpg  ${ObjectDetection}
    Should Be Equal As Integers    ${ObjectDetection.x}          116
    Should Be Equal As Integers    ${ObjectDetection.y}          109
    Should Be Equal As Integers    ${ObjectDetection.width}      136
    Should Be Equal As Integers    ${ObjectDetection.height}     138
    Should Be Equal As Integers    ${ObjectDetection.threshold}  100

Green Max Image Should Be Detected
    ${ObjectDetection}  Find Object  ../img/simple_objects.jpg  ../img/green.jpg  ${MAX_DIAMOND_IMG_TEST_PARAMS}
    Log  ${ObjectDetection}
    Snapshot Object  ../img/simple_objects.jpg  ${ObjectDetection}
    Should Be Equal As Integers    ${ObjectDetection.x}          412
    Should Be Equal As Integers    ${ObjectDetection.y}          109
    Should Be Equal As Integers    ${ObjectDetection.width}      142
    Should Be Equal As Integers    ${ObjectDetection.height}     140
    Should Be Equal As Integers    ${ObjectDetection.threshold}  100

Aqua Max Image Should Be Detected
    ${ObjectDetection}  Find Object  ../img/simple_objects.jpg  ../img/aqua.jpg  ${MAX_DIAMOND_IMG_TEST_PARAMS}
    Log  ${ObjectDetection}
    Snapshot Object  ../img/simple_objects.jpg  ${ObjectDetection}
    Should Be Equal As Integers    ${ObjectDetection.x}          567
    Should Be Equal As Integers    ${ObjectDetection.y}          100
    Should Be Equal As Integers    ${ObjectDetection.width}      148
    Should Be Equal As Integers    ${ObjectDetection.height}     137
    Should Be Equal As Integers    ${ObjectDetection.threshold}  100

Blue Min Image Should Be Detected
    ${ObjectDetection}  Find Object  ../img/simple_objects.jpg  ../img/blue.jpg  ${MIN_DIAMOND_IMG_TEST_PARAMS}
    Log  ${ObjectDetection}
    Snapshot Object  ../img/simple_objects.jpg  ${ObjectDetection}
    Should Be Equal As Integers    ${ObjectDetection.x}          295
    Should Be Equal As Integers    ${ObjectDetection.y}          471
    Should Be Equal As Integers    ${ObjectDetection.width}      32
    Should Be Equal As Integers    ${ObjectDetection.height}     32
    Should Be Equal As Integers    ${ObjectDetection.threshold}  95

Green Min Image Should Be Detected
    ${ObjectDetection}  Find Object  ../img/simple_objects.jpg  ../img/green.jpg  ${MIN_DIAMOND_IMG_TEST_PARAMS}
    Log  ${ObjectDetection}
    Snapshot Object  ../img/simple_objects.jpg  ${ObjectDetection}
    Should Be Equal As Integers    ${ObjectDetection.x}          359
    Should Be Equal As Integers    ${ObjectDetection.y}          472
    Should Be Equal As Integers    ${ObjectDetection.width}      32
    Should Be Equal As Integers    ${ObjectDetection.height}     32
    Should Be Equal As Integers    ${ObjectDetection.threshold}  97

Aqua Min Image Should Be Detected
    ${ObjectDetection}  Find Object  ../img/simple_objects.jpg  ../img/aqua.jpg  ${MIN_DIAMOND_IMG_TEST_PARAMS}
    Log  ${ObjectDetection}
    Snapshot Object  ../img/simple_objects.jpg  ${ObjectDetection}
    Should Be Equal As Integers    ${ObjectDetection.x}          393
    Should Be Equal As Integers    ${ObjectDetection.y}          471
    Should Be Equal As Integers    ${ObjectDetection.width}      32
    Should Be Equal As Integers    ${ObjectDetection.height}     32
    Should Be Equal As Integers    ${ObjectDetection.threshold}  98

Yellow Max Image Should Not Be Detected
    # TODO -> Implement me
    ${ObjectDetection}  Find Object  ../img/simple_objects.jpg  ../img/yellow.jpg  ${MAX_DIAMOND_IMG_TEST_PARAMS}
    Log  ${ObjectDetection}
    Snapshot Object  ../img/simple_objects.jpg  ${ObjectDetection}
    Should Be Equal As Integers    ${ObjectDetection.x}          393
    Should Be Equal As Integers    ${ObjectDetection.y}          471
    Should Be Equal As Integers    ${ObjectDetection.width}      32
    Should Be Equal As Integers    ${ObjectDetection.height}     32
    Should Be Equal As Integers    ${ObjectDetection.threshold}  98

Yellow Min Image Should Not Be Detected
    # TODO -> Implement me
    ${ObjectDetection}  Find Object  ../img/simple_objects.jpg  ../img/yellow.jpg  ${MIN_DIAMOND_IMG_TEST_PARAMS}
    Log  ${ObjectDetection}
    Snapshot Object  ../img/simple_objects.jpg  ${ObjectDetection}
    Should Be Equal As Integers    ${ObjectDetection.x}          393
    Should Be Equal As Integers    ${ObjectDetection.y}          471
    Should Be Equal As Integers    ${ObjectDetection.width}      32
    Should Be Equal As Integers    ${ObjectDetection.height}     32
    Should Be Equal As Integers    ${ObjectDetection.threshold}  98
