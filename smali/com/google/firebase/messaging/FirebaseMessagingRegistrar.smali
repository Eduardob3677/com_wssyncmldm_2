.class public Lcom/google/firebase/messaging/FirebaseMessagingRegistrar;
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

.method public static synthetic lambda$getComponents$0(Lb2/d;)Lcom/google/firebase/messaging/FirebaseMessaging;
    .locals 8

    new-instance v7, Lcom/google/firebase/messaging/FirebaseMessaging;

    const-class v0, LW1/g;

    invoke-interface {p0, v0}, Lb2/d;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, LW1/g;

    const-class v0, Lj2/a;

    invoke-interface {p0, v0}, Lb2/d;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LB/f;->F(Ljava/lang/Object;)V

    const-class v0, Ls2/b;

    invoke-interface {p0, v0}, Lb2/d;->b(Ljava/lang/Class;)Lk2/a;

    move-result-object v2

    const-class v0, Li2/b;

    invoke-interface {p0, v0}, Lb2/d;->b(Ljava/lang/Class;)Lk2/a;

    move-result-object v3

    const-class v0, Ll2/d;

    invoke-interface {p0, v0}, Lb2/d;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ll2/d;

    const-class v0, LI0/d;

    invoke-interface {p0, v0}, Lb2/d;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, LI0/d;

    const-class v0, Lh2/b;

    invoke-interface {p0, v0}, Lb2/d;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lh2/b;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/messaging/FirebaseMessaging;-><init>(LW1/g;Lk2/a;Lk2/a;Ll2/d;LI0/d;Lh2/b;)V

    return-object v7
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lb2/c;",
            ">;"
        }
    .end annotation

    const-class p0, Lcom/google/firebase/messaging/FirebaseMessaging;

    invoke-static {p0}, Lb2/c;->a(Ljava/lang/Class;)Lb2/b;

    move-result-object p0

    new-instance v0, Lb2/l;

    const-class v1, LW1/g;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lb2/l;-><init>(IILjava/lang/Class;)V

    invoke-virtual {p0, v0}, Lb2/b;->a(Lb2/l;)V

    new-instance v0, Lb2/l;

    const-class v1, Lj2/a;

    invoke-direct {v0, v3, v3, v1}, Lb2/l;-><init>(IILjava/lang/Class;)V

    invoke-virtual {p0, v0}, Lb2/b;->a(Lb2/l;)V

    new-instance v0, Lb2/l;

    const-class v1, Ls2/b;

    invoke-direct {v0, v3, v2, v1}, Lb2/l;-><init>(IILjava/lang/Class;)V

    invoke-virtual {p0, v0}, Lb2/b;->a(Lb2/l;)V

    new-instance v0, Lb2/l;

    const-class v1, Li2/b;

    invoke-direct {v0, v3, v2, v1}, Lb2/l;-><init>(IILjava/lang/Class;)V

    invoke-virtual {p0, v0}, Lb2/b;->a(Lb2/l;)V

    new-instance v0, Lb2/l;

    const-class v1, LI0/d;

    invoke-direct {v0, v3, v3, v1}, Lb2/l;-><init>(IILjava/lang/Class;)V

    invoke-virtual {p0, v0}, Lb2/b;->a(Lb2/l;)V

    new-instance v0, Lb2/l;

    const-class v1, Ll2/d;

    invoke-direct {v0, v2, v3, v1}, Lb2/l;-><init>(IILjava/lang/Class;)V

    invoke-virtual {p0, v0}, Lb2/b;->a(Lb2/l;)V

    new-instance v0, Lb2/l;

    const-class v1, Lh2/b;

    invoke-direct {v0, v2, v3, v1}, Lb2/l;-><init>(IILjava/lang/Class;)V

    invoke-virtual {p0, v0}, Lb2/b;->a(Lb2/l;)V

    sget-object v0, Lcom/google/firebase/messaging/e;->f:Lcom/google/firebase/messaging/e;

    iput-object v0, p0, Lb2/b;->f:Ljava/lang/Object;

    iget v0, p0, Lb2/b;->a:I

    if-nez v0, :cond_0

    iput v2, p0, Lb2/b;->a:I

    invoke-virtual {p0}, Lb2/b;->b()Lb2/c;

    move-result-object p0

    const-string v0, "fire-fcm"

    const-string v1, "23.0.0"

    invoke-static {v0, v1}, Lo3/f;->c(Ljava/lang/String;Ljava/lang/String;)Lb2/c;

    move-result-object v0

    filled-new-array {p0, v0}, [Lb2/c;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Instantiation type has already been set."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
