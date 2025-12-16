.class public Lcom/samsung/android/knox/ex/peripheral/PeripheralConstants$VendorKoamtac$FirmwareType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ex/peripheral/PeripheralConstants$VendorKoamtac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FirmwareType"
.end annotation


# static fields
.field public static final INTERFACE:Ljava/lang/String; = "INTERFACE_FIRMWARE"

.field public static final KDC:Ljava/lang/String; = "KDC_FIRMWARE"

.field public static final POWER_DELIVERY:Ljava/lang/String; = "POWER_DELIVERY_FIRMWARE"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
