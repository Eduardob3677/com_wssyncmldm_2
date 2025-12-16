.class public final Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model;
    }
.end annotation


# instance fields
.field private final container:Landroid/view/ViewGroup;

.field private final model:Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model;


# direct methods
.method private constructor <init>(Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector;->container:Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector;->model:Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model;

    return-void
.end method

.method private inject()V
    .locals 1

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector;->model:Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector;->container:Landroid/view/ViewGroup;

    invoke-static {v0, p0}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model;->access$200(Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static varargs inject(Landroid/view/ViewGroup;[Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model;)V
    .locals 6

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model$TopMargin;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model$TopMargin;-><init>(Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$1;)V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v4, p1, v2

    invoke-static {v4}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model;->access$100(Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v3, :cond_1

    new-instance v3, Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector;

    invoke-direct {v3, v0, p0}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector;-><init>(Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model;Landroid/view/ViewGroup;)V

    invoke-direct {v3}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector;->inject()V

    :cond_1
    new-instance v3, Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector;

    invoke-direct {v3, v4, p0}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector;-><init>(Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model;Landroid/view/ViewGroup;)V

    invoke-direct {v3}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector;->inject()V

    const/4 v3, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
