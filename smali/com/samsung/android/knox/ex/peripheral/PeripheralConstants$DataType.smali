.class public Lcom/samsung/android/knox/ex/peripheral/PeripheralConstants$DataType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ex/peripheral/PeripheralConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataType"
.end annotation


# static fields
.field public static final BARCODE:Ljava/lang/String; = "PERIPHERAL_DATA_TYPE_BARCODE"

.field public static final MSR:Ljava/lang/String; = "PERIPHERAL_DATA_TYPE_MSR"

.field public static final NFC:Ljava/lang/String; = "PERIPHERAL_DATA_TYPE_NFC"

.field public static final UHF:Ljava/lang/String; = "PERIPHERAL_DATA_TYPE_UHF"

.field public static final UNKNOWN:Ljava/lang/String; = "PERIPHERAL_DATA_TYPE_UNKNOWN"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
