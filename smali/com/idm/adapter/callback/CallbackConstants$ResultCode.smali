.class public final enum Lcom/idm/adapter/callback/CallbackConstants$ResultCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/adapter/callback/CallbackConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResultCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/adapter/callback/CallbackConstants$ResultCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/adapter/callback/CallbackConstants$ResultCode;

.field public static final enum FAILURE:Lcom/idm/adapter/callback/CallbackConstants$ResultCode;

.field public static final enum NONE:Lcom/idm/adapter/callback/CallbackConstants$ResultCode;

.field public static final enum PROGRESS:Lcom/idm/adapter/callback/CallbackConstants$ResultCode;

.field public static final enum SUCCESS:Lcom/idm/adapter/callback/CallbackConstants$ResultCode;


# instance fields
.field private final resultCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/idm/adapter/callback/CallbackConstants$ResultCode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/idm/adapter/callback/CallbackConstants$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/idm/adapter/callback/CallbackConstants$ResultCode;->NONE:Lcom/idm/adapter/callback/CallbackConstants$ResultCode;

    new-instance v1, Lcom/idm/adapter/callback/CallbackConstants$ResultCode;

    const/4 v2, 0x1

    const/16 v3, 0x2710

    const-string v4, "SUCCESS"

    invoke-direct {v1, v4, v2, v3}, Lcom/idm/adapter/callback/CallbackConstants$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/idm/adapter/callback/CallbackConstants$ResultCode;->SUCCESS:Lcom/idm/adapter/callback/CallbackConstants$ResultCode;

    new-instance v2, Lcom/idm/adapter/callback/CallbackConstants$ResultCode;

    const/4 v3, 0x2

    const/16 v4, 0x2711

    const-string v5, "PROGRESS"

    invoke-direct {v2, v5, v3, v4}, Lcom/idm/adapter/callback/CallbackConstants$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/idm/adapter/callback/CallbackConstants$ResultCode;->PROGRESS:Lcom/idm/adapter/callback/CallbackConstants$ResultCode;

    new-instance v3, Lcom/idm/adapter/callback/CallbackConstants$ResultCode;

    const/4 v4, 0x3

    const/16 v5, 0x2712

    const-string v6, "FAILURE"

    invoke-direct {v3, v6, v4, v5}, Lcom/idm/adapter/callback/CallbackConstants$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/idm/adapter/callback/CallbackConstants$ResultCode;->FAILURE:Lcom/idm/adapter/callback/CallbackConstants$ResultCode;

    filled-new-array {v0, v1, v2, v3}, [Lcom/idm/adapter/callback/CallbackConstants$ResultCode;

    move-result-object v0

    sput-object v0, Lcom/idm/adapter/callback/CallbackConstants$ResultCode;->$VALUES:[Lcom/idm/adapter/callback/CallbackConstants$ResultCode;

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

    iput p3, p0, Lcom/idm/adapter/callback/CallbackConstants$ResultCode;->resultCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/idm/adapter/callback/CallbackConstants$ResultCode;
    .locals 1

    const-class v0, Lcom/idm/adapter/callback/CallbackConstants$ResultCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/adapter/callback/CallbackConstants$ResultCode;

    return-object p0
.end method

.method public static values()[Lcom/idm/adapter/callback/CallbackConstants$ResultCode;
    .locals 1

    sget-object v0, Lcom/idm/adapter/callback/CallbackConstants$ResultCode;->$VALUES:[Lcom/idm/adapter/callback/CallbackConstants$ResultCode;

    invoke-virtual {v0}, [Lcom/idm/adapter/callback/CallbackConstants$ResultCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/adapter/callback/CallbackConstants$ResultCode;

    return-object v0
.end method


# virtual methods
.method public getResultCode()I
    .locals 0

    iget p0, p0, Lcom/idm/adapter/callback/CallbackConstants$ResultCode;->resultCode:I

    return p0
.end method
