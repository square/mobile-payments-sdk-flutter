plugins {
    id("com.android.library")
}

buildscript {
    repositories {
        google()
        mavenCentral()
    }

    dependencies {
        classpath("com.android.tools.build:gradle:9.1.0")
        // Override AGP's Kotlin 2.2.10 dependency to meet Flutter 3.47's minimum.
        // AGP still supplies Kotlin support; do not apply kotlin-android.
        classpath("org.jetbrains.kotlin:kotlin-gradle-plugin:2.2.21")
    }
}

group = "com.squareup.square_mobile_payments_sdk"
version = "1.0-SNAPSHOT"

val squareSdkVersion = "2.7.0"

allprojects {
    repositories {
        google()
        mavenCentral()
        maven {
            url = uri("https://sdk.squareup.com/public/android")
        }
    }
}

android {
    namespace = "com.squareup.square_mobile_payments_sdk"

    compileSdk = 37

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    sourceSets {
        getByName("main") {
            java.srcDirs("src/main/kotlin")
        }
        getByName("test") {
            java.srcDirs("src/test/kotlin")
        }
    }

    defaultConfig {
        minSdk = 28
    }

    testOptions {
        unitTests {
            isIncludeAndroidResources = true
            all {
                it.useJUnitPlatform()

                it.outputs.upToDateWhen { false }

                it.testLogging {
                    events("passed", "skipped", "failed", "standardOut", "standardError")
                    showStandardStreams = true
                }
            }
        }
    }
}

kotlin {
    compilerOptions {
        jvmTarget = org.jetbrains.kotlin.gradle.dsl.JvmTarget.JVM_17
    }
}

dependencies {
    // Mobile Payments SDK dependency
    implementation("com.squareup.sdk:mobile-payments-sdk:$squareSdkVersion")
    // MockReader UI dependency
    implementation("com.squareup.sdk:mockreader-ui:$squareSdkVersion")
    testImplementation("org.jetbrains.kotlin:kotlin-test")
    testImplementation("org.mockito:mockito-core:5.0.0")
}
