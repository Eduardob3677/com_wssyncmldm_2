.class public Lcom/samsung/android/knox/ex/KnoxContract$Config$Application;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ex/KnoxContract$Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Application"
.end annotation


# static fields
.field public static final CONTENT_URI_STRING:Ljava/lang/String; = "content://com.samsung.android.knox.sdk/config/application"

.field public static final ID:Ljava/lang/String; = "application"

.field public static final KEY_DEFAULT_APPS:Ljava/lang/String; = "default-apps"

.field public static final KEY_PACKAGE_BATTERY_OPTIMIZATION_ALLOW_LIST:Ljava/lang/String; = "package-battery-optimization-allow-list"

.field public static final KEY_USB_DEVICES_FOR_DEFAULT_ACCESS:Ljava/lang/String; = "usb-devices-for-default-access"

.field public static final PARAM_PACKAGE_BATTERY_OPTIMIZATION_ALLOW_LIST:Ljava/lang/String; = "package-battery-optimization-allow-list"

.field public static final PARAM_PACKAGE_NAME:Ljava/lang/String; = "package-name"

.field public static final PARAM_PRODUCT_ID:Ljava/lang/String; = "product-id"

.field public static final PARAM_PRODUCT_ID_COLUMN_INDEX:I = 0x1

.field public static final PARAM_ROLE_NAME:Ljava/lang/String; = "role-name"

.field public static final PARAM_VENDOR_ID:Ljava/lang/String; = "vendor-id"

.field public static final PARAM_VENDOR_ID_COLUMN_INDEX:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
