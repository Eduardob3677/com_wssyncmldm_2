.class public final Landroidx/fragment/app/y;
.super Landroidx/fragment/app/A;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/fragment/app/x;

.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic c:Lb/a;

.field public final synthetic d:Landroidx/activity/result/b;

.field public final synthetic e:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/x;Ljava/util/concurrent/atomic/AtomicReference;Lb/a;Landroidx/activity/result/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/y;->e:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Landroidx/fragment/app/y;->a:Landroidx/fragment/app/x;

    iput-object p3, p0, Landroidx/fragment/app/y;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Landroidx/fragment/app/y;->c:Lb/a;

    iput-object p5, p0, Landroidx/fragment/app/y;->d:Landroidx/activity/result/b;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Landroidx/fragment/app/y;->e:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->generateActivityResultKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroidx/fragment/app/y;->a:Landroidx/fragment/app/x;

    invoke-virtual {v2}, Landroidx/fragment/app/x;->a()Landroidx/activity/result/h;

    move-result-object v2

    iget-object v3, p0, Landroidx/fragment/app/y;->c:Lb/a;

    iget-object v4, p0, Landroidx/fragment/app/y;->d:Landroidx/activity/result/b;

    invoke-virtual {v2, v1, v0, v3, v4}, Landroidx/activity/result/h;->c(Ljava/lang/String;Landroidx/lifecycle/w;Lb/a;Landroidx/activity/result/b;)Landroidx/activity/result/d;

    move-result-object v0

    iget-object p0, p0, Landroidx/fragment/app/y;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
