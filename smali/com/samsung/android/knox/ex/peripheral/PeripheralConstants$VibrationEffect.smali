.class public Lcom/samsung/android/knox/ex/peripheral/PeripheralConstants$VibrationEffect;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ex/peripheral/PeripheralConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VibrationEffect"
.end annotation


# static fields
.field public static final INTERVAL_INT:Ljava/lang/String; = "VIBRATION_SOUND_EFFECT_INTERVAL_INT"

.field public static final REPEAT_INT:Ljava/lang/String; = "VIBRATION_SOUND_EFFECT_REPEAT_INT"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
