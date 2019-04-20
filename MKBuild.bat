if exist jni\Android.mk (
    ndk-build
    pause
) else (
    echo can not find "jni\Android.mk"
)

