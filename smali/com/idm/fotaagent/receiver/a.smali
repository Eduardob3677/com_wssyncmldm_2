.class public final synthetic Lcom/idm/fotaagent/receiver/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lcom/idm/fotaagent/receiver/GenericBroadcastReceiver;


# direct methods
.method public synthetic constructor <init>(Lcom/idm/fotaagent/receiver/GenericBroadcastReceiver;I)V
    .locals 0

    iput p2, p0, Lcom/idm/fotaagent/receiver/a;->c:I

    iput-object p1, p0, Lcom/idm/fotaagent/receiver/a;->d:Lcom/idm/fotaagent/receiver/GenericBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/idm/fotaagent/receiver/a;->c:I

    iget-object p0, p0, Lcom/idm/fotaagent/receiver/a;->d:Lcom/idm/fotaagent/receiver/GenericBroadcastReceiver;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/idm/fotaagent/receiver/GenericBroadcastReceiver;->a(Lcom/idm/fotaagent/receiver/GenericBroadcastReceiver;)V

    return-void

    :pswitch_0
    invoke-static {p0}, Lcom/idm/fotaagent/receiver/GenericBroadcastReceiver;->b(Lcom/idm/fotaagent/receiver/GenericBroadcastReceiver;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
