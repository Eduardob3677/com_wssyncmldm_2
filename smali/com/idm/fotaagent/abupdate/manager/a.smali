.class public final synthetic Lcom/idm/fotaagent/abupdate/manager/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/idm/fotaagent/abupdate/manager/a;->c:I

    iput-object p2, p0, Lcom/idm/fotaagent/abupdate/manager/a;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/idm/fotaagent/abupdate/manager/a;->c:I

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/manager/a;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/manager/UpdateEngineManager;->bind()V

    return-void

    :pswitch_0
    check-cast p0, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;

    invoke-static {p0}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->a(Lcom/idm/fotaagent/abupdate/manager/EnablerManager;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;

    invoke-static {p0}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->d(Lcom/idm/fotaagent/abupdate/manager/EnablerManager;)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;

    invoke-static {p0}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->e(Lcom/idm/fotaagent/abupdate/manager/EnablerManager;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
