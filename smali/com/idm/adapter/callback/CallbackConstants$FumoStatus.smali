.class public final enum Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/adapter/callback/CallbackConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FumoStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;

.field public static final enum DOWNLOAD_CANCELED:Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;

.field public static final enum DOWNLOAD_CANCELED_REPORT:Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;

.field public static final enum DOWNLOAD_COMPLETE:Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;

.field public static final enum DOWNLOAD_DESCRIPTOR:Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;

.field public static final enum DOWNLOAD_FAILED:Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;

.field public static final enum DOWNLOAD_FAILED_REPORT:Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;

.field public static final enum DOWNLOAD_IN_PROGRESS:Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;

.field public static final enum DOWNLOAD_PAUSED:Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;

.field public static final enum DOWNLOAD_REPORT:Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;

.field public static final enum FUMO_START:Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;

.field public static final enum NONE:Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;

.field public static final enum READY_TO_UPDATE:Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;

.field public static final enum UPDATE_FAILED:Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;

.field public static final enum UPDATE_IN_PROGRESS:Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;

.field public static final enum UPDATE_POSTPONED:Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;

.field public static final enum UPDATE_REPORT:Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;

.field public static final enum UPDATE_SUCCESS:Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;


# instance fields
.field private final fumoStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 21

    new-instance v1, Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;

    move-object v0, v1

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;->NONE:Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;

    new-instance v2, Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;

    move-object v1, v2

    const-string v3, "FUMO_START"

    const/4 v4, 0x1

    const/16 v11, 0xa

    invoke-direct {v2, v3, v4, v11}, Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;->FUMO_START:Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;

    new-instance v3, Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;

    move-object v2, v3

    const/4 v4, 0x2

    const/16 v5, 0xc8

    const-string v6, "DOWNLOAD_DESCRIPTOR"

    invoke-direct {v3, v6, v4, v5}, Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;->DOWNLOAD_DESCRIPTOR:Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;

    new-instance v4, Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;

    move-object v3, v4

    const/4 v5, 0x3

    const/16 v6, 0x1e

    const-string v7, "DOWNLOAD_IN_PROGRESS"

    invoke-direct {v4, v7, v5, v6}, Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;->DOWNLOAD_IN_PROGRESS:Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;

    new-instance v5, Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;

    move-object v4, v5

    const/4 v6, 0x4

    const/16 v7, 0xf2

    const-string v8, "DOWNLOAD_PAUSED"

    invoke-direct {v5, v8, v6, v7}, Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;->DOWNLOAD_PAUSED:Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;

    new-instance v6, Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;

    move-object v5, v6

    const/4 v7, 0x5

    const/16 v8, 0x23

    const-string v9, "DOWNLOAD_REPORT"

    invoke-direct {v6, v9, v7, v8}, Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;->DOWNLOAD_REPORT:Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;

    new-instance v7, Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;

    move-object v6, v7

    const/4 v8, 0x6

    const/16 v9, 0x28

    const-string v10, "DOWNLOAD_COMPLETE"

    invoke-direct {v7, v10, v8, v9}, Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;->DOWNLOAD_COMPLETE:Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;

    new-instance v8, Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;

    move-object v7, v8

    const/4 v9, 0x7

    const/16 v10, 0x32

    const-string v12, "READY_TO_UPDATE"

    invoke-direct {v8, v12, v9, v10}, Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;->READY_TO_UPDATE:Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;

    new-instance v9, Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;

    move-object v8, v9

    const/16 v10, 0x8

    const/16 v12, 0xdc

    const-string v13, "UPDATE_POSTPONED"

    invoke-direct {v9, v13, v10, v12}, Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;->UPDATE_POSTPONED:Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;

    new-instance v10, Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;

    move-object v9, v10

    const/16 v12, 0x9

    const/16 v13, 0x3c

    const-string v14, "UPDATE_IN_PROGRESS"

    invoke-direct {v10, v14, v12, v13}, Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;->UPDATE_IN_PROGRESS:Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;

    new-instance v12, Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;

    move-object v10, v12

    const-string v13, "UPDATE_REPORT"

    const/16 v14, 0x41

    invoke-direct {v12, v13, v11, v14}, Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;->UPDATE_REPORT:Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;

    new-instance v12, Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;

    move-object v11, v12

    const/16 v13, 0xb

    const/16 v14, 0x50

    const-string v15, "UPDATE_FAILED"

    invoke-direct {v12, v15, v13, v14}, Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;->UPDATE_FAILED:Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;

    new-instance v13, Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;

    move-object v12, v13

    const/16 v14, 0xc

    const/16 v15, 0x64

    move-object/from16 v17, v0

    const-string v0, "UPDATE_SUCCESS"

    invoke-direct {v13, v0, v14, v15}, Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;->UPDATE_SUCCESS:Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;

    new-instance v0, Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;

    move-object v13, v0

    const/16 v14, 0xd

    const/16 v15, 0xe6

    move-object/from16 v18, v1

    const-string v1, "DOWNLOAD_CANCELED"

    invoke-direct {v0, v1, v14, v15}, Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;->DOWNLOAD_CANCELED:Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;

    new-instance v0, Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;

    move-object v14, v0

    const/16 v1, 0xe

    const/16 v15, 0xf0

    move-object/from16 v19, v2

    const-string v2, "DOWNLOAD_CANCELED_REPORT"

    invoke-direct {v0, v2, v1, v15}, Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;->DOWNLOAD_CANCELED_REPORT:Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;

    new-instance v0, Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;

    move-object v15, v0

    const/16 v1, 0xf

    const/16 v2, 0x14

    move-object/from16 v20, v3

    const-string v3, "DOWNLOAD_FAILED"

    invoke-direct {v0, v3, v1, v2}, Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;->DOWNLOAD_FAILED:Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;

    new-instance v0, Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;

    move-object/from16 v16, v0

    const/16 v1, 0x10

    const/16 v2, 0xf1

    const-string v3, "DOWNLOAD_FAILED_REPORT"

    invoke-direct {v0, v3, v1, v2}, Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;->DOWNLOAD_FAILED_REPORT:Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    filled-new-array/range {v0 .. v16}, [Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;

    move-result-object v0

    sput-object v0, Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;->$VALUES:[Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;->fumoStatus:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;
    .locals 1

    const-class v0, Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;

    return-object p0
.end method

.method public static values()[Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;
    .locals 1

    sget-object v0, Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;->$VALUES:[Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;

    invoke-virtual {v0}, [Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;

    return-object v0
.end method


# virtual methods
.method public getFumoStatus()I
    .locals 0

    iget p0, p0, Lcom/idm/adapter/callback/CallbackConstants$FumoStatus;->fumoStatus:I

    return p0
.end method
