.class public final LE3/B;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:LE3/C;

.field public final synthetic f:Lx3/u;

.field public final synthetic g:Lu3/K;


# direct methods
.method public synthetic constructor <init>(LE3/C;Lx3/u;Lu3/K;I)V
    .locals 0

    iput p4, p0, LE3/B;->d:I

    iput-object p1, p0, LE3/B;->e:LE3/C;

    iput-object p2, p0, LE3/B;->f:Lx3/u;

    iput-object p3, p0, LE3/B;->g:Lu3/K;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 5

    iget v0, p0, LE3/B;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LE3/B;->e:LE3/C;

    iget-object v1, v0, LE3/C;->b:LD3/e;

    iget-object v1, v1, LD3/e;->d:Ljava/lang/Object;

    check-cast v1, LD3/a;

    iget-object v1, v1, LD3/a;->a:Lg4/o;

    new-instance v2, LE3/B;

    iget-object v3, p0, LE3/B;->f:Lx3/u;

    iget-object p0, p0, LE3/B;->g:Lu3/K;

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, p0, v4}, LE3/B;-><init>(LE3/C;Lx3/u;Lu3/K;I)V

    check-cast v1, Lg4/l;

    invoke-virtual {v1, v2}, Lg4/l;->d(Lc3/a;)Lg4/h;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, LE3/B;->e:LE3/C;

    iget-object v0, v0, LE3/C;->b:LD3/e;

    iget-object v0, v0, LD3/e;->d:Ljava/lang/Object;

    check-cast v0, LD3/a;

    iget-object v0, v0, LD3/a;->h:LB3/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "field"

    iget-object v1, p0, LE3/B;->f:Lx3/u;

    invoke-static {v0, v1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "descriptor"

    iget-object p0, p0, LE3/B;->g:Lu3/K;

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
