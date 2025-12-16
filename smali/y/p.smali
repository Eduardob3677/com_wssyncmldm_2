.class public final Ly/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/ArrayList;

.field public e:Ljava/lang/CharSequence;

.field public f:Ljava/lang/CharSequence;

.field public g:Landroid/app/PendingIntent;

.field public h:Landroidx/core/graphics/drawable/IconCompat;

.field public i:I

.field public j:I

.field public k:Z

.field public l:LK3/c;

.field public m:Z

.field public n:Landroid/os/Bundle;

.field public o:I

.field public p:I

.field public q:Ljava/lang/String;

.field public final r:Z

.field public final s:Landroid/app/Notification;

.field public final t:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ly/p;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ly/p;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ly/p;->d:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ly/p;->k:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Ly/p;->m:Z

    iput v1, p0, Ly/p;->o:I

    iput v1, p0, Ly/p;->p:I

    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    iput-object v2, p0, Ly/p;->s:Landroid/app/Notification;

    iput-object p1, p0, Ly/p;->a:Landroid/content/Context;

    iput-object p2, p0, Ly/p;->q:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Landroid/app/Notification;->when:J

    const/4 p1, -0x1

    iput p1, v2, Landroid/app/Notification;->audioStreamType:I

    iput v1, p0, Ly/p;->j:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ly/p;->t:Ljava/util/ArrayList;

    iput-boolean v0, p0, Ly/p;->r:Z

    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1400

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public final a()Landroid/app/Notification;
    .locals 2

    new-instance v0, Lcom/google/firebase/messaging/p;

    invoke-direct {v0, p0}, Lcom/google/firebase/messaging/p;-><init>(Ly/p;)V

    iget-object p0, v0, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    check-cast p0, Ly/p;

    iget-object v1, p0, Ly/p;->l:LK3/c;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, LK3/c;->L0(Lcom/google/firebase/messaging/p;)V

    :cond_0
    iget-object v0, v0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    check-cast v0, Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    if-eqz v1, :cond_1

    iget-object p0, p0, Ly/p;->l:LK3/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    if-eqz v1, :cond_2

    iget-object p0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz p0, :cond_2

    invoke-virtual {v1, p0}, LK3/c;->K0(Landroid/os/Bundle;)V

    :cond_2
    return-object v0
.end method

.method public final c(LK3/c;)V
    .locals 1

    iget-object v0, p0, Ly/p;->l:LK3/c;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Ly/p;->l:LK3/c;

    iget-object v0, p1, LK3/c;->c:Ljava/lang/Object;

    check-cast v0, Ly/p;

    if-eq v0, p0, :cond_0

    iput-object p0, p1, LK3/c;->c:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ly/p;->c(LK3/c;)V

    :cond_0
    return-void
.end method
