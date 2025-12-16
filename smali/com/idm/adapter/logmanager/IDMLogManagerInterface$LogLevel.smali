.class public final enum Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/adapter/logmanager/IDMLogManagerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;

.field public static final enum D:Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;

.field public static final enum E:Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;

.field public static final enum F:Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;

.field public static final enum H:Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;

.field public static final enum I:Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;

.field public static final enum V:Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;

.field public static final enum W:Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;


# instance fields
.field private nLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;

    const-string v1, "H"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;->H:Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;

    new-instance v1, Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;

    const-string v2, "V"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;->V:Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;

    new-instance v2, Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;

    const-string v3, "D"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;->D:Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;

    new-instance v3, Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;

    const-string v4, "I"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;->I:Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;

    new-instance v4, Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;

    const-string v5, "W"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;->W:Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;

    new-instance v5, Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;

    const-string v6, "E"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;->E:Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;

    new-instance v6, Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;

    const-string v7, "F"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;->F:Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;

    filled-new-array/range {v0 .. v6}, [Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;

    move-result-object v0

    sput-object v0, Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;->$VALUES:[Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;

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

    iput p3, p0, Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;->nLevel:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;
    .locals 1

    const-class v0, Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;

    return-object p0
.end method

.method public static values()[Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;
    .locals 1

    sget-object v0, Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;->$VALUES:[Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;

    invoke-virtual {v0}, [Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;

    return-object v0
.end method


# virtual methods
.method public getLevel()I
    .locals 0

    iget p0, p0, Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;->nLevel:I

    return p0
.end method
