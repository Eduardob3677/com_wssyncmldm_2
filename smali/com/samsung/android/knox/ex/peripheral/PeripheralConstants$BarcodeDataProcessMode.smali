.class public Lcom/samsung/android/knox/ex/peripheral/PeripheralConstants$BarcodeDataProcessMode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ex/peripheral/PeripheralConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BarcodeDataProcessMode"
.end annotation


# static fields
.field public static final STORE:Ljava/lang/String; = "PERIPHERAL_BARCODE_DATA_PROCESS_MODE_STORE"

.field public static final STORE_IF_NOT_SENT:Ljava/lang/String; = "PERIPHERAL_BARCODE_DATA_PROCESS_MODE_STORE_IF_NOT_SENT"

.field public static final STORE_IF_SENT:Ljava/lang/String; = "PERIPHERAL_BARCODE_DATA_PROCESS_MODE_STORE_IF_SENT"

.field public static final WEDGE:Ljava/lang/String; = "PERIPHERAL_BARCODE_DATA_PROCESS_MODE_WEDGE"

.field public static final WEDGE_AND_STORE:Ljava/lang/String; = "PERIPHERAL_BARCODE_DATA_PROCESS_MODE_WEDGE_AND_STORE"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
