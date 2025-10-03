# Add project specific ProGuard rules here.
-keep class com.xx.** { *; }
-keepclassmembers class * {
    @android.webkit.JavascriptInterface <methods>;
}