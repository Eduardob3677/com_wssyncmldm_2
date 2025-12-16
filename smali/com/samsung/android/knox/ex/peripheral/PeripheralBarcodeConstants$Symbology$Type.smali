.class public Lcom/samsung/android/knox/ex/peripheral/PeripheralBarcodeConstants$Symbology$Type;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ex/peripheral/PeripheralBarcodeConstants$Symbology;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Type"
.end annotation


# static fields
.field public static final TYPE_1D:Ljava/lang/String; = "1D"

.field public static final TYPE_2D:Ljava/lang/String; = "2D"

.field public static final TYPE_NONE:Ljava/lang/String; = "NONE"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
