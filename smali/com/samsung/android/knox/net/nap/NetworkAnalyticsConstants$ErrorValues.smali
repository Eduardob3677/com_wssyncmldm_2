.class public Lcom/samsung/android/knox/net/nap/NetworkAnalyticsConstants$ErrorValues;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/net/nap/NetworkAnalyticsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ErrorValues"
.end annotation


# static fields
.field public static final ERROR_CALLER_INCORRECT_LOCATION:I = -0x11

.field public static final ERROR_CALLER_NOT_AUTHORIZED:I = -0xc

.field public static final ERROR_CALLER_NOT_PROFILE_OWNER:I = -0x12

.field public static final ERROR_CALLER_SIGNATURE_NOT_MATCHED:I = -0xd

.field public static final ERROR_FAIL:I = -0x1

.field public static final ERROR_FAILED_FILE_DESCRIPTOR_OPEN:I = -0x13

.field public static final ERROR_INVALID_PARAMETERS:I = -0x4

.field public static final ERROR_INVALID_PROFILE_ATTRIBUTES:I = -0x5

.field public static final ERROR_JSON_PARSE:I = -0x2

.field public static final ERROR_NPA_VERSION_MISMATCH:I = -0x14

.field public static final ERROR_PROFILE_ALREADY_EXISTS:I = -0x6

.field public static final ERROR_PROFILE_IN_REQUESTED_ACTIVATION_STATE:I = -0x8

.field public static final ERROR_PROFILE_NOT_FOUND:I = -0x3

.field public static final ERROR_PROFILE_NOT_REGISTERED_BY_MDM:I = -0x7

.field public static final SUCCESS:I


# instance fields
.field final synthetic this$0:Lcom/samsung/android/knox/net/nap/NetworkAnalyticsConstants;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/net/nap/NetworkAnalyticsConstants;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/net/nap/NetworkAnalyticsConstants$ErrorValues;->this$0:Lcom/samsung/android/knox/net/nap/NetworkAnalyticsConstants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
