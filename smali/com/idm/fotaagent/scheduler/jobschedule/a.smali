.class public final synthetic Lcom/idm/fotaagent/scheduler/jobschedule/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic a:Landroid/net/NetworkRequest$Builder;


# direct methods
.method public synthetic constructor <init>(Landroid/net/NetworkRequest$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/scheduler/jobschedule/a;->a:Landroid/net/NetworkRequest$Builder;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/scheduler/jobschedule/a;->a:Landroid/net/NetworkRequest$Builder;

    invoke-virtual {p0, p1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    return-void
.end method
