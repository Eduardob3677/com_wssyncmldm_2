.class public final enum Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/agent/dm/uic/IDMDmUICInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UIC_INPUT_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;

.field public static final enum IDM_UIC_INPUTTYPE_ALPHANUMERIC:Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;

.field public static final enum IDM_UIC_INPUTTYPE_DATE:Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;

.field public static final enum IDM_UIC_INPUTTYPE_IPADDRESS:Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;

.field public static final enum IDM_UIC_INPUTTYPE_NONE:Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;

.field public static final enum IDM_UIC_INPUTTYPE_NUMERIC:Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;

.field public static final enum IDM_UIC_INPUTTYPE_PHONENUBMER:Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;

.field public static final enum IDM_UIC_INPUTTYPE_TIME:Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;

.field private static final values:[Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;

    const-string v1, "IDM_UIC_INPUTTYPE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;->IDM_UIC_INPUTTYPE_NONE:Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;

    new-instance v1, Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;

    const-string v2, "IDM_UIC_INPUTTYPE_ALPHANUMERIC"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;->IDM_UIC_INPUTTYPE_ALPHANUMERIC:Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;

    new-instance v2, Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;

    const-string v3, "IDM_UIC_INPUTTYPE_NUMERIC"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;->IDM_UIC_INPUTTYPE_NUMERIC:Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;

    new-instance v3, Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;

    const-string v4, "IDM_UIC_INPUTTYPE_DATE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;->IDM_UIC_INPUTTYPE_DATE:Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;

    new-instance v4, Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;

    const-string v5, "IDM_UIC_INPUTTYPE_TIME"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;->IDM_UIC_INPUTTYPE_TIME:Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;

    new-instance v5, Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;

    const-string v6, "IDM_UIC_INPUTTYPE_PHONENUBMER"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;->IDM_UIC_INPUTTYPE_PHONENUBMER:Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;

    new-instance v6, Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;

    const-string v7, "IDM_UIC_INPUTTYPE_IPADDRESS"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;->IDM_UIC_INPUTTYPE_IPADDRESS:Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;

    filled-new-array/range {v0 .. v6}, [Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;

    move-result-object v0

    sput-object v0, Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;->$VALUES:[Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;

    invoke-static {}, Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;->values()[Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;

    move-result-object v0

    sput-object v0, Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;->values:[Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;
    .locals 1

    :try_start_0
    sget-object v0, Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;->values:[Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;

    aget-object p0, v0, p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;
    .locals 1

    const-class v0, Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;
    .locals 1

    sget-object v0, Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;->$VALUES:[Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;

    invoke-virtual {v0}, [Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;

    return-object v0
.end method
