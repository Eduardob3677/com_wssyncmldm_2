.class public final Lh4/G;
.super Ln4/d;
.source "SourceFile"


# static fields
.field public static final d:Le/v;

.field public static final e:Lh4/G;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/v;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Le/v;-><init>(I)V

    sput-object v0, Lh4/G;->d:Le/v;

    new-instance v0, Lh4/G;

    sget-object v1, LR2/u;->c:LR2/u;

    invoke-direct {v0, v1}, Lh4/G;-><init>(Ljava/util/List;)V

    sput-object v0, Lh4/G;->e:Lh4/G;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 6

    sget-object v0, Ln4/k;->c:Ln4/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ln4/d;->c:Ln4/a;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh4/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ld3/q;->a:Ld3/r;

    const-class v2, Lh4/h;

    invoke-virtual {v1, v2}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object v1

    sget-object v2, Lh4/G;->d:Le/v;

    invoke-virtual {v2, v1}, Le/v;->p(Li3/c;)I

    move-result v1

    iget-object v2, p0, Ln4/d;->c:Ln4/a;

    invoke-virtual {v2}, Ln4/a;->l()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Ln4/d;->c:Ln4/a;

    const-string v3, "null cannot be cast to non-null type org.jetbrains.kotlin.util.OneElementArrayMap<T of org.jetbrains.kotlin.util.AttributeArrayOwner>"

    invoke-static {v3, v2}, Ld3/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v2, Ln4/q;

    iget v3, v2, Ln4/q;->d:I

    if-ne v3, v1, :cond_1

    new-instance v2, Ln4/q;

    invoke-direct {v2, v0, v1}, Ln4/q;-><init>(Lh4/h;I)V

    iput-object v2, p0, Ln4/d;->c:Ln4/a;

    goto :goto_0

    :cond_1
    new-instance v4, Ln4/c;

    const/16 v5, 0x14

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v5, v4, Ln4/c;->c:[Ljava/lang/Object;

    const/4 v5, 0x0

    iput v5, v4, Ln4/c;->d:I

    iput-object v4, p0, Ln4/d;->c:Ln4/a;

    iget-object v2, v2, Ln4/q;->c:Ljava/lang/Object;

    invoke-virtual {v4, v3, v2}, Ln4/c;->m(ILjava/lang/Object;)V

    :goto_1
    iget-object v2, p0, Ln4/d;->c:Ln4/a;

    invoke-virtual {v2, v1, v0}, Ln4/a;->m(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v2, Ln4/q;

    invoke-direct {v2, v0, v1}, Ln4/q;-><init>(Lh4/h;I)V

    iput-object v2, p0, Ln4/d;->c:Ln4/a;

    goto :goto_0

    :cond_3
    return-void
.end method
