# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in /usr/local/Cellar/android-sdk/24.3.3/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# react-native-reanimated
-keep class com.swmansion.reanimated.** { *; }
-keep class com.facebook.react.turbomodule.** { *; }

# Intune SDK ProGuard Rules
-keep class com.microsoft.intune.mam.** { *; }
-keep class com.microsoft.intune.mam.policy.** { *; }
-keep class com.microsoft.intune.mam.client.** { *; }

# MSAL related rules
-keep class com.microsoft.identity.** { *; }
-keepclassmembers class * extends com.microsoft.identity.** { *; }

# Keep JSON models if using them with Intune
-keepclassmembers class * {
    @com.google.gson.annotations.SerializedName *;
}

# If using Kotlin
-keep class kotlin.** { *; }
-keep class kotlin.Metadata { *; }

# Preserve debugging info
-keepattributes SourceFile,LineNumberTable
-keepattributes *Annotation*
-keepattributes Signature
-keepattributes Exceptions

# Add any project specific keep options here:

# Keep - prevents removal of specified classes/methods
-keep class com.example.** { *; }

# KeepClassMembers - keeps members if class is kept
-keepclassmembers class * { 
    @annotation.Name *;
}

# KeepAttributes - preserves metadata
-keepattributes Signature
-keepattributes *Annotation*
