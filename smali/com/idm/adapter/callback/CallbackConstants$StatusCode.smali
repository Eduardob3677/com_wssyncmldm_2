.class public final enum Lcom/idm/adapter/callback/CallbackConstants$StatusCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/adapter/callback/CallbackConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StatusCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/adapter/callback/CallbackConstants$StatusCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/adapter/callback/CallbackConstants$StatusCode;

.field public static final enum CONTINUE:Lcom/idm/adapter/callback/CallbackConstants$StatusCode;

.field public static final enum DL_ABORT:Lcom/idm/adapter/callback/CallbackConstants$StatusCode;

.field public static final enum DM_ABORT:Lcom/idm/adapter/callback/CallbackConstants$StatusCode;

.field public static final enum FINISH:Lcom/idm/adapter/callback/CallbackConstants$StatusCode;

.field public static final enum FINISH_AND_EXECUTE:Lcom/idm/adapter/callback/CallbackConstants$StatusCode;

.field public static final enum NONE:Lcom/idm/adapter/callback/CallbackConstants$StatusCode;

.field public static final enum RESTCLIENT_ABORT:Lcom/idm/adapter/callback/CallbackConstants$StatusCode;

.field public static final enum RESTCLIENT_FINISH:Lcom/idm/adapter/callback/CallbackConstants$StatusCode;

.field public static final enum START:Lcom/idm/adapter/callback/CallbackConstants$StatusCode;

.field public static final enum USER_CANCELED:Lcom/idm/adapter/callback/CallbackConstants$StatusCode;

.field public static final enum USER_CANCELED_FINISH:Lcom/idm/adapter/callback/CallbackConstants$StatusCode;


# instance fields
.field private final statusCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/idm/adapter/callback/CallbackConstants$StatusCode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/idm/adapter/callback/CallbackConstants$StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/idm/adapter/callback/CallbackConstants$StatusCode;->NONE:Lcom/idm/adapter/callback/CallbackConstants$StatusCode;

    new-instance v1, Lcom/idm/adapter/callback/CallbackConstants$StatusCode;

    const/4 v2, 0x1

    const/16 v3, 0x12c

    const-string v4, "RESTCLIENT_ABORT"

    invoke-direct {v1, v4, v2, v3}, Lcom/idm/adapter/callback/CallbackConstants$StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/idm/adapter/callback/CallbackConstants$StatusCode;->RESTCLIENT_ABORT:Lcom/idm/adapter/callback/CallbackConstants$StatusCode;

    new-instance v2, Lcom/idm/adapter/callback/CallbackConstants$StatusCode;

    const/4 v3, 0x2

    const/16 v4, 0x12d

    const-string v5, "RESTCLIENT_FINISH"

    invoke-direct {v2, v5, v3, v4}, Lcom/idm/adapter/callback/CallbackConstants$StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/idm/adapter/callback/CallbackConstants$StatusCode;->RESTCLIENT_FINISH:Lcom/idm/adapter/callback/CallbackConstants$StatusCode;

    new-instance v3, Lcom/idm/adapter/callback/CallbackConstants$StatusCode;

    const/4 v4, 0x3

    const/16 v5, 0x3eb

    const-string v6, "START"

    invoke-direct {v3, v6, v4, v5}, Lcom/idm/adapter/callback/CallbackConstants$StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/idm/adapter/callback/CallbackConstants$StatusCode;->START:Lcom/idm/adapter/callback/CallbackConstants$StatusCode;

    new-instance v4, Lcom/idm/adapter/callback/CallbackConstants$StatusCode;

    const/4 v5, 0x4

    const/16 v6, 0x3ef

    const-string v7, "USER_CANCELED"

    invoke-direct {v4, v7, v5, v6}, Lcom/idm/adapter/callback/CallbackConstants$StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/idm/adapter/callback/CallbackConstants$StatusCode;->USER_CANCELED:Lcom/idm/adapter/callback/CallbackConstants$StatusCode;

    new-instance v5, Lcom/idm/adapter/callback/CallbackConstants$StatusCode;

    const/4 v6, 0x5

    const/16 v7, 0x3f1

    const-string v8, "DM_ABORT"

    invoke-direct {v5, v8, v6, v7}, Lcom/idm/adapter/callback/CallbackConstants$StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/idm/adapter/callback/CallbackConstants$StatusCode;->DM_ABORT:Lcom/idm/adapter/callback/CallbackConstants$StatusCode;

    new-instance v6, Lcom/idm/adapter/callback/CallbackConstants$StatusCode;

    const/4 v7, 0x6

    const/16 v8, 0x3f2

    const-string v9, "FINISH"

    invoke-direct {v6, v9, v7, v8}, Lcom/idm/adapter/callback/CallbackConstants$StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/idm/adapter/callback/CallbackConstants$StatusCode;->FINISH:Lcom/idm/adapter/callback/CallbackConstants$StatusCode;

    new-instance v7, Lcom/idm/adapter/callback/CallbackConstants$StatusCode;

    const/4 v8, 0x7

    const/16 v9, 0x3f3

    const-string v10, "CONTINUE"

    invoke-direct {v7, v10, v8, v9}, Lcom/idm/adapter/callback/CallbackConstants$StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/idm/adapter/callback/CallbackConstants$StatusCode;->CONTINUE:Lcom/idm/adapter/callback/CallbackConstants$StatusCode;

    new-instance v8, Lcom/idm/adapter/callback/CallbackConstants$StatusCode;

    const/16 v9, 0x8

    const/16 v10, 0x3f5

    const-string v11, "FINISH_AND_EXECUTE"

    invoke-direct {v8, v11, v9, v10}, Lcom/idm/adapter/callback/CallbackConstants$StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/idm/adapter/callback/CallbackConstants$StatusCode;->FINISH_AND_EXECUTE:Lcom/idm/adapter/callback/CallbackConstants$StatusCode;

    new-instance v9, Lcom/idm/adapter/callback/CallbackConstants$StatusCode;

    const/16 v10, 0x9

    const/16 v11, 0x3f6

    const-string v12, "USER_CANCELED_FINISH"

    invoke-direct {v9, v12, v10, v11}, Lcom/idm/adapter/callback/CallbackConstants$StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/idm/adapter/callback/CallbackConstants$StatusCode;->USER_CANCELED_FINISH:Lcom/idm/adapter/callback/CallbackConstants$StatusCode;

    new-instance v10, Lcom/idm/adapter/callback/CallbackConstants$StatusCode;

    const/16 v11, 0xa

    const/16 v12, 0x455

    const-string v13, "DL_ABORT"

    invoke-direct {v10, v13, v11, v12}, Lcom/idm/adapter/callback/CallbackConstants$StatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/idm/adapter/callback/CallbackConstants$StatusCode;->DL_ABORT:Lcom/idm/adapter/callback/CallbackConstants$StatusCode;

    filled-new-array/range {v0 .. v10}, [Lcom/idm/adapter/callback/CallbackConstants$StatusCode;

    move-result-object v0

    sput-object v0, Lcom/idm/adapter/callback/CallbackConstants$StatusCode;->$VALUES:[Lcom/idm/adapter/callback/CallbackConstants$StatusCode;

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

    iput p3, p0, Lcom/idm/adapter/callback/CallbackConstants$StatusCode;->statusCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/idm/adapter/callback/CallbackConstants$StatusCode;
    .locals 1

    const-class v0, Lcom/idm/adapter/callback/CallbackConstants$StatusCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/adapter/callback/CallbackConstants$StatusCode;

    return-object p0
.end method

.method public static values()[Lcom/idm/adapter/callback/CallbackConstants$StatusCode;
    .locals 1

    sget-object v0, Lcom/idm/adapter/callback/CallbackConstants$StatusCode;->$VALUES:[Lcom/idm/adapter/callback/CallbackConstants$StatusCode;

    invoke-virtual {v0}, [Lcom/idm/adapter/callback/CallbackConstants$StatusCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/adapter/callback/CallbackConstants$StatusCode;

    return-object v0
.end method


# virtual methods
.method public getStatusCode()I
    .locals 0

    iget p0, p0, Lcom/idm/adapter/callback/CallbackConstants$StatusCode;->statusCode:I

    return p0
.end method
