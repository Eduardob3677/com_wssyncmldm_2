.class public final LF3/b;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/a;


# instance fields
.field public final synthetic d:Lcom/google/firebase/messaging/p;

.field public final synthetic e:Lr3/Q;

.field public final synthetic f:LF3/a;

.field public final synthetic g:Lh4/J;

.field public final synthetic h:Lx3/q;


# direct methods
.method public constructor <init>(Lcom/google/firebase/messaging/p;Lr3/Q;LF3/a;Lh4/J;Lx3/q;)V
    .locals 0

    iput-object p1, p0, LF3/b;->d:Lcom/google/firebase/messaging/p;

    iput-object p2, p0, LF3/b;->e:Lr3/Q;

    iput-object p3, p0, LF3/b;->f:LF3/a;

    iput-object p4, p0, LF3/b;->g:Lh4/J;

    iput-object p5, p0, LF3/b;->h:Lx3/q;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 14

    iget-object v0, p0, LF3/b;->d:Lcom/google/firebase/messaging/p;

    iget-object v0, v0, Lcom/google/firebase/messaging/p;->g:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/messaging/p;

    iget-object v1, p0, LF3/b;->g:Lh4/J;

    invoke-interface {v1}, Lh4/J;->i()Lr3/g;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lr3/g;->q()Lh4/z;

    move-result-object v1

    :goto_0
    move-object v6, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    iget-object v2, p0, LF3/b;->f:LF3/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v7, 0x1f

    invoke-static/range {v2 .. v7}, LF3/a;->a(LF3/a;IZLjava/util/Set;Lh4/z;I)LF3/a;

    move-result-object v8

    iget-object v1, p0, LF3/b;->h:Lx3/q;

    invoke-virtual {v1}, Lx3/q;->c()Z

    move-result v10

    const/4 v11, 0x0

    const/16 v13, 0x3b

    const/4 v9, 0x0

    const/4 v12, 0x0

    invoke-static/range {v8 .. v13}, LF3/a;->a(LF3/a;IZLjava/util/Set;Lh4/z;I)LF3/a;

    move-result-object v1

    iget-object p0, p0, LF3/b;->e:Lr3/Q;

    invoke-virtual {v0, p0, v1}, Lcom/google/firebase/messaging/p;->x(Lr3/Q;LF3/a;)Lh4/v;

    move-result-object p0

    return-object p0
.end method
