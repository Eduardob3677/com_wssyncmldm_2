.class Lcom/idm/fotaagent/enabler/adapter/NetworkApnManager$LazyInstanceHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/adapter/NetworkApnManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LazyInstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/idm/fotaagent/enabler/adapter/NetworkApnManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/enabler/adapter/NetworkApnManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/enabler/adapter/NetworkApnManager;-><init>(Lcom/idm/fotaagent/enabler/adapter/NetworkApnManager$1;)V

    sput-object v0, Lcom/idm/fotaagent/enabler/adapter/NetworkApnManager$LazyInstanceHolder;->INSTANCE:Lcom/idm/fotaagent/enabler/adapter/NetworkApnManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100()Lcom/idm/fotaagent/enabler/adapter/NetworkApnManager;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/enabler/adapter/NetworkApnManager$LazyInstanceHolder;->INSTANCE:Lcom/idm/fotaagent/enabler/adapter/NetworkApnManager;

    return-object v0
.end method
