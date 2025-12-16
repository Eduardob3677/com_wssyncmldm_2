.class public Lcom/samsung/android/knox/ex/peripheral/PeripheralConstants$Internal$BtPairingExtraDataType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ex/peripheral/PeripheralConstants$Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BtPairingExtraDataType"
.end annotation


# static fields
.field public static final DEVICE_NAME:Ljava/lang/String; = "DEVICE_NAME"

.field public static final MAC_ADDRESS:Ljava/lang/String; = "MAC_ADDRESS"

.field public static final MANUFACTURER_DATA:Ljava/lang/String; = "MANUFACTURER_DATA"

.field public static final UUID:Ljava/lang/String; = "UUID"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
