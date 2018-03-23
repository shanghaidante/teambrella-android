-dontobfuscate
-dontoptimize
#Dagger
-dontwarn com.google.errorprone.annotations.**

#Glide
-keep public class * implements com.bumptech.glide.module.GlideModule
-keep class com.bumptech.glide.integration.okhttp3.OkHttpGlideModule
-keep class com.bumptech.glide.integration.okhttp.OkHttpGlideModule

-dontwarn com.bumptech.glide.load.resource.bitmap.VideoDecoder

#Okio
-dontwarn okio.**


#bitcoinj
-dontwarn org.bitcoinj.store.LevelDBBlockStore
-dontwarn org.bitcoinj.store.LevelDBFullPrunedBlockStore
-dontwarn org.bitcoinj.store.LevelDBFullPrunedBlockStore$BloomFilter
-dontwarn org.bitcoinj.store.WindowsMMapHack
-dontwarn org.slf4j.LoggerFactory
-dontwarn org.slf4j.MarkerFactory
-dontwarn org.slf4j.MDC

-keep class com.facebook.** {
   *;
}

-keep class org.ethereum.** {
   *;
}


#Retrofit
# Platform calls Class.forName on types which do not exist on Android to determine platform.
-dontnote retrofit2.Platform
# Platform used when running on Java 8 VMs. Will not be used at runtime.
-dontwarn retrofit2.Platform$Java8
# Retain generic type information for use by reflection by converters and adapters.
-keepattributes Signature
# Retain declared checked exceptions for use by a Proxy instance.
-keepattributes Exceptions