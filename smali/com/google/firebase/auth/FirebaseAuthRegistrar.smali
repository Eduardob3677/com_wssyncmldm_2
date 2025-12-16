.class public Lcom/google/firebase/auth/FirebaseAuthRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb2/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambda$getComponents$0(Lb2/d;)Lcom/google/firebase/auth/FirebaseAuth;
    .locals 1

    const-class v0, LW1/g;

    invoke-interface {p0, v0}, Lb2/d;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LW1/g;

    new-instance v0, La2/r;

    invoke-direct {v0, p0}, Lcom/google/firebase/auth/FirebaseAuth;-><init>(LW1/g;)V

    return-object v0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lb2/c;",
            ">;"
        }
    .end annotation

    const-class p0, La2/a;

    filled-new-array {p0}, [Ljava/lang/Class;

    move-result-object p0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    const-class v2, Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    array-length v2, p0

    const/4 v6, 0x0

    move v3, v6

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p0, v3

    const-string v5, "Null interface"

    invoke-static {v5, v4}, Li3/x;->q(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    new-instance p0, Lb2/l;

    const/4 v2, 0x0

    const-class v3, LW1/g;

    const/4 v4, 0x1

    invoke-direct {p0, v4, v2, v3}, Lb2/l;-><init>(IILjava/lang/Class;)V

    iget-object v2, p0, Lb2/l;->a:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v4

    if-eqz v2, :cond_1

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v7, LY1/v;->c:LY1/v;

    new-instance p0, Lb2/c;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v5, 0x2

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lb2/c;-><init>(Ljava/util/HashSet;Ljava/util/HashSet;IILb2/f;Ljava/util/HashSet;)V

    const-string v0, "fire-auth"

    const-string v1, "21.0.1"

    invoke-static {v0, v1}, Lo3/f;->c(Ljava/lang/String;Ljava/lang/String;)Lb2/c;

    move-result-object v0

    filled-new-array {p0, v0}, [Lb2/c;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Components are not allowed to depend on interfaces they themselves provide."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
