.class public final LM0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LN0/b;


# instance fields
.field public final synthetic c:I

.field public final d:LP2/a;

.field public final e:LP2/a;

.field public final f:LP2/a;


# direct methods
.method public constructor <init>(LK/j;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, LM0/e;->c:I

    sget-object v0, LT0/a;->a:Le4/d;

    sget-object v1, LT0/a;->b:LP1/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/e;->d:LP2/a;

    iput-object v0, p0, LM0/e;->e:LP2/a;

    iput-object v1, p0, LM0/e;->f:LP2/a;

    return-void
.end method

.method public constructor <init>(LP2/a;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, LM0/e;->c:I

    sget-object v0, LR0/d;->a:LZ0/h;

    sget-object v1, LR0/d;->b:Le4/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/e;->d:LP2/a;

    iput-object v0, p0, LM0/e;->e:LP2/a;

    iput-object v1, p0, LM0/e;->f:LP2/a;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, LM0/e;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LM0/e;->d:LP2/a;

    invoke-interface {v0}, LP2/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, LM0/e;->e:LP2/a;

    invoke-interface {v1}, LP2/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object p0, p0, LM0/e;->f:LP2/a;

    invoke-interface {p0}, LP2/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    new-instance v2, LR0/j;

    invoke-direct {v2, v0, p0, v1}, LR0/j;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    return-object v2

    :pswitch_0
    iget-object v0, p0, LM0/e;->d:LP2/a;

    invoke-interface {v0}, LP2/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, LM0/e;->e:LP2/a;

    invoke-interface {v1}, LP2/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LT0/b;

    iget-object p0, p0, LM0/e;->f:LP2/a;

    invoke-interface {p0}, LP2/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LT0/b;

    new-instance v2, LM0/d;

    invoke-direct {v2, v0, v1, p0}, LM0/d;-><init>(Landroid/content/Context;LT0/b;LT0/b;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
