.class public final LL2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Ljava/lang/String;

.field public final g:LB1/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LL2/a;->b:Ljava/lang/String;

    iput-object v0, p0, LL2/a;->c:Ljava/lang/String;

    iput-object v0, p0, LL2/a;->d:Ljava/lang/String;

    iput-object v0, p0, LL2/a;->f:Ljava/lang/String;

    iput-object p1, p0, LL2/a;->a:Landroid/content/Context;

    const/4 v1, 0x0

    iput-boolean v1, p0, LL2/a;->e:Z

    invoke-static {p1}, LL2/b;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, LL2/a;->c:Ljava/lang/String;

    invoke-static {p1}, LN2/a;->a(Landroid/content/Context;)I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    new-instance p1, LB1/c;

    invoke-direct {p1}, LB1/c;-><init>()V

    iput-boolean v1, p1, LB1/c;->d:Z

    iput-object v0, p1, LB1/c;->e:Ljava/lang/Object;

    iput-object p1, p0, LL2/a;->g:LB1/c;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    const-string v0, "S"

    iput-object v0, p0, LL2/a;->d:Ljava/lang/String;

    iget-object v1, p0, LL2/a;->a:Landroid/content/Context;

    invoke-static {v1}, LN2/a;->a(Landroid/content/Context;)I

    move-result v1

    const-string v2, "D"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_4

    iget-object v1, p0, LL2/a;->d:Ljava/lang/String;

    iget-object p0, p0, LL2/a;->g:LB1/c;

    iput-object v1, p0, LB1/c;->e:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v5, "Y"

    if-eqz v0, :cond_0

    iput-object v5, p0, LB1/c;->e:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, LB1/c;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, LB1/c;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, LB1/c;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, LN2/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Wrong agreement : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, LB1/c;->d:Z

    goto :goto_2

    :cond_2
    :goto_0
    iput-boolean v4, p0, LB1/c;->d:Z

    goto :goto_2

    :cond_3
    sget-object v0, LN2/a;->a:Ljava/lang/String;

    const-string v1, "Empty agreement"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, LB1/c;->d:Z

    goto :goto_2

    :cond_4
    iget-object v1, p0, LL2/a;->d:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, LL2/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    iput-boolean v3, p0, LL2/a;->e:Z

    goto :goto_2

    :cond_6
    :goto_1
    iput-boolean v4, p0, LL2/a;->e:Z

    :goto_2
    return-void
.end method
