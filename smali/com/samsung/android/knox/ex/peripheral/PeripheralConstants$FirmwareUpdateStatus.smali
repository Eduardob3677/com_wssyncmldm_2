.class public Lcom/samsung/android/knox/ex/peripheral/PeripheralConstants$FirmwareUpdateStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ex/peripheral/PeripheralConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FirmwareUpdateStatus"
.end annotation


# static fields
.field public static final FAIL:Ljava/lang/String; = "PERIPHERAL_FIRMWARE_UPDATE_FAIL"

.field public static final PROCESSING:Ljava/lang/String; = "PERIPHERAL_FIRMWARE_UPDATE_PROCESSING"

.field public static final SUCCESS:Ljava/lang/String; = "PERIPHERAL_FIRMWARE_UPDATE_SUCCESS"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
