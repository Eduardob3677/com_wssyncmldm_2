.class public Lcom/samsung/android/knox/ex/KnoxContract$Config$Device;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ex/KnoxContract$Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Device"
.end annotation


# static fields
.field public static final CONTENT_URI_STRING:Ljava/lang/String; = "content://com.samsung.android.knox.sdk/config/device"

.field public static final ID:Ljava/lang/String; = "device"

.field public static final KEY_AUDIO_VOLUME:Ljava/lang/String; = "audio-volume"

.field public static final KEY_AUTO_ROTATION_STATE:Ljava/lang/String; = "auto-rotation-state"

.field public static final KEY_FORCE_AUTO_STARTUP:Ljava/lang/String; = "force-auto-start-up-state"

.field public static final KEY_SCREEN_TIMEOUT:Ljava/lang/String; = "screen-timeout"

.field public static final PARAM_AUDIO_STREAM:Ljava/lang/String; = "audio-stream"

.field public static final PARAM_AUDIO_STREAM_ALARM:Ljava/lang/String; = "4"

.field public static final PARAM_AUDIO_STREAM_MEDIA_PLAYBACK:Ljava/lang/String; = "3"

.field public static final PARAM_AUDIO_STREAM_NOTIFICATIONS:Ljava/lang/String; = "5"

.field public static final PARAM_AUDIO_STREAM_RINGER:Ljava/lang/String; = "2"

.field public static final PARAM_AUDIO_STREAM_SYSTEM_SOUNDS:Ljava/lang/String; = "1"

.field public static final PARAM_AUDIO_STREAM_VOICE_CALL:Ljava/lang/String; = "0"

.field public static final PARAM_AUDIO_VOLUME:Ljava/lang/String; = "audio-volume"

.field public static final PARAM_AUTO_ROTATION_STATE:Ljava/lang/String; = "auto-rotation-state"

.field public static final PARAM_FORCE_AUTO_STARTUP:Ljava/lang/String; = "force-auto-start-up-state"

.field public static final PARAM_SCREEN_TIMEOUT:Ljava/lang/String; = "screen-timeout"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
