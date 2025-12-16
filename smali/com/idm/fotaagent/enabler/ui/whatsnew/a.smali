.class public final synthetic Lcom/idm/fotaagent/enabler/ui/whatsnew/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/enabler/ui/whatsnew/DescriptionBody;
.implements Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;
.implements Lb2/f;


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/idm/fotaagent/enabler/ui/whatsnew/a;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Landroid/content/Context;Lcom/idm/fotaagent/enabler/ui/DescriptionContent;)Ljava/lang/CharSequence;
    .locals 0

    iget p0, p0, Lcom/idm/fotaagent/enabler/ui/whatsnew/a;->c:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1, p2}, Lcom/idm/fotaagent/enabler/ui/whatsnew/DescriptionBody;->h(Landroid/content/Context;Lcom/idm/fotaagent/enabler/ui/DescriptionContent;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p1, p2}, Lcom/idm/fotaagent/enabler/ui/whatsnew/DescriptionBody;->u(Landroid/content/Context;Lcom/idm/fotaagent/enabler/ui/DescriptionContent;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public isMajorUpdate(Landroid/content/Context;)Z
    .locals 0

    iget p0, p0, Lcom/idm/fotaagent/enabler/ui/whatsnew/a;->c:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;->a(Landroid/content/Context;)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-static {p1}, Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;->b(Landroid/content/Context;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public m(Lb2/t;)Ljava/lang/Object;
    .locals 11

    iget p0, p0, Lcom/idm/fotaagent/enabler/ui/whatsnew/a;->c:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ls2/b;

    const-class v0, Ls2/a;

    invoke-virtual {p1, v0}, Lb2/t;->e(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p1

    sget-object v0, Ls2/c;->d:Ls2/c;

    if-nez v0, :cond_1

    const-class v1, Ls2/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ls2/c;->d:Ls2/c;

    if-nez v0, :cond_0

    new-instance v0, Ls2/c;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ls2/c;-><init>(I)V

    sput-object v0, Ls2/c;->d:Ls2/c;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    invoke-direct {p0, p1, v0}, Ls2/b;-><init>(Ljava/util/Set;Ls2/c;)V

    return-object p0

    :pswitch_0
    invoke-static {p1}, Lcom/google/firebase/installations/FirebaseInstallationsRegistrar;->a(Lb2/t;)Ll2/d;

    move-result-object p0

    return-object p0

    :pswitch_1
    new-instance p0, Li2/b;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p1, v0}, Lb2/t;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-class v1, Li2/c;

    invoke-virtual {p1, v1}, Lb2/t;->e(Ljava/lang/Class;)Ljava/util/Set;

    new-instance p1, Lb2/p;

    new-instance v1, Lb2/e;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Lb2/e;-><init>(ILjava/lang/Object;)V

    invoke-direct {p1, v1}, Lb2/p;-><init>(Lk2/a;)V

    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sget-object v10, Li2/b;->b:Li2/a;

    const/4 v5, 0x1

    const-wide/16 v6, 0x1e

    const/4 v4, 0x0

    invoke-direct/range {v3 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li2/b;->a:Lk2/a;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
