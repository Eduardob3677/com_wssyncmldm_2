.class public Lcom/samsung/android/knox/ex/peripheral/PeripheralConstants$VendorKoamtac;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ex/peripheral/PeripheralConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VendorKoamtac"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ex/peripheral/PeripheralConstants$VendorKoamtac$FirmwareType;
    }
.end annotation


# static fields
.field public static final KEY_PERIPHERAL_FIRMWARE_TYPE:Ljava/lang/String; = "VENDOR_KOAMTAC_KEY_PERIPHERAL_FIRMWARE_TYPE"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
