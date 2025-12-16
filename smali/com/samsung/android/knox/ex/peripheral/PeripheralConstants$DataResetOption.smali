.class public Lcom/samsung/android/knox/ex/peripheral/PeripheralConstants$DataResetOption;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ex/peripheral/PeripheralConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataResetOption"
.end annotation


# static fields
.field public static final RESET_ALL:Ljava/lang/String; = "PERIPHERAL_DATA_RESET_OPTION_ALL"

.field public static final RESET_SYSTEM_TIME:Ljava/lang/String; = "PERIPHERAL_DATA_RESET_OPTION_SYSTEM_TIME"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
