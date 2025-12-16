.class public final Ld4/n;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Ld4/r;LR3/b;II)V
    .locals 0

    iput p4, p0, Ld4/n;->d:I

    iput-object p1, p0, Ld4/n;->e:Ljava/lang/Object;

    iput-object p2, p0, Ld4/n;->f:Ljava/lang/Object;

    iput p3, p0, Ld4/n;->g:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ll3/l0;ILQ2/c;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Ld4/n;->d:I

    iput-object p1, p0, Ld4/n;->e:Ljava/lang/Object;

    iput p2, p0, Ld4/n;->g:I

    iput-object p3, p0, Ld4/n;->f:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 6

    iget v0, p0, Ld4/n;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ld4/n;->e:Ljava/lang/Object;

    check-cast v0, Ll3/l0;

    iget-object v1, v0, Ll3/l0;->b:Ll3/p0;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ll3/p0;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Type;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    instance-of v3, v1, Ljava/lang/Class;

    const-string v4, "{\n                      \u2026                        }"

    if-eqz v3, :cond_2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    goto :goto_1

    :cond_1
    const-class p0, Ljava/lang/Object;

    :goto_1
    invoke-static {v4, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :cond_2
    instance-of v3, v1, Ljava/lang/reflect/GenericArrayType;

    iget v5, p0, Ld4/n;->g:I

    if-eqz v3, :cond_4

    if-nez v5, :cond_3

    check-cast v1, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {v4, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :cond_3
    new-instance p0, LQ2/d;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Array type has been queried for a non-0th argument: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, LQ2/d;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_4
    instance-of v1, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_8

    iget-object p0, p0, Ld4/n;->f:Ljava/lang/Object;

    check-cast p0, LQ2/c;

    invoke-interface {p0}, LQ2/c;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Type;

    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "argument.lowerBounds"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    array-length v1, v0

    if-nez v1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    aget-object v2, v0, v1

    :goto_2
    if-nez v2, :cond_7

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    const-string v0, "argument.upperBounds"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, LR2/i;->n0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Type;

    goto :goto_3

    :cond_7
    move-object p0, v2

    :goto_3
    invoke-static {v4, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_4
    return-object p0

    :cond_8
    new-instance p0, LQ2/d;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Non-generic type has been queried for arguments: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, LQ2/d;-><init>(Ljava/lang/String;I)V

    throw p0

    :pswitch_0
    iget-object v0, p0, Ld4/n;->e:Ljava/lang/Object;

    check-cast v0, Ld4/r;

    iget-object v1, v0, Ld4/r;->a:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/G4;->e:Ljava/lang/Object;

    check-cast v1, Lr3/j;

    invoke-virtual {v0, v1}, Ld4/r;->a(Lr3/j;)Lcom/google/android/gms/internal/firebase-auth-api/X;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v0, v0, Ld4/r;->a:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast v0, Ld4/i;

    iget-object v0, v0, Ld4/i;->e:Ld4/a;

    iget-object v2, p0, Ld4/n;->f:Ljava/lang/Object;

    check-cast v2, LR3/b;

    iget p0, p0, Ld4/n;->g:I

    invoke-interface {v0, v1, v2, p0}, Ld4/c;->G(Lcom/google/android/gms/internal/firebase-auth-api/X;LR3/b;I)Ljava/util/List;

    move-result-object p0

    goto :goto_5

    :cond_9
    const/4 p0, 0x0

    :goto_5
    if-nez p0, :cond_a

    sget-object p0, LR2/u;->c:LR2/u;

    :cond_a
    return-object p0

    :pswitch_1
    iget-object v0, p0, Ld4/n;->e:Ljava/lang/Object;

    check-cast v0, Ld4/r;

    iget-object v1, v0, Ld4/r;->a:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/G4;->e:Ljava/lang/Object;

    check-cast v1, Lr3/j;

    invoke-virtual {v0, v1}, Ld4/r;->a(Lr3/j;)Lcom/google/android/gms/internal/firebase-auth-api/X;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v0, v0, Ld4/r;->a:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast v0, Ld4/i;

    iget-object v0, v0, Ld4/i;->e:Ld4/a;

    iget-object v2, p0, Ld4/n;->f:Ljava/lang/Object;

    check-cast v2, LR3/b;

    iget p0, p0, Ld4/n;->g:I

    invoke-interface {v0, v1, v2, p0}, Ld4/c;->z(Lcom/google/android/gms/internal/firebase-auth-api/X;LR3/b;I)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, LR2/m;->g1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    goto :goto_6

    :cond_b
    const/4 p0, 0x0

    :goto_6
    if-nez p0, :cond_c

    sget-object p0, LR2/u;->c:LR2/u;

    :cond_c
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
