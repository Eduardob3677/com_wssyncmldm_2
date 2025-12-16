.class public Lcom/samsung/android/knox/ex/peripheral/PeripheralConstants$BtPeripheralListOption;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ex/peripheral/PeripheralConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BtPeripheralListOption"
.end annotation


# static fields
.field public static final ALL:Ljava/lang/String; = "BT_PERIPHERAL_LIST_OPTION_ALL"

.field public static final RECENT:Ljava/lang/String; = "BT_PERIPHERAL_LIST_OPTION_RECENT"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
