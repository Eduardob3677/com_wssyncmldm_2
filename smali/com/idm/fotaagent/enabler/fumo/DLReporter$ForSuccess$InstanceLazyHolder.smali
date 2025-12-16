.class Lcom/idm/fotaagent/enabler/fumo/DLReporter$ForSuccess$InstanceLazyHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/fumo/DLReporter$ForSuccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstanceLazyHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/idm/fotaagent/enabler/fumo/DLReporter$ForSuccess;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/DLReporter$ForSuccess;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/enabler/fumo/DLReporter$ForSuccess;-><init>(Lcom/idm/fotaagent/enabler/fumo/DLReporter$1;)V

    sput-object v0, Lcom/idm/fotaagent/enabler/fumo/DLReporter$ForSuccess$InstanceLazyHolder;->INSTANCE:Lcom/idm/fotaagent/enabler/fumo/DLReporter$ForSuccess;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
