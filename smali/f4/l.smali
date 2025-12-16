.class public final Lf4/l;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lf4/l;->d:I

    iput-object p1, p0, Lf4/l;->e:Ljava/lang/Object;

    iput-object p2, p0, Lf4/l;->f:Ljava/lang/Object;

    iput-object p3, p0, Lf4/l;->g:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lf4/l;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lf4/l;->e:Ljava/lang/Object;

    check-cast v0, Lh4/v;

    invoke-virtual {v0}, Lh4/v;->J0()Lh4/J;

    move-result-object v0

    invoke-interface {v0}, Lh4/J;->i()Lr3/g;

    move-result-object v0

    instance-of v1, v0, Lr3/e;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Lr3/e;

    invoke-static {v1}, Ll3/w0;->j(Lr3/e;)Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lf4/l;->f:Ljava/lang/Object;

    check-cast v2, Ll3/w;

    if-eqz v1, :cond_2

    iget-object p0, p0, Lf4/l;->g:Ljava/lang/Object;

    check-cast p0, Ll3/z;

    iget-object v3, p0, Ll3/z;->d:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    iget-object p0, p0, Ll3/z;->d:Ljava/lang/Class;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    const-string v0, "{\n                      \u2026ass\n                    }"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    const-string v4, "jClass.interfaces"

    invoke-static {v4, v3}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v1, v3}, LR2/i;->q0(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object p0

    aget-object p0, p0, v1

    const-string v0, "{\n                      \u2026ex]\n                    }"

    invoke-static {v0, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, LQ2/d;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "No superclass of "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " in Java reflection for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, LQ2/d;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_2
    new-instance p0, LQ2/d;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported superclass of "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, LQ2/d;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_3
    new-instance p0, LQ2/d;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Supertype not a class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, LQ2/d;-><init>(Ljava/lang/String;I)V

    throw p0

    :pswitch_0
    iget-object v0, p0, Lf4/l;->g:Ljava/lang/Object;

    check-cast v0, Lf4/p;

    iget-object v0, v0, Lf4/p;->b:Lcom/google/android/gms/internal/firebase-auth-api/G4;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->c:Ljava/lang/Object;

    check-cast v0, Ld4/i;

    iget-object v0, v0, Ld4/i;->p:LR3/i;

    iget-object v1, p0, Lf4/l;->e:Ljava/lang/Object;

    check-cast v1, LR3/B;

    check-cast v1, LR3/c;

    iget-object p0, p0, Lf4/l;->f:Ljava/lang/Object;

    check-cast p0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1, p0, v0}, LR3/c;->b(Ljava/io/ByteArrayInputStream;LR3/i;)LR3/b;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
