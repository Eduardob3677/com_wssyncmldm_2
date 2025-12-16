.class public final synthetic LE3/l;
.super Ld3/g;
.source "SourceFile"

# interfaces
.implements Lc3/b;


# instance fields
.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;I)V
    .locals 0

    iput p3, p0, LE3/l;->l:I

    invoke-direct {p0, p1, p2}, Ld3/g;-><init>(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, LE3/l;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Li4/f;

    const-string v0, "p0"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lf4/g;

    iget-object p0, p0, Ld3/b;->d:Ljava/lang/Object;

    check-cast p0, Lf4/i;

    invoke-direct {v0, p0, p1}, Lf4/g;-><init>(Lf4/i;Li4/f;)V

    return-object v0

    :pswitch_0
    check-cast p1, LQ3/f;

    const-string v0, "p0"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Ld3/b;->d:Ljava/lang/Object;

    check-cast p0, LE3/q;

    invoke-static {p0, p1}, LE3/q;->w(LE3/q;LQ3/f;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, LQ3/f;

    const-string v0, "p0"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Ld3/b;->d:Ljava/lang/Object;

    check-cast p0, LE3/q;

    invoke-static {p0, p1}, LE3/q;->v(LE3/q;LQ3/f;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget p0, p0, LE3/l;->l:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "<init>"

    return-object p0

    :pswitch_0
    const-string p0, "searchMethodsInSupertypesWithoutBuiltinMagic"

    return-object p0

    :pswitch_1
    const-string p0, "searchMethodsByNameWithoutBuiltinMagic"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j()Li3/e;
    .locals 1

    iget p0, p0, LE3/l;->l:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Ld3/q;->a:Ld3/r;

    const-class v0, Lf4/g;

    invoke-virtual {p0, v0}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget-object p0, Ld3/q;->a:Ld3/r;

    const-class v0, LE3/q;

    invoke-virtual {p0, v0}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object p0

    return-object p0

    :pswitch_1
    sget-object p0, Ld3/q;->a:Ld3/r;

    const-class v0, LE3/q;

    invoke-virtual {p0, v0}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final l()Ljava/lang/String;
    .locals 0

    iget p0, p0, LE3/l;->l:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "<init>(Lorg/jetbrains/kotlin/serialization/deserialization/descriptors/DeserializedClassDescriptor;Lorg/jetbrains/kotlin/types/checker/KotlinTypeRefiner;)V"

    return-object p0

    :pswitch_0
    const-string p0, "searchMethodsInSupertypesWithoutBuiltinMagic(Lorg/jetbrains/kotlin/name/Name;)Ljava/util/Collection;"

    return-object p0

    :pswitch_1
    const-string p0, "searchMethodsByNameWithoutBuiltinMagic(Lorg/jetbrains/kotlin/name/Name;)Ljava/util/Collection;"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
