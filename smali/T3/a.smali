.class public final LT3/a;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/c;


# instance fields
.field public final synthetic d:Lr3/b;

.field public final synthetic e:Lr3/b;


# direct methods
.method public constructor <init>(Lr3/b;Lr3/b;)V
    .locals 0

    iput-object p1, p0, LT3/a;->d:Lr3/b;

    iput-object p2, p0, LT3/a;->e:Lr3/b;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lr3/j;

    check-cast p2, Lr3/j;

    iget-object v0, p0, LT3/a;->d:Lr3/b;

    invoke-static {p1, v0}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, LT3/a;->e:Lr3/b;

    invoke-static {p2, p0}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
