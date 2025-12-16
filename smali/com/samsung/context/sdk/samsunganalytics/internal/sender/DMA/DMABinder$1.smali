.class Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;-><init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

.field final synthetic val$callback:Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;


# direct methods
.method public constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder$1;->val$callback:Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const/4 p1, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    sget v1, LO2/b;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "com.sec.android.diagmonagent.sa.IDMAInterface"

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    instance-of v3, v2, LO2/c;

    if-eqz v3, :cond_1

    move-object p2, v2

    check-cast p2, LO2/c;

    goto :goto_0

    :cond_1
    new-instance v2, LO2/a;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object p2, v2, LO2/a;->a:Landroid/os/IBinder;

    move-object p2, v2

    :goto_0
    invoke-static {v0, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->access$002(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;LO2/c;)LO2/c;

    iget-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    invoke-static {p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->access$000(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;)LO2/c;

    move-result-object p2

    check-cast p2, LO2/a;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object p2, p2, LO2/a;->a:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v0, "DMABinder"

    if-nez p2, :cond_2

    :try_start_4
    iget-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    invoke-virtual {p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->unBind()V

    iget-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    invoke-static {p2, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->access$102(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;Z)Z

    const-string p2, "Token failed"

    invoke-static {v0, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    invoke-static {v2, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->access$102(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;Z)Z

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder$1;->val$callback:Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;

    invoke-interface {v1, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;->onResult(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "DMA connected"

    invoke-static {v0, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p2

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->unBind()V

    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    invoke-static {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->access$102(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;Z)Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "failed to connect binder"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->logwingW(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->access$002(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;LO2/c;)LO2/c;

    return-void
.end method
