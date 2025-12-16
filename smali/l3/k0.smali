.class public final Ll3/k0;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ll3/l0;


# direct methods
.method public synthetic constructor <init>(ILl3/l0;)V
    .locals 0

    iput p1, p0, Ll3/k0;->d:I

    iput-object p2, p0, Ll3/k0;->e:Ll3/l0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ll3/k0;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Ll3/k0;->e:Ll3/l0;

    iget-object v0, p0, Ll3/l0;->a:Lh4/v;

    invoke-virtual {p0, v0}, Ll3/l0;->a(Lh4/v;)Li3/d;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Ll3/k0;->e:Ll3/l0;

    iget-object p0, p0, Ll3/l0;->b:Ll3/p0;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ll3/p0;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Type;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ld3/i;->b(Ljava/lang/Object;)V

    invoke-static {p0}, Lx3/d;->c(Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
