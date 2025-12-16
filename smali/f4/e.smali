.class public final Lf4/e;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lf4/g;


# direct methods
.method public synthetic constructor <init>(Lf4/g;I)V
    .locals 0

    iput p2, p0, Lf4/e;->d:I

    iput-object p1, p0, Lf4/e;->e:Lf4/g;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lf4/e;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lf4/e;->e:Lf4/g;

    iget-object v0, p0, Lf4/g;->g:Li4/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "classDescriptor"

    iget-object p0, p0, Lf4/g;->j:Lf4/i;

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lf4/i;->p:LE3/h;

    invoke-virtual {p0}, Lh4/g;->e()Ljava/util/List;

    move-result-object p0

    const-string v0, "classDescriptor.typeConstructor.supertypes"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0

    :pswitch_0
    sget-object v0, La4/f;->m:La4/f;

    sget-object v1, La4/o;->a:La4/m;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, La4/l;->e:La4/l;

    iget-object p0, p0, Lf4/e;->e:Lf4/g;

    invoke-virtual {p0, v0, v1}, Lf4/p;->i(La4/f;Lc3/b;)Ljava/util/List;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
