.class public Lcom/google/android/datatransport/cct/CctBackendFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(LM0/c;)LM0/g;
    .locals 2

    new-instance p0, LJ0/c;

    move-object v0, p1

    check-cast v0, LM0/b;

    iget-object v0, v0, LM0/b;->a:Landroid/content/Context;

    check-cast p1, LM0/b;

    iget-object v1, p1, LM0/b;->b:LT0/b;

    iget-object p1, p1, LM0/b;->c:LT0/b;

    invoke-direct {p0, v0, v1, p1}, LJ0/c;-><init>(Landroid/content/Context;LT0/b;LT0/b;)V

    return-object p0
.end method
