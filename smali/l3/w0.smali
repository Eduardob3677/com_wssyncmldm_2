.class public abstract Ll3/w0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LQ3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LQ3/c;

    const-string v1, "kotlin.jvm.JvmStatic"

    invoke-direct {v0, v1}, LQ3/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Ll3/w0;->a:LQ3/c;

    return-void
.end method

.method public static final a(Ljava/lang/Object;)Ll3/r;
    .locals 1

    instance-of v0, p0, Ll3/r;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ll3/r;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    invoke-static {p0}, Ll3/w0;->b(Ljava/lang/Object;)Ll3/E;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0}, Ll3/w0;->c(Ljava/lang/Object;)Ll3/j0;

    move-result-object v0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static final b(Ljava/lang/Object;)Ll3/E;
    .locals 2

    instance-of v0, p0, Ll3/E;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ll3/E;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_3

    instance-of v0, p0, Ld3/g;

    if-eqz v0, :cond_1

    check-cast p0, Ld3/g;

    goto :goto_1

    :cond_1
    move-object p0, v1

    :goto_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ld3/b;->c()Li3/b;

    move-result-object p0

    goto :goto_2

    :cond_2
    move-object p0, v1

    :goto_2
    instance-of v0, p0, Ll3/E;

    if-eqz v0, :cond_4

    move-object v1, p0

    check-cast v1, Ll3/E;

    goto :goto_3

    :cond_3
    move-object v1, v0

    :cond_4
    :goto_3
    return-object v1
.end method

.method public static final c(Ljava/lang/Object;)Ll3/j0;
    .locals 2

    instance-of v0, p0, Ll3/j0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ll3/j0;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_3

    instance-of v0, p0, Ld3/o;

    if-eqz v0, :cond_1

    check-cast p0, Ld3/o;

    goto :goto_1

    :cond_1
    move-object p0, v1

    :goto_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ld3/o;->c()Li3/b;

    move-result-object p0

    goto :goto_2

    :cond_2
    move-object p0, v1

    :goto_2
    instance-of v0, p0, Ll3/j0;

    if-eqz v0, :cond_4

    move-object v1, p0

    check-cast v1, Ll3/j0;

    goto :goto_3

    :cond_3
    move-object v1, v0

    :cond_4
    :goto_3
    return-object v1
.end method

.method public static final d(Ls3/a;)Ljava/util/ArrayList;
    .locals 6

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Ls3/a;->t()Ls3/h;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls3/b;

    invoke-interface {v1}, Ls3/b;->m()Lr3/N;

    move-result-object v3

    instance-of v4, v3, Lw3/a;

    if-eqz v4, :cond_1

    check-cast v3, Lw3/a;

    iget-object v2, v3, Lw3/a;->b:Ljava/lang/annotation/Annotation;

    goto :goto_2

    :cond_1
    instance-of v4, v3, Lw3/f;

    if-eqz v4, :cond_3

    check-cast v3, Lw3/f;

    iget-object v1, v3, Lw3/f;->b:Lx3/s;

    instance-of v3, v1, Lx3/e;

    if-eqz v3, :cond_2

    check-cast v1, Lx3/e;

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_4

    iget-object v2, v1, Lx3/e;->a:Ljava/lang/annotation/Annotation;

    goto :goto_2

    :cond_3
    invoke-static {v1}, Ll3/w0;->i(Ls3/b;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    :cond_4
    :goto_2
    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_6

    goto/16 :goto_5

    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/annotation/Annotation;

    invoke-static {v1}, LL2/b;->k(Ljava/lang/annotation/Annotation;)Li3/c;

    move-result-object v1

    invoke-static {v1}, LL2/b;->q(Li3/c;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Container"

    invoke-static {v1, v3}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/annotation/Annotation;

    invoke-static {v1}, LL2/b;->k(Ljava/lang/annotation/Annotation;)Li3/c;

    move-result-object v4

    invoke-static {v4}, LL2/b;->q(Li3/c;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-class v5, Ld3/s;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    if-eqz v5, :cond_8

    const-string v5, "value"

    invoke-virtual {v4, v5, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v4, "null cannot be cast to non-null type kotlin.Array<out kotlin.Annotation>"

    invoke-static {v4, v1}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v1, [Ljava/lang/annotation/Annotation;

    invoke-static {v1}, LR2/i;->g0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_4

    :cond_8
    invoke-static {v1}, Lf1/a;->V(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_4
    invoke-static {p0, v1}, LR2/s;->E0(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_3

    :cond_9
    move-object v0, p0

    :cond_a
    :goto_5
    return-object v0
.end method

.method public static final e(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3

    const-string v0, "type"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_9

    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    goto/16 :goto_0

    :cond_1
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    goto :goto_0

    :cond_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_4
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_0

    :cond_5
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_0

    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_0

    :cond_7
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Parameter with void type is illegal"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown primitive: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final f(Ljava/lang/Class;LR3/n;LN3/f;Ls2/c;LN3/a;Lc3/c;)Lr3/b;
    .locals 13

    move-object v0, p1

    const-string v1, "moduleAnchor"

    move-object v2, p0

    invoke-static {v1, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "proto"

    invoke-static {v1, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "nameResolver"

    move-object v4, p2

    invoke-static {v1, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "typeTable"

    move-object/from16 v6, p3

    invoke-static {v1, v6}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "metadataVersion"

    move-object/from16 v8, p4

    invoke-static {v1, v8}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Ll3/o0;->a(Ljava/lang/Class;)Lw3/e;

    move-result-object v1

    instance-of v2, v0, LL3/y;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, LL3/y;

    iget-object v2, v2, LL3/y;->k:Ljava/util/List;

    :goto_0
    move-object v11, v2

    goto :goto_1

    :cond_0
    instance-of v2, v0, LL3/G;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, LL3/G;

    iget-object v2, v2, LL3/G;->k:Ljava/util/List;

    goto :goto_0

    :goto_1
    new-instance v12, Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object v3, v1, Lw3/e;->a:Ld4/i;

    iget-object v5, v3, Ld4/i;->b:Lr3/x;

    sget-object v7, LN3/g;->a:LN3/g;

    const-string v1, "typeParameters"

    invoke-static {v1, v11}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v12

    move-object v4, p2

    move-object/from16 v6, p3

    move-object/from16 v8, p4

    invoke-direct/range {v2 .. v11}, Lcom/google/android/gms/internal/firebase-auth-api/G4;-><init>(Ld4/i;LN3/f;Lr3/j;Ls2/c;LN3/g;LN3/a;Lf4/j;LJ3/c;Ljava/util/List;)V

    new-instance v1, Ld4/r;

    invoke-direct {v1, v12}, Ld4/r;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/G4;)V

    move-object/from16 v2, p5

    invoke-interface {v2, v1, p1}, Lc3/c;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr3/b;

    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final g(Lr3/b;)Lu3/w;
    .locals 1

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Lr3/b;->F()Lu3/w;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lr3/j;->l()Lr3/j;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-static {v0, p0}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, Lr3/e;

    invoke-interface {p0}, Lr3/e;->H0()Lu3/w;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final h(Ljava/lang/ClassLoader;LQ3/b;I)Ljava/lang/Class;
    .locals 4

    sget-object v0, Lq3/d;->a:Ljava/lang/String;

    invoke-virtual {p1}, LQ3/b;->b()LQ3/c;

    move-result-object v0

    invoke-virtual {v0}, LQ3/c;->i()LQ3/e;

    move-result-object v0

    const-string v1, "kotlinClassId.asSingleFqName().toUnsafe()"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lq3/d;->f(LQ3/e;)LQ3/b;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    invoke-virtual {p1}, LQ3/b;->h()LQ3/c;

    move-result-object v0

    invoke-virtual {v0}, LQ3/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, LQ3/b;->i()LQ3/c;

    move-result-object p1

    invoke-virtual {p1}, LQ3/c;->b()Ljava/lang/String;

    move-result-object p1

    const-string v1, "kotlin"

    invoke-static {v0, v1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v1, "LongArray"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    :cond_1
    const-class p0, [J

    goto/16 :goto_3

    :sswitch_1
    const-string v1, "FloatArray"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const-class p0, [F

    goto/16 :goto_3

    :sswitch_2
    const-string v1, "IntArray"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const-class p0, [I

    goto/16 :goto_3

    :sswitch_3
    const-string v1, "Array"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    const-class p0, [Ljava/lang/Object;

    goto/16 :goto_3

    :sswitch_4
    const-string v1, "DoubleArray"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    const-class p0, [D

    goto/16 :goto_3

    :sswitch_5
    const-string v1, "ByteArray"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    const-class p0, [B

    goto/16 :goto_3

    :sswitch_6
    const-string v1, "CharArray"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_1

    :cond_7
    const-class p0, [C

    goto :goto_3

    :sswitch_7
    const-string v1, "ShortArray"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_1

    :cond_8
    const-class p0, [S

    goto :goto_3

    :sswitch_8
    const-string v1, "BooleanArray"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_1

    :cond_9
    const-class p0, [Z

    goto :goto_3

    :cond_a
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-lez p2, :cond_c

    const/4 v2, 0x0

    :goto_2
    if-ge v2, p2, :cond_b

    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_b
    const-string v2, "L"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_d

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    const/16 v0, 0x24

    const/16 v2, 0x2e

    invoke-static {p1, v2, v0}, Ls4/h;->q(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez p2, :cond_e

    const-string p1, ";"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p2, p1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lo4/a;->r(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    :goto_3
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x35c13ccf -> :sswitch_8
        -0x2d7eb8a3 -> :sswitch_7
        -0x2d0e4b7d -> :sswitch_6
        -0x47759ef -> :sswitch_5
        0x15568e8 -> :sswitch_4
        0x3c98239 -> :sswitch_3
        0x23deebca -> :sswitch_2
        0x388e557d -> :sswitch_1
        0x7d6d891d -> :sswitch_0
    .end sparse-switch
.end method

.method public static final i(Ls3/b;)Ljava/lang/annotation/Annotation;
    .locals 7

    invoke-static {p0}, LX3/f;->d(Ls3/b;)Lr3/e;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ll3/w0;->j(Lr3/e;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Ljava/lang/Class;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_2

    return-object v1

    :cond_2
    invoke-interface {p0}, Ls3/b;->b()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LQ3/f;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LV3/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const-string v6, "annotationClass.classLoader"

    invoke-static {v6, v5}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v3, v5}, Ll3/w0;->k(LV3/g;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v4}, LQ3/f;->b()Ljava/lang/String;

    move-result-object v4

    new-instance v5, LQ2/e;

    invoke-direct {v5, v4, v3}, LQ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    move-object v5, v1

    :goto_3
    if-eqz v5, :cond_3

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-static {v2}, LR2/z;->C1(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    invoke-static {v0, p0, v3}, LL2/b;->h(Ljava/lang/Class;Ljava/util/Map;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/annotation/Annotation;

    return-object p0
.end method

.method public static final j(Lr3/e;)Ljava/lang/Class;
    .locals 2

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Lr3/k;->m()Lr3/N;

    move-result-object v0

    const-string v1, "source"

    invoke-static {v1, v0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of v1, v0, LJ3/q;

    if-eqz v1, :cond_0

    check-cast v0, LJ3/q;

    const-string p0, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.runtime.components.ReflectKotlinClass"

    iget-object v0, v0, LJ3/q;->b:Lw3/b;

    invoke-static {p0, v0}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, v0, Lw3/b;->a:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lw3/f;

    if-eqz v1, :cond_1

    check-cast v0, Lw3/f;

    const-string p0, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.runtime.structure.ReflectJavaClass"

    iget-object v0, v0, Lw3/f;->b:Lx3/s;

    invoke-static {p0, v0}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v0, Lx3/o;

    iget-object p0, v0, Lx3/o;->a:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    invoke-static {p0}, LX3/f;->f(Lr3/g;)LQ3/b;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lx3/d;->d(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Ll3/w0;->h(Ljava/lang/ClassLoader;LQ3/b;I)Ljava/lang/Class;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final k(LV3/g;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x1

    instance-of v1, p0, LV3/a;

    if-eqz v1, :cond_0

    check-cast p0, LV3/a;

    iget-object p0, p0, LV3/g;->a:Ljava/lang/Object;

    check-cast p0, Ls3/b;

    invoke-static {p0}, Ll3/w0;->i(Ls3/b;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    goto/16 :goto_13

    :cond_0
    instance-of v1, p0, LV3/b;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_d

    check-cast p0, LV3/b;

    instance-of v1, p0, LV3/w;

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, LV3/w;

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_e

    iget-object v1, v1, LV3/w;->c:Lh4/v;

    if-nez v1, :cond_2

    goto/16 :goto_10

    :cond_2
    iget-object v4, p0, LV3/g;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v4}, LR2/o;->C0(Ljava/lang/Iterable;)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LV3/g;

    invoke-static {v6, p1}, Ll3/w0;->k(LV3/g;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    sget-object v4, Lo3/i;->e:LQ3/f;

    invoke-virtual {v1}, Lh4/v;->J0()Lh4/J;

    move-result-object v4

    invoke-interface {v4}, Lh4/J;->i()Lr3/g;

    move-result-object v4

    if-nez v4, :cond_4

    move-object v4, v3

    goto :goto_2

    :cond_4
    invoke-static {v4}, Lo3/i;->r(Lr3/g;)Lo3/k;

    move-result-object v4

    :goto_2
    if-nez v4, :cond_5

    const/4 v4, -0x1

    goto :goto_3

    :cond_5
    sget-object v6, Ll3/v0;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v6, v4

    :goto_3
    iget-object p0, p0, LV3/g;->a:Ljava/lang/Object;

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    new-instance p0, LA0/c;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :pswitch_1
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-array p1, p0, [D

    :goto_4
    if-ge v2, p0, :cond_a

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type kotlin.Double"

    invoke-static {v3, v1}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    aput-wide v3, p1, v2

    add-int/2addr v2, v0

    goto :goto_4

    :pswitch_2
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-array p1, p0, [J

    :goto_5
    if-ge v2, p0, :cond_a

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type kotlin.Long"

    invoke-static {v3, v1}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, p1, v2

    add-int/2addr v2, v0

    goto :goto_5

    :pswitch_3
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-array p1, p0, [F

    :goto_6
    if-ge v2, p0, :cond_a

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {v3, v1}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    aput v1, p1, v2

    add-int/2addr v2, v0

    goto :goto_6

    :pswitch_4
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-array p1, p0, [I

    :goto_7
    if-ge v2, p0, :cond_a

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v3, v1}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, p1, v2

    add-int/2addr v2, v0

    goto :goto_7

    :pswitch_5
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-array p1, p0, [S

    :goto_8
    if-ge v2, p0, :cond_a

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type kotlin.Short"

    invoke-static {v3, v1}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    aput-short v1, p1, v2

    add-int/2addr v2, v0

    goto :goto_8

    :pswitch_6
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-array p1, p0, [B

    :goto_9
    if-ge v2, p0, :cond_a

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type kotlin.Byte"

    invoke-static {v3, v1}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    aput-byte v1, p1, v2

    add-int/2addr v2, v0

    goto :goto_9

    :pswitch_7
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-array p1, p0, [C

    :goto_a
    if-ge v2, p0, :cond_a

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type kotlin.Char"

    invoke-static {v3, v1}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    aput-char v1, p1, v2

    add-int/2addr v2, v0

    goto :goto_a

    :pswitch_8
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-array p1, p0, [Z

    :goto_b
    if-ge v2, p0, :cond_a

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {v3, v1}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    aput-boolean v1, p1, v2

    add-int/2addr v2, v0

    goto :goto_b

    :pswitch_9
    invoke-static {v1}, Lo3/i;->y(Lh4/v;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v1}, Lh4/v;->u0()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, LR2/m;->b1(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh4/N;

    invoke-virtual {v1}, Lh4/N;->b()Lh4/v;

    move-result-object v1

    const-string v4, "type.arguments.single().type"

    invoke-static {v4, v1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lh4/v;->J0()Lh4/J;

    move-result-object v4

    invoke-interface {v4}, Lh4/J;->i()Lr3/g;

    move-result-object v4

    instance-of v6, v4, Lr3/e;

    if-eqz v6, :cond_6

    check-cast v4, Lr3/e;

    goto :goto_c

    :cond_6
    move-object v4, v3

    :goto_c
    if-eqz v4, :cond_b

    sget-object v6, Lo3/m;->f:LQ3/e;

    invoke-static {v1, v6}, Lo3/i;->D(Lh4/v;LQ3/e;)Z

    move-result v1

    if-eqz v1, :cond_7

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-array p1, p0, [Ljava/lang/String;

    :goto_d
    if-ge v2, p0, :cond_a

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v3, v1}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v1, p1, v2

    add-int/2addr v2, v0

    goto :goto_d

    :cond_7
    sget-object v1, Lo3/m;->P:LQ3/e;

    invoke-static {v4, v1}, Lo3/i;->b(Lr3/g;LQ3/e;)Z

    move-result v1

    if-eqz v1, :cond_8

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-array p1, p0, [Ljava/lang/Class;

    :goto_e
    if-ge v2, p0, :cond_a

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type java.lang.Class<*>"

    invoke-static {v3, v1}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v1, p1, v2

    add-int/2addr v2, v0

    goto :goto_e

    :cond_8
    invoke-static {v4}, LX3/f;->f(Lr3/g;)LQ3/b;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-static {p1, v1, v2}, Ll3/w0;->h(Ljava/lang/ClassLoader;LQ3/b;I)Ljava/lang/Class;

    move-result-object p1

    if-nez p1, :cond_9

    goto/16 :goto_10

    :cond_9
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type kotlin.Array<in kotlin.Any?>"

    invoke-static {p1, p0}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    move-object p1, p0

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_f
    if-ge v2, p0, :cond_a

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v2

    add-int/2addr v2, v0

    goto :goto_f

    :cond_a
    move-object p0, p1

    goto/16 :goto_13

    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Not a class type: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Not an array type: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    instance-of v1, p0, LV3/i;

    if-eqz v1, :cond_f

    check-cast p0, LV3/i;

    iget-object p0, p0, LV3/g;->a:Ljava/lang/Object;

    check-cast p0, LQ2/e;

    iget-object v0, p0, LQ2/e;->c:Ljava/lang/Object;

    check-cast v0, LQ3/b;

    iget-object p0, p0, LQ2/e;->d:Ljava/lang/Object;

    check-cast p0, LQ3/f;

    invoke-static {p1, v0, v2}, Ll3/w0;->h(Ljava/lang/ClassLoader;LQ3/b;I)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-virtual {p0}, LQ3/f;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    goto :goto_13

    :cond_e
    :goto_10
    move-object p0, v3

    goto :goto_13

    :cond_f
    instance-of v1, p0, LV3/r;

    if-eqz v1, :cond_13

    check-cast p0, LV3/r;

    iget-object p0, p0, LV3/g;->a:Ljava/lang/Object;

    check-cast p0, LV3/q;

    instance-of v0, p0, LV3/p;

    if-eqz v0, :cond_10

    check-cast p0, LV3/p;

    iget-object p0, p0, LV3/p;->a:LV3/f;

    iget-object v0, p0, LV3/f;->a:LQ3/b;

    iget p0, p0, LV3/f;->b:I

    invoke-static {p1, v0, p0}, Ll3/w0;->h(Ljava/lang/ClassLoader;LQ3/b;I)Ljava/lang/Class;

    move-result-object p0

    goto :goto_13

    :cond_10
    instance-of p1, p0, LV3/o;

    if-eqz p1, :cond_12

    check-cast p0, LV3/o;

    iget-object p0, p0, LV3/o;->a:Lh4/v;

    invoke-virtual {p0}, Lh4/v;->J0()Lh4/J;

    move-result-object p0

    invoke-interface {p0}, Lh4/J;->i()Lr3/g;

    move-result-object p0

    instance-of p1, p0, Lr3/e;

    if-eqz p1, :cond_11

    check-cast p0, Lr3/e;

    goto :goto_11

    :cond_11
    move-object p0, v3

    :goto_11
    if-eqz p0, :cond_e

    invoke-static {p0}, Ll3/w0;->j(Lr3/e;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_13

    :cond_12
    new-instance p0, LA0/c;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_13
    instance-of p1, p0, LV3/j;

    if-eqz p1, :cond_14

    goto :goto_12

    :cond_14
    instance-of v0, p0, LV3/t;

    :goto_12
    if-eqz v0, :cond_15

    goto :goto_10

    :cond_15
    invoke-virtual {p0}, LV3/g;->b()Ljava/lang/Object;

    move-result-object p0

    :goto_13
    return-object p0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
