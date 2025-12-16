.class Lcom/idm/fotaagent/enabler/fumo/policy/mdm/MDMManager$MDMDisabled;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/enabler/fumo/policy/interfaces/Behavior;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/fumo/policy/mdm/MDMManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MDMDisabled"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/idm/fotaagent/enabler/fumo/policy/mdm/MDMManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/policy/mdm/MDMManager$MDMDisabled;-><init>()V

    return-void
.end method


# virtual methods
.method public checkDownloadable()V
    .locals 0

    return-void
.end method

.method public checkInstallable()V
    .locals 0

    return-void
.end method
