.class public Lcom/google/firebase/datatransport/TransportRegistrar;
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

.method public static synthetic a(Lb2/t;)LI0/d;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/datatransport/TransportRegistrar;->lambda$getComponents$0(Lb2/d;)LI0/d;

    move-result-object p0

    return-object p0
.end method

.method private static lambda$getComponents$0(Lb2/d;)LI0/d;
    .locals 7

    const-class v0, Landroid/content/Context;

    invoke-interface {p0, v0}, Lb2/d;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, LL0/k;->b(Landroid/content/Context;)V

    invoke-static {}, LL0/k;->a()LL0/k;

    move-result-object p0

    sget-object v0, LJ0/a;->e:LJ0/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LL0/j;

    instance-of v2, v0, LL0/e;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, LJ0/a;->d:Ljava/util/Set;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v2, LI0/b;

    const-string v3, "proto"

    invoke-direct {v2, v3}, LI0/b;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    :goto_0
    invoke-static {}, LL0/b;->a()LJ/r0;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "cct"

    invoke-virtual {v3, v4}, LJ/r0;->o(Ljava/lang/String;)V

    iget-object v4, v0, LJ0/a;->a:Ljava/lang/String;

    iget-object v0, v0, LJ0/a;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    if-nez v4, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "1$"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\\"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    :goto_1
    iput-object v0, v3, LJ/r0;->d:Ljava/lang/Object;

    invoke-virtual {v3}, LJ/r0;->b()LL0/b;

    move-result-object v0

    invoke-direct {v1, v2, v0, p0}, LL0/j;-><init>(Ljava/util/Set;LL0/b;LL0/k;)V

    return-object v1
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

    const-class p0, LI0/d;

    invoke-static {p0}, Lb2/c;->a(Ljava/lang/Class;)Lb2/b;

    move-result-object p0

    new-instance v0, Lb2/l;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lb2/l;-><init>(IILjava/lang/Class;)V

    invoke-virtual {p0, v0}, Lb2/b;->a(Lb2/l;)V

    new-instance v0, LE2/a;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, LE2/a;-><init>(I)V

    iput-object v0, p0, Lb2/b;->f:Ljava/lang/Object;

    invoke-virtual {p0}, Lb2/b;->b()Lb2/c;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
