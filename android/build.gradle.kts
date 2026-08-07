plugins {
    id("com.android.library")
}

buildscript {
    val kotlinVersion = "2.2.21"
    repositories {
        google()
        mavenCentral()
    }

    dependencies {
        classpath("com.android.tools.build:gradle:8.12.1")
        classpath("org.jetbrains.kotlin:kotlin-gradle-plugin:$kotlinVersion")
    }
}

group = "com.squareup.square_mobile_payments_sdk"
version = "1.0-SNAPSHOT"

val squareSdkVersion = "2.6.0"

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

    compileSdk = 36

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
        targetSdk = 36
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
