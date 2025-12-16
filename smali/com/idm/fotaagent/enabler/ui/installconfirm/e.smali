.class public final synthetic Lcom/idm/fotaagent/enabler/ui/installconfirm/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/e;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/e;->c:Landroid/content/Context;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->a(Landroid/content/Context;Ljava/lang/Integer;)V

    return-void
.end method
