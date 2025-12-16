.class public final enum Lcom/idm/adapter/callback/CallbackConstants$AbortCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/adapter/callback/CallbackConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AbortCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/adapter/callback/CallbackConstants$AbortCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/adapter/callback/CallbackConstants$AbortCode;

.field public static final enum AUTHENTICATION_FAILED:Lcom/idm/adapter/callback/CallbackConstants$AbortCode;

.field public static final enum DELTA_CHECKSUM_MISMATCHED:Lcom/idm/adapter/callback/CallbackConstants$AbortCode;

.field public static final enum DELTA_FILE_NOT_FOUND:Lcom/idm/adapter/callback/CallbackConstants$AbortCode;

.field public static final enum DELTA_OVERSIZE:Lcom/idm/adapter/callback/CallbackConstants$AbortCode;

.field public static final enum NETWORK_CONNECT_FAILED:Lcom/idm/adapter/callback/CallbackConstants$AbortCode;

.field public static final enum NETWORK_HEADER_FAILED:Lcom/idm/adapter/callback/CallbackConstants$AbortCode;

.field public static final enum NETWORK_MEMORY_FULL:Lcom/idm/adapter/callback/CallbackConstants$AbortCode;

.field public static final enum NETWORK_RECEIVE_FAILED:Lcom/idm/adapter/callback/CallbackConstants$AbortCode;

.field public static final enum NETWORK_SEND_FAILED:Lcom/idm/adapter/callback/CallbackConstants$AbortCode;

.field public static final enum NONE:Lcom/idm/adapter/callback/CallbackConstants$AbortCode;


# instance fields
.field private final abortCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/idm/adapter/callback/CallbackConstants$AbortCode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/idm/adapter/callback/CallbackConstants$AbortCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/idm/adapter/callback/CallbackConstants$AbortCode;->NONE:Lcom/idm/adapter/callback/CallbackConstants$AbortCode;

    new-instance v1, Lcom/idm/adapter/callback/CallbackConstants$AbortCode;

    const-string v2, "DELTA_CHECKSUM_MISMATCHED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/idm/adapter/callback/CallbackConstants$AbortCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/idm/adapter/callback/CallbackConstants$AbortCode;->DELTA_CHECKSUM_MISMATCHED:Lcom/idm/adapter/callback/CallbackConstants$AbortCode;

    new-instance v2, Lcom/idm/adapter/callback/CallbackConstants$AbortCode;

    const/4 v3, 0x2

    const/16 v4, 0x76d

    const-string v5, "AUTHENTICATION_FAILED"

    invoke-direct {v2, v5, v3, v4}, Lcom/idm/adapter/callback/CallbackConstants$AbortCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/idm/adapter/callback/CallbackConstants$AbortCode;->AUTHENTICATION_FAILED:Lcom/idm/adapter/callback/CallbackConstants$AbortCode;

    new-instance v3, Lcom/idm/adapter/callback/CallbackConstants$AbortCode;

    const/4 v4, 0x3

    const/16 v5, 0x1f5

    const-string v6, "NETWORK_CONNECT_FAILED"

    invoke-direct {v3, v6, v4, v5}, Lcom/idm/adapter/callback/CallbackConstants$AbortCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/idm/adapter/callback/CallbackConstants$AbortCode;->NETWORK_CONNECT_FAILED:Lcom/idm/adapter/callback/CallbackConstants$AbortCode;

    new-instance v4, Lcom/idm/adapter/callback/CallbackConstants$AbortCode;

    const/4 v5, 0x4

    const/16 v6, 0x1f6

    const-string v7, "NETWORK_SEND_FAILED"

    invoke-direct {v4, v7, v5, v6}, Lcom/idm/adapter/callback/CallbackConstants$AbortCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/idm/adapter/callback/CallbackConstants$AbortCode;->NETWORK_SEND_FAILED:Lcom/idm/adapter/callback/CallbackConstants$AbortCode;

    new-instance v5, Lcom/idm/adapter/callback/CallbackConstants$AbortCode;

    const/4 v6, 0x5

    const/16 v7, 0x1f7

    const-string v8, "NETWORK_RECEIVE_FAILED"

    invoke-direct {v5, v8, v6, v7}, Lcom/idm/adapter/callback/CallbackConstants$AbortCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/idm/adapter/callback/CallbackConstants$AbortCode;->NETWORK_RECEIVE_FAILED:Lcom/idm/adapter/callback/CallbackConstants$AbortCode;

    new-instance v6, Lcom/idm/adapter/callback/CallbackConstants$AbortCode;

    const/4 v7, 0x6

    const/16 v8, 0x1f9

    const-string v9, "NETWORK_HEADER_FAILED"

    invoke-direct {v6, v9, v7, v8}, Lcom/idm/adapter/callback/CallbackConstants$AbortCode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/idm/adapter/callback/CallbackConstants$AbortCode;->NETWORK_HEADER_FAILED:Lcom/idm/adapter/callback/CallbackConstants$AbortCode;

    new-instance v7, Lcom/idm/adapter/callback/CallbackConstants$AbortCode;

    const-string v8, "NETWORK_MEMORY_FULL"

    const/4 v9, 0x7

    const/16 v10, 0x1fa

    invoke-direct {v7, v8, v9, v10}, Lcom/idm/adapter/callback/CallbackConstants$AbortCode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/idm/adapter/callback/CallbackConstants$AbortCode;->NETWORK_MEMORY_FULL:Lcom/idm/adapter/callback/CallbackConstants$AbortCode;

    new-instance v8, Lcom/idm/adapter/callback/CallbackConstants$AbortCode;

    const/16 v9, 0x8

    const/16 v11, 0x1fb

    const-string v12, "DELTA_OVERSIZE"

    invoke-direct {v8, v12, v9, v11}, Lcom/idm/adapter/callback/CallbackConstants$AbortCode;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/idm/adapter/callback/CallbackConstants$AbortCode;->DELTA_OVERSIZE:Lcom/idm/adapter/callback/CallbackConstants$AbortCode;

    new-instance v9, Lcom/idm/adapter/callback/CallbackConstants$AbortCode;

    const-string v11, "DELTA_FILE_NOT_FOUND"

    const/16 v12, 0x9

    invoke-direct {v9, v11, v12, v10}, Lcom/idm/adapter/callback/CallbackConstants$AbortCode;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/idm/adapter/callback/CallbackConstants$AbortCode;->DELTA_FILE_NOT_FOUND:Lcom/idm/adapter/callback/CallbackConstants$AbortCode;

    filled-new-array/range {v0 .. v9}, [Lcom/idm/adapter/callback/CallbackConstants$AbortCode;

    move-result-object v0

    sput-object v0, Lcom/idm/adapter/callback/CallbackConstants$AbortCode;->$VALUES:[Lcom/idm/adapter/callback/CallbackConstants$AbortCode;

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

    iput p3, p0, Lcom/idm/adapter/callback/CallbackConstants$AbortCode;->abortCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/idm/adapter/callback/CallbackConstants$AbortCode;
    .locals 1

    const-class v0, Lcom/idm/adapter/callback/CallbackConstants$AbortCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/adapter/callback/CallbackConstants$AbortCode;

    return-object p0
.end method

.method public static values()[Lcom/idm/adapter/callback/CallbackConstants$AbortCode;
    .locals 1

    sget-object v0, Lcom/idm/adapter/callback/CallbackConstants$AbortCode;->$VALUES:[Lcom/idm/adapter/callback/CallbackConstants$AbortCode;

    invoke-virtual {v0}, [Lcom/idm/adapter/callback/CallbackConstants$AbortCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/adapter/callback/CallbackConstants$AbortCode;

    return-object v0
.end method


# virtual methods
.method public getAbortCode()I
    .locals 0

    iget p0, p0, Lcom/idm/adapter/callback/CallbackConstants$AbortCode;->abortCode:I

    return p0
.end method
