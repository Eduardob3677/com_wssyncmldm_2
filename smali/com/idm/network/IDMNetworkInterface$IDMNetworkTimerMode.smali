.class public final enum Lcom/idm/network/IDMNetworkInterface$IDMNetworkTimerMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/network/IDMNetworkInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IDMNetworkTimerMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/network/IDMNetworkInterface$IDMNetworkTimerMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/network/IDMNetworkInterface$IDMNetworkTimerMode;

.field public static final enum IDM_NETWORK_TIMER_MODE_CONNECT:Lcom/idm/network/IDMNetworkInterface$IDMNetworkTimerMode;

.field public static final enum IDM_NETWORK_TIMER_MODE_RECEIVE:Lcom/idm/network/IDMNetworkInterface$IDMNetworkTimerMode;


# instance fields
.field private final szValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/idm/network/IDMNetworkInterface$IDMNetworkTimerMode;

    const/4 v1, 0x0

    const-string v2, "Receive"

    const-string v3, "IDM_NETWORK_TIMER_MODE_RECEIVE"

    invoke-direct {v0, v3, v1, v2}, Lcom/idm/network/IDMNetworkInterface$IDMNetworkTimerMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/idm/network/IDMNetworkInterface$IDMNetworkTimerMode;->IDM_NETWORK_TIMER_MODE_RECEIVE:Lcom/idm/network/IDMNetworkInterface$IDMNetworkTimerMode;

    new-instance v1, Lcom/idm/network/IDMNetworkInterface$IDMNetworkTimerMode;

    const/4 v2, 0x1

    const-string v3, "Connect"

    const-string v4, "IDM_NETWORK_TIMER_MODE_CONNECT"

    invoke-direct {v1, v4, v2, v3}, Lcom/idm/network/IDMNetworkInterface$IDMNetworkTimerMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/idm/network/IDMNetworkInterface$IDMNetworkTimerMode;->IDM_NETWORK_TIMER_MODE_CONNECT:Lcom/idm/network/IDMNetworkInterface$IDMNetworkTimerMode;

    filled-new-array {v0, v1}, [Lcom/idm/network/IDMNetworkInterface$IDMNetworkTimerMode;

    move-result-object v0

    sput-object v0, Lcom/idm/network/IDMNetworkInterface$IDMNetworkTimerMode;->$VALUES:[Lcom/idm/network/IDMNetworkInterface$IDMNetworkTimerMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/idm/network/IDMNetworkInterface$IDMNetworkTimerMode;->szValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/idm/network/IDMNetworkInterface$IDMNetworkTimerMode;
    .locals 1

    const-class v0, Lcom/idm/network/IDMNetworkInterface$IDMNetworkTimerMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/network/IDMNetworkInterface$IDMNetworkTimerMode;

    return-object p0
.end method

.method public static values()[Lcom/idm/network/IDMNetworkInterface$IDMNetworkTimerMode;
    .locals 1

    sget-object v0, Lcom/idm/network/IDMNetworkInterface$IDMNetworkTimerMode;->$VALUES:[Lcom/idm/network/IDMNetworkInterface$IDMNetworkTimerMode;

    invoke-virtual {v0}, [Lcom/idm/network/IDMNetworkInterface$IDMNetworkTimerMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/network/IDMNetworkInterface$IDMNetworkTimerMode;

    return-object v0
.end method


# virtual methods
.method public idmGetValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/network/IDMNetworkInterface$IDMNetworkTimerMode;->szValue:Ljava/lang/String;

    return-object p0
.end method
