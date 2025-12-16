.class public Lcom/samsung/android/knox/ex/KnoxContract$Config;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ex/KnoxContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ex/KnoxContract$Config$Wifi;,
        Lcom/samsung/android/knox/ex/KnoxContract$Config$Settings;,
        Lcom/samsung/android/knox/ex/KnoxContract$Config$NFC;,
        Lcom/samsung/android/knox/ex/KnoxContract$Config$Font;,
        Lcom/samsung/android/knox/ex/KnoxContract$Config$Device;,
        Lcom/samsung/android/knox/ex/KnoxContract$Config$DateTime;,
        Lcom/samsung/android/knox/ex/KnoxContract$Config$Application;
    }
.end annotation


# static fields
.field public static final LICENSE_PERMISSION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_NDA_DEVICE_SETTINGS"

.field public static final PATH:Ljava/lang/String; = "config"

.field public static final RUNTIME_PERMISSION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_NDA_DEVICE_SETTINGS_RT"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
