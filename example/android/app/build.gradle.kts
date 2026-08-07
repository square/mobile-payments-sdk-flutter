plugins {
    id("com.android.application")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

val squareSdkVersion = "2.6.0"

android {
    namespace = "com.squareup.square_mobile_payments_sdk_example"
    compileSdk = 36
    ndkVersion = flutter.ndkVersion

    packaging {
        resources {
            pickFirsts.add("META-INF/versions/9/OSGI-INF/MANIFEST.MF")
        }
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    defaultConfig {
        applicationId = "com.squareup.square_mobile_payments_sdk_example"
        // You can update the following values to match your application needs.
        // For more information, see: https://flutter.dev/to/review-gradle-config.
        minSdk = 28
        targetSdk = 36
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    dependencies {
        implementation("com.squareup.sdk:mobile-payments-sdk:$squareSdkVersion")
    }

    buildTypes {
        release {
            // Signing with the debug keys for now, so `flutter run --release` works.
            signingConfig = signingConfigs.getByName("debug")
            // Disable Proguard
            isMinifyEnabled = false
            isShrinkResources = false
        }
    }
}

repositories {
    maven {
        url = uri("https://sdk.squareup.com/public/android/")
    }
}

kotlin {
    compilerOptions {
        jvmTarget = org.jetbrains.kotlin.gradle.dsl.JvmTarget.JVM_17
    }
}

flutter {
    source = "../.."
}
