.class public final synthetic Lcom/idm/fotaagent/utils/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/idm/fotaagent/utils/a;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/utils/a;->e:Ljava/lang/Object;

    iput-object p3, p0, Lcom/idm/fotaagent/utils/a;->f:Ljava/lang/Object;

    iput p2, p0, Lcom/idm/fotaagent/utils/a;->d:I

    return-void
.end method

.method public synthetic constructor <init>(Lh0/a;ILjava/io/Serializable;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/idm/fotaagent/utils/a;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/utils/a;->e:Ljava/lang/Object;

    iput p2, p0, Lcom/idm/fotaagent/utils/a;->d:I

    iput-object p3, p0, Lcom/idm/fotaagent/utils/a;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/idm/fotaagent/utils/a;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/idm/fotaagent/utils/a;->e:Ljava/lang/Object;

    check-cast v0, Lh0/a;

    iget-object v0, v0, Lh0/a;->b:Lh0/e;

    iget v1, p0, Lcom/idm/fotaagent/utils/a;->d:I

    iget-object p0, p0, Lcom/idm/fotaagent/utils/a;->f:Ljava/lang/Object;

    invoke-interface {v0, v1, p0}, Lh0/e;->q(ILjava/lang/Object;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/idm/fotaagent/utils/a;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p0, Lcom/idm/fotaagent/utils/a;->d:I

    iget-object p0, p0, Lcom/idm/fotaagent/utils/a;->e:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {p0, v1, v0}, Lcom/idm/fotaagent/utils/ToastHelper;->a(Landroid/content/Context;ILjava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
