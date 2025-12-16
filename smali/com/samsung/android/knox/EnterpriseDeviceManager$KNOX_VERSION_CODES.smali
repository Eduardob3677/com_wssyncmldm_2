.class public Lcom/samsung/android/knox/EnterpriseDeviceManager$KNOX_VERSION_CODES;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/EnterpriseDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KNOX_VERSION_CODES"
.end annotation


# static fields
.field public static final BASE:I = 0x6

.field public static final KNOX_1_0_1:I = 0x7

.field public static final KNOX_1_0_2:I = 0x8

.field public static final KNOX_1_1:I = 0x9

.field public static final KNOX_1_2:I = 0xa

.field public static final KNOX_2_0:I = 0xb

.field public static final KNOX_2_1:I = 0xc

.field public static final KNOX_2_2:I = 0xd

.field public static final KNOX_2_3:I = 0xe

.field public static final KNOX_2_4:I = 0xf

.field public static final KNOX_2_4_1:I = 0x10

.field public static final KNOX_2_5:I = 0x11

.field public static final KNOX_2_5_1:I = 0x12

.field public static final KNOX_2_6:I = 0x13

.field public static final KNOX_2_7:I = 0x14

.field public static final KNOX_2_7_1:I = 0x15

.field public static final KNOX_2_8:I = 0x16

.field public static final KNOX_2_9:I = 0x17

.field public static final KNOX_3_0:I = 0x18

.field public static final KNOX_3_1:I = 0x19

.field public static final KNOX_3_2:I = 0x1a

.field public static final KNOX_3_2_1:I = 0x1b

.field public static final KNOX_3_3:I = 0x1c

.field public static final KNOX_3_4:I = 0x1d

.field public static final KNOX_3_4_1:I = 0x1e

.field public static final KNOX_3_5:I = 0x1f

.field public static final KNOX_3_6:I = 0x20

.field public static final KNOX_3_7:I = 0x21

.field public static final KNOX_3_7_1:I = 0x22

.field public static final KNOX_3_8:I = 0x23

.field public static final KNOX_NOT_SUPPORTED:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
