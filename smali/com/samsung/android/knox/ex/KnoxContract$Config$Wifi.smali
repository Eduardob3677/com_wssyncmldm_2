.class public Lcom/samsung/android/knox/ex/KnoxContract$Config$Wifi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ex/KnoxContract$Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Wifi"
.end annotation


# static fields
.field public static final CONTENT_URI_STRING:Ljava/lang/String; = "content://com.samsung.android.knox.sdk/config/wifi"

.field public static final ID:Ljava/lang/String; = "wifi"

.field public static final KEY_WIFI_SSIDS_BLOCK_LIST:Ljava/lang/String; = "wifi-ssid-block-list"

.field public static final PARAM_WIFI_SSIDS_BLOCK_LIST:Ljava/lang/String; = "wifi-ssid-block-list"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
