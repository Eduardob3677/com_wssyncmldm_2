.class public Lcom/samsung/android/knox/ex/peripheral/PeripheralConstants$EventType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ex/peripheral/PeripheralConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventType"
.end annotation


# static fields
.field public static final BT_DISCOVER_STOPPED:I = 0x4

.field public static final CONNECTION_CHANGED:I = 0x0

.field public static final DATA_RECEIVED:I = 0x2

.field public static final ERROR_RECEIVED:I = 0x1

.field public static final FIRMWARE_UPDATED:I = 0xa

.field public static final INFO_RECEIVED:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
