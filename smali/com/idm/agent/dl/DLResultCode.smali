.class public final enum Lcom/idm/agent/dl/DLResultCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/agent/dl/DLResultCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/agent/dl/DLResultCode;

.field public static final enum ABORTED_BY_DEVICE:Lcom/idm/agent/dl/DLResultCode;

.field public static final enum BLOCKED_BY_AFW:Lcom/idm/agent/dl/DLResultCode;

.field public static final enum BLOCKED_BY_MDM:Lcom/idm/agent/dl/DLResultCode;

.field public static final enum BLOCKED_BY_WIFI_BACKGROUND:Lcom/idm/agent/dl/DLResultCode;

.field public static final enum CANCELLED_BY_USER:Lcom/idm/agent/dl/DLResultCode;

.field public static final enum INSUFFICIENT_STORAGE:Lcom/idm/agent/dl/DLResultCode;

.field public static final enum INVALID_DD_VERSION:Lcom/idm/agent/dl/DLResultCode;

.field public static final enum INVALID_DESCRIPTOR:Lcom/idm/agent/dl/DLResultCode;

.field public static final enum LOADER_ERROR:Lcom/idm/agent/dl/DLResultCode;

.field public static final enum LOSSED_SERVICE:Lcom/idm/agent/dl/DLResultCode;

.field public static final enum MISMATCHED_ATTRIBUTE:Lcom/idm/agent/dl/DLResultCode;

.field public static final enum NON_ACCEPTABLE_CONTENT:Lcom/idm/agent/dl/DLResultCode;

.field public static final enum SUCCESS:Lcom/idm/agent/dl/DLResultCode;


# instance fields
.field private final dmResultCode:Ljava/lang/String;

.field private final message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lcom/idm/agent/dl/DLResultCode;

    const-string v1, "900 Success"

    const-string v2, ""

    const-string v3, "SUCCESS"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/idm/agent/dl/DLResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/idm/agent/dl/DLResultCode;->SUCCESS:Lcom/idm/agent/dl/DLResultCode;

    new-instance v1, Lcom/idm/agent/dl/DLResultCode;

    const-string v2, "901 Insufficient memory"

    const-string v3, "501"

    const-string v4, "INSUFFICIENT_STORAGE"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/idm/agent/dl/DLResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/idm/agent/dl/DLResultCode;->INSUFFICIENT_STORAGE:Lcom/idm/agent/dl/DLResultCode;

    new-instance v2, Lcom/idm/agent/dl/DLResultCode;

    const-string v3, "902 User Cancelled"

    const-string v4, "401"

    const-string v5, "CANCELLED_BY_USER"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v3, v4}, Lcom/idm/agent/dl/DLResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/idm/agent/dl/DLResultCode;->CANCELLED_BY_USER:Lcom/idm/agent/dl/DLResultCode;

    new-instance v3, Lcom/idm/agent/dl/DLResultCode;

    const-string v4, "LOSSED_SERVICE"

    const/4 v5, 0x3

    const-string v6, "903 Loss of Service"

    const-string v7, "409"

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/idm/agent/dl/DLResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/idm/agent/dl/DLResultCode;->LOSSED_SERVICE:Lcom/idm/agent/dl/DLResultCode;

    new-instance v4, Lcom/idm/agent/dl/DLResultCode;

    const-string v5, "905 Attribute mismatch"

    const-string v6, "402"

    const-string v8, "MISMATCHED_ATTRIBUTE"

    const/4 v9, 0x4

    invoke-direct {v4, v8, v9, v5, v6}, Lcom/idm/agent/dl/DLResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/idm/agent/dl/DLResultCode;->MISMATCHED_ATTRIBUTE:Lcom/idm/agent/dl/DLResultCode;

    new-instance v5, Lcom/idm/agent/dl/DLResultCode;

    const/4 v6, 0x5

    const-string v8, "906 Invalid descriptor"

    const-string v9, "INVALID_DESCRIPTOR"

    invoke-direct {v5, v9, v6, v8, v7}, Lcom/idm/agent/dl/DLResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/idm/agent/dl/DLResultCode;->INVALID_DESCRIPTOR:Lcom/idm/agent/dl/DLResultCode;

    new-instance v6, Lcom/idm/agent/dl/DLResultCode;

    const/4 v8, 0x6

    const-string v9, "951 Invalid DDVersion"

    const-string v10, "INVALID_DD_VERSION"

    invoke-direct {v6, v10, v8, v9, v7}, Lcom/idm/agent/dl/DLResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/idm/agent/dl/DLResultCode;->INVALID_DD_VERSION:Lcom/idm/agent/dl/DLResultCode;

    new-instance v7, Lcom/idm/agent/dl/DLResultCode;

    const-string v8, "952 Device Aborted"

    const-string v9, "400"

    const-string v10, "ABORTED_BY_DEVICE"

    const/4 v11, 0x7

    invoke-direct {v7, v10, v11, v8, v9}, Lcom/idm/agent/dl/DLResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lcom/idm/agent/dl/DLResultCode;->ABORTED_BY_DEVICE:Lcom/idm/agent/dl/DLResultCode;

    new-instance v8, Lcom/idm/agent/dl/DLResultCode;

    const-string v9, "953 Non-Acceptable Content"

    const-string v10, "405"

    const-string v11, "NON_ACCEPTABLE_CONTENT"

    const/16 v12, 0x8

    invoke-direct {v8, v11, v12, v9, v10}, Lcom/idm/agent/dl/DLResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lcom/idm/agent/dl/DLResultCode;->NON_ACCEPTABLE_CONTENT:Lcom/idm/agent/dl/DLResultCode;

    new-instance v9, Lcom/idm/agent/dl/DLResultCode;

    const-string v10, "954 Loader Error"

    const-string v11, "411"

    const-string v12, "LOADER_ERROR"

    const/16 v13, 0x9

    invoke-direct {v9, v12, v13, v10, v11}, Lcom/idm/agent/dl/DLResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lcom/idm/agent/dl/DLResultCode;->LOADER_ERROR:Lcom/idm/agent/dl/DLResultCode;

    new-instance v10, Lcom/idm/agent/dl/DLResultCode;

    const-string v11, "461 Blocked by AFW Policy"

    const-string v12, "461"

    const-string v13, "BLOCKED_BY_AFW"

    const/16 v14, 0xa

    invoke-direct {v10, v13, v14, v11, v12}, Lcom/idm/agent/dl/DLResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v10, Lcom/idm/agent/dl/DLResultCode;->BLOCKED_BY_AFW:Lcom/idm/agent/dl/DLResultCode;

    new-instance v11, Lcom/idm/agent/dl/DLResultCode;

    const-string v12, "462 Blocked by MDM Policy"

    const-string v13, "462"

    const-string v14, "BLOCKED_BY_MDM"

    const/16 v15, 0xb

    invoke-direct {v11, v14, v15, v12, v13}, Lcom/idm/agent/dl/DLResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v11, Lcom/idm/agent/dl/DLResultCode;->BLOCKED_BY_MDM:Lcom/idm/agent/dl/DLResultCode;

    new-instance v12, Lcom/idm/agent/dl/DLResultCode;

    const-string v13, "466 WifiBackGround Session Failed"

    const-string v14, "466"

    const-string v15, "BLOCKED_BY_WIFI_BACKGROUND"

    move-object/from16 v16, v11

    const/16 v11, 0xc

    invoke-direct {v12, v15, v11, v13, v14}, Lcom/idm/agent/dl/DLResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v12, Lcom/idm/agent/dl/DLResultCode;->BLOCKED_BY_WIFI_BACKGROUND:Lcom/idm/agent/dl/DLResultCode;

    move-object/from16 v11, v16

    filled-new-array/range {v0 .. v12}, [Lcom/idm/agent/dl/DLResultCode;

    move-result-object v0

    sput-object v0, Lcom/idm/agent/dl/DLResultCode;->$VALUES:[Lcom/idm/agent/dl/DLResultCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/idm/agent/dl/DLResultCode;->message:Ljava/lang/String;

    iput-object p4, p0, Lcom/idm/agent/dl/DLResultCode;->dmResultCode:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/idm/agent/dl/DLResultCode;
    .locals 1

    const-class v0, Lcom/idm/agent/dl/DLResultCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/agent/dl/DLResultCode;

    return-object p0
.end method

.method public static values()[Lcom/idm/agent/dl/DLResultCode;
    .locals 1

    sget-object v0, Lcom/idm/agent/dl/DLResultCode;->$VALUES:[Lcom/idm/agent/dl/DLResultCode;

    invoke-virtual {v0}, [Lcom/idm/agent/dl/DLResultCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/agent/dl/DLResultCode;

    return-object v0
.end method


# virtual methods
.method public getDmResultCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/agent/dl/DLResultCode;->dmResultCode:Ljava/lang/String;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/agent/dl/DLResultCode;->message:Ljava/lang/String;

    return-object p0
.end method
