.class public final LL0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LN0/b;


# instance fields
.field public final synthetic c:I

.field public final d:LP2/a;

.field public final e:LP2/a;

.field public final f:LP2/a;

.field public final g:LP2/a;

.field public final h:LP2/a;


# direct methods
.method public constructor <init>(LL0/l;LJ3/c;LP0/e;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, LL0/l;->c:I

    sget-object v0, LT0/a;->a:Le4/d;

    sget-object v1, LT0/a;->b:LP1/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LL0/l;->d:LP2/a;

    iput-object v1, p0, LL0/l;->e:LP2/a;

    iput-object p1, p0, LL0/l;->f:LP2/a;

    iput-object p2, p0, LL0/l;->g:LP2/a;

    iput-object p3, p0, LL0/l;->h:LP2/a;

    return-void
.end method

.method public constructor <init>(LP2/a;LP2/a;LP0/e;LP2/a;LP2/a;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LL0/l;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LL0/l;->d:LP2/a;

    iput-object p2, p0, LL0/l;->e:LP2/a;

    iput-object p3, p0, LL0/l;->f:LP2/a;

    iput-object p4, p0, LL0/l;->g:LP2/a;

    iput-object p5, p0, LL0/l;->h:LP2/a;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 7

    iget v0, p0, LL0/l;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LL0/l;->d:LP2/a;

    invoke-interface {v0}, LP2/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/Executor;

    iget-object v0, p0, LL0/l;->e:LP2/a;

    invoke-interface {v0}, LP2/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, LM0/f;

    iget-object v0, p0, LL0/l;->f:LP2/a;

    invoke-interface {v0}, LP2/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, LQ0/d;

    iget-object v0, p0, LL0/l;->g:LP2/a;

    invoke-interface {v0}, LP2/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, LR0/c;

    iget-object p0, p0, LL0/l;->h:LP2/a;

    invoke-interface {p0}, LP2/a;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, LS0/c;

    new-instance p0, LP0/c;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, LP0/c;-><init>(Ljava/util/concurrent/Executor;LM0/f;LQ0/d;LR0/c;LS0/c;)V

    return-object p0

    :pswitch_0
    iget-object v0, p0, LL0/l;->d:LP2/a;

    invoke-interface {v0}, LP2/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, LT0/b;

    iget-object v0, p0, LL0/l;->e:LP2/a;

    invoke-interface {v0}, LP2/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, LT0/b;

    iget-object v0, p0, LL0/l;->f:LP2/a;

    invoke-interface {v0}, LP2/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, LP0/d;

    iget-object v0, p0, LL0/l;->g:LP2/a;

    invoke-interface {v0}, LP2/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, LQ0/j;

    iget-object p0, p0, LL0/l;->h:LP2/a;

    invoke-interface {p0}, LP2/a;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, LQ0/k;

    new-instance p0, LL0/k;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, LL0/k;-><init>(LT0/b;LT0/b;LP0/d;LQ0/j;LQ0/k;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
