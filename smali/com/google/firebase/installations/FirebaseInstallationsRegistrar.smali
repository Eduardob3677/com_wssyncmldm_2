.class public Lcom/google/firebase/installations/FirebaseInstallationsRegistrar;
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

.method public static synthetic a(Lb2/t;)Ll2/d;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/installations/FirebaseInstallationsRegistrar;->lambda$getComponents$0(Lb2/d;)Ll2/d;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getComponents$0(Lb2/d;)Ll2/d;
    .locals 4

    new-instance v0, Ll2/c;

    const-class v1, LW1/g;

    invoke-interface {p0, v1}, Lb2/d;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LW1/g;

    const-class v2, Ls2/b;

    invoke-interface {p0, v2}, Lb2/d;->b(Ljava/lang/Class;)Lk2/a;

    move-result-object v2

    const-class v3, Li2/b;

    invoke-interface {p0, v3}, Lb2/d;->b(Ljava/lang/Class;)Lk2/a;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Ll2/c;-><init>(LW1/g;Lk2/a;Lk2/a;)V

    return-object v0
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

    const-class p0, Ll2/d;

    invoke-static {p0}, Lb2/c;->a(Ljava/lang/Class;)Lb2/b;

    move-result-object p0

    new-instance v0, Lb2/l;

    const-class v1, LW1/g;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lb2/l;-><init>(IILjava/lang/Class;)V

    invoke-virtual {p0, v0}, Lb2/b;->a(Lb2/l;)V

    new-instance v0, Lb2/l;

    const-class v1, Li2/b;

    invoke-direct {v0, v3, v2, v1}, Lb2/l;-><init>(IILjava/lang/Class;)V

    invoke-virtual {p0, v0}, Lb2/b;->a(Lb2/l;)V

    new-instance v0, Lb2/l;

    const-class v1, Ls2/b;

    invoke-direct {v0, v3, v2, v1}, Lb2/l;-><init>(IILjava/lang/Class;)V

    invoke-virtual {p0, v0}, Lb2/b;->a(Lb2/l;)V

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/whatsnew/a;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/enabler/ui/whatsnew/a;-><init>(I)V

    iput-object v0, p0, Lb2/b;->f:Ljava/lang/Object;

    invoke-virtual {p0}, Lb2/b;->b()Lb2/c;

    move-result-object p0

    const-string v0, "fire-installations"

    const-string v1, "17.0.0"

    invoke-static {v0, v1}, Lo3/f;->c(Ljava/lang/String;Ljava/lang/String;)Lb2/c;

    move-result-object v0

    filled-new-array {p0, v0}, [Lb2/c;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
