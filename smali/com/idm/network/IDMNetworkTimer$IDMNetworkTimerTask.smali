.class Lcom/idm/network/IDMNetworkTimer$IDMNetworkTimerTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/network/IDMNetworkTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IDMNetworkTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idm/network/IDMNetworkTimer;


# direct methods
.method private constructor <init>(Lcom/idm/network/IDMNetworkTimer;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/network/IDMNetworkTimer$IDMNetworkTimerTask;->this$0:Lcom/idm/network/IDMNetworkTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/idm/network/IDMNetworkTimer;Lcom/idm/network/IDMNetworkTimer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/network/IDMNetworkTimer$IDMNetworkTimerTask;-><init>(Lcom/idm/network/IDMNetworkTimer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "============================="

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "== IDMNetwork "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/idm/network/IDMNetworkTimer$IDMNetworkTimerTask;->this$0:Lcom/idm/network/IDMNetworkTimer;

    invoke-static {v2}, Lcom/idm/network/IDMNetworkTimer;->access$100(Lcom/idm/network/IDMNetworkTimer;)Lcom/idm/network/IDMNetworkInterface$IDMNetworkTimerMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/idm/network/IDMNetworkInterface$IDMNetworkTimerMode;->idmGetValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Timer["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/idm/network/IDMNetworkTimer$IDMNetworkTimerTask;->this$0:Lcom/idm/network/IDMNetworkTimer;

    invoke-static {v2}, Lcom/idm/network/IDMNetworkTimer;->access$200(Lcom/idm/network/IDMNetworkTimer;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] =="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/network/IDMNetworkTimer$IDMNetworkTimerTask;->this$0:Lcom/idm/network/IDMNetworkTimer;

    invoke-static {v0}, Lcom/idm/network/IDMNetworkTimer;->access$200(Lcom/idm/network/IDMNetworkTimer;)I

    move-result v0

    iget-object v1, p0, Lcom/idm/network/IDMNetworkTimer$IDMNetworkTimerTask;->this$0:Lcom/idm/network/IDMNetworkTimer;

    invoke-static {v1}, Lcom/idm/network/IDMNetworkTimer;->access$300(Lcom/idm/network/IDMNetworkTimer;)I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/idm/network/IDMNetworkTimer$IDMNetworkTimerTask;->this$0:Lcom/idm/network/IDMNetworkTimer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/idm/network/IDMNetworkTimer;->access$202(Lcom/idm/network/IDMNetworkTimer;I)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "===========================Network "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/network/IDMNetworkTimer$IDMNetworkTimerTask;->this$0:Lcom/idm/network/IDMNetworkTimer;

    invoke-static {v1}, Lcom/idm/network/IDMNetworkTimer;->access$100(Lcom/idm/network/IDMNetworkTimer;)Lcom/idm/network/IDMNetworkInterface$IDMNetworkTimerMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/idm/network/IDMNetworkInterface$IDMNetworkTimerMode;->idmGetValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Fail============================"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/network/IDMNetworkTimer$IDMNetworkTimerTask;->this$0:Lcom/idm/network/IDMNetworkTimer;

    invoke-virtual {v0}, Lcom/idm/network/IDMNetworkTimer;->idmNetworkEndTimer()V

    iget-object v0, p0, Lcom/idm/network/IDMNetworkTimer$IDMNetworkTimerTask;->this$0:Lcom/idm/network/IDMNetworkTimer;

    invoke-static {v0}, Lcom/idm/network/IDMNetworkTimer;->access$500(Lcom/idm/network/IDMNetworkTimer;)Lcom/idm/network/IDMNetworkHttpAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/idm/network/IDMNetworkTimer$IDMNetworkTimerTask;->this$0:Lcom/idm/network/IDMNetworkTimer;

    invoke-static {v1}, Lcom/idm/network/IDMNetworkTimer;->access$400(Lcom/idm/network/IDMNetworkTimer;)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/idm/network/IDMNetworkHttpAdapter;->idmDisconnectHttpUrlConnection(Ljava/net/HttpURLConnection;)V

    :cond_0
    iget-object p0, p0, Lcom/idm/network/IDMNetworkTimer$IDMNetworkTimerTask;->this$0:Lcom/idm/network/IDMNetworkTimer;

    invoke-static {p0}, Lcom/idm/network/IDMNetworkTimer;->access$208(Lcom/idm/network/IDMNetworkTimer;)I

    return-void
.end method
