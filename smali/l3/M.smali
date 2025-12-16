.class public final Ll3/M;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ll3/O;

.field public final synthetic f:Ll3/Q;


# direct methods
.method public constructor <init>(Ll3/O;Ll3/Q;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ll3/M;->d:I

    iput-object p1, p0, Ll3/M;->e:Ll3/O;

    iput-object p2, p0, Ll3/M;->f:Ll3/Q;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ll3/Q;Ll3/O;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ll3/M;->d:I

    iput-object p1, p0, Ll3/M;->f:Ll3/Q;

    iput-object p2, p0, Ll3/M;->e:Ll3/O;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Ll3/M;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ll3/M;->e:Ll3/O;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ll3/O;->g:[Li3/o;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v0, v0, Ll3/O;->c:Ll3/p0;

    invoke-virtual {v0}, Ll3/p0;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw3/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lw3/b;->b:LK3/b;

    if-eqz v0, :cond_0

    sget-object v2, LK3/a;->j:LK3/a;

    iget-object v3, v0, LK3/b;->d:Ljava/lang/Object;

    check-cast v3, LK3/a;

    if-ne v3, v2, :cond_0

    iget-object v0, v0, LK3/b;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    iget-object p0, p0, Ll3/M;->f:Ll3/Q;

    iget-object p0, p0, Ll3/Q;->d:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-static {v0, v2, v1}, Ls4/h;->q(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    :cond_1
    return-object v1

    :pswitch_0
    iget-object v0, p0, Ll3/M;->e:Ll3/O;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ll3/O;->g:[Li3/o;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v0, v0, Ll3/O;->d:Ll3/p0;

    invoke-virtual {v0}, Ll3/p0;->a()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-scope>(...)"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v0, La4/o;

    iget-object p0, p0, Ll3/M;->f:Ll3/Q;

    invoke-virtual {p0, v0, v2}, Ll3/C;->g(La4/o;I)Ljava/util/List;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
