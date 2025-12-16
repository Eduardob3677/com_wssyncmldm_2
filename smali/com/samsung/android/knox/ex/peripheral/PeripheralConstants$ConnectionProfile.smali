.class public Lcom/samsung/android/knox/ex/peripheral/PeripheralConstants$ConnectionProfile;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ex/peripheral/PeripheralConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectionProfile"
.end annotation


# static fields
.field public static final HID:Ljava/lang/String; = "HID"

.field public static final HID_WINDOW_PAIRING:Ljava/lang/String; = "HID_WINDOW_PAIRING"

.field public static final SPP:Ljava/lang/String; = "SPP"

.field public static final UNKNOWN:Ljava/lang/String; = "UNKNOWN"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
