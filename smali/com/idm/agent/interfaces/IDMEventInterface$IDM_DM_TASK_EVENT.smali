.class public final enum Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/agent/interfaces/IDMEventInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IDM_DM_TASK_EVENT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

.field public static final enum IDM_DM_TASK_EVENT_ABORT:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

.field public static final enum IDM_DM_TASK_EVENT_CONNECTFAIL:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

.field public static final enum IDM_DM_TASK_EVENT_CONTINUE:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

.field public static final enum IDM_DM_TASK_EVENT_FINISH:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

.field public static final enum IDM_DM_TASK_EVENT_FINISHANDEXECUTE:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

.field public static final enum IDM_DM_TASK_EVENT_RECEIVEFAIL:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

.field public static final enum IDM_DM_TASK_EVENT_SENDFAIL:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

.field public static final enum IDM_DM_TASK_EVENT_START:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

.field public static final enum IDM_DM_TASK_EVENT_USERCANCEL:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

.field public static final enum IDM_DM_TASK_EVENT_USERCANCEL_FINISH:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

.field private static final values:[Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

    const-string v1, "IDM_DM_TASK_EVENT_START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;->IDM_DM_TASK_EVENT_START:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

    new-instance v1, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

    const-string v2, "IDM_DM_TASK_EVENT_CONTINUE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;->IDM_DM_TASK_EVENT_CONTINUE:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

    new-instance v2, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

    const-string v3, "IDM_DM_TASK_EVENT_FINISH"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;->IDM_DM_TASK_EVENT_FINISH:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

    new-instance v3, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

    const-string v4, "IDM_DM_TASK_EVENT_CONNECTFAIL"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;->IDM_DM_TASK_EVENT_CONNECTFAIL:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

    new-instance v4, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

    const-string v5, "IDM_DM_TASK_EVENT_SENDFAIL"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;->IDM_DM_TASK_EVENT_SENDFAIL:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

    new-instance v5, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

    const-string v6, "IDM_DM_TASK_EVENT_RECEIVEFAIL"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;->IDM_DM_TASK_EVENT_RECEIVEFAIL:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

    new-instance v6, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

    const-string v7, "IDM_DM_TASK_EVENT_ABORT"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;->IDM_DM_TASK_EVENT_ABORT:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

    new-instance v7, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

    const-string v8, "IDM_DM_TASK_EVENT_FINISHANDEXECUTE"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;->IDM_DM_TASK_EVENT_FINISHANDEXECUTE:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

    new-instance v8, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

    const-string v9, "IDM_DM_TASK_EVENT_USERCANCEL"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;->IDM_DM_TASK_EVENT_USERCANCEL:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

    new-instance v9, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

    const-string v10, "IDM_DM_TASK_EVENT_USERCANCEL_FINISH"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;->IDM_DM_TASK_EVENT_USERCANCEL_FINISH:Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

    filled-new-array/range {v0 .. v9}, [Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

    move-result-object v0

    sput-object v0, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;->$VALUES:[Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

    invoke-static {}, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;->values()[Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

    move-result-object v0

    sput-object v0, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;->values:[Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

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

.method public static valueOf(I)Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;
    .locals 1

    :try_start_0
    sget-object v0, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;->values:[Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

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

.method public static valueOf(Ljava/lang/String;)Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;
    .locals 1

    const-class v0, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

    return-object p0
.end method

.method public static values()[Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;
    .locals 1

    sget-object v0, Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;->$VALUES:[Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

    invoke-virtual {v0}, [Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/agent/interfaces/IDMEventInterface$IDM_DM_TASK_EVENT;

    return-object v0
.end method
