@echo off

if "%1" == "d" (
    echo remove dir
    rd /s /Q build libs obj output
) else (
    if exist jni\Android.mk (
        ndk-build
        pause
    ) else (
        echo can not find "jni\Android.mk"
    )
)


