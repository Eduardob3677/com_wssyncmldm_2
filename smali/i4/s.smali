.class public final synthetic Li4/s;
.super Ld3/g;
.source "SourceFile"

# interfaces
.implements Lc3/c;


# instance fields
.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;I)V
    .locals 0

    iput p3, p0, Li4/s;->l:I

    invoke-direct {p0, p1, p2}, Ld3/g;-><init>(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Li4/s;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lh4/v;

    check-cast p2, Lh4/v;

    const-string v0, "p0"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "p1"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Ld3/b;->d:Ljava/lang/Object;

    check-cast p0, Li4/l;

    invoke-virtual {p0, p1, p2}, Li4/l;->a(Lh4/v;Lh4/v;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lh4/v;

    check-cast p2, Lh4/v;

    const-string v0, "p0"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "p1"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Ld3/b;->d:Ljava/lang/Object;

    check-cast p0, Li4/t;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Li4/k;->b:Li4/j;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Li4/j;->b:Li4/l;

    invoke-virtual {p0, p1, p2}, Li4/l;->b(Lh4/v;Lh4/v;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, p1}, Li4/l;->b(Lh4/v;Lh4/v;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget p0, p0, Li4/s;->l:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "equalTypes"

    return-object p0

    :pswitch_0
    const-string p0, "isStrictSupertype"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final j()Li3/e;
    .locals 1

    iget p0, p0, Li4/s;->l:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Ld3/q;->a:Ld3/r;

    const-class v0, Li4/l;

    invoke-virtual {p0, v0}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget-object p0, Ld3/q;->a:Ld3/r;

    const-class v0, Li4/t;

    invoke-virtual {p0, v0}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final l()Ljava/lang/String;
    .locals 0

    iget p0, p0, Li4/s;->l:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "equalTypes(Lorg/jetbrains/kotlin/types/KotlinType;Lorg/jetbrains/kotlin/types/KotlinType;)Z"

    return-object p0

    :pswitch_0
    const-string p0, "isStrictSupertype(Lorg/jetbrains/kotlin/types/KotlinType;Lorg/jetbrains/kotlin/types/KotlinType;)Z"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
