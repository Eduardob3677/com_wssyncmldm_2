.class public final LT3/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc3/b;


# instance fields
.field public final synthetic c:Lf1/a;

.field public final synthetic d:Lr3/c;


# direct methods
.method public constructor <init>(Lf1/a;Lr3/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT3/l;->c:Lf1/a;

    iput-object p2, p0, LT3/l;->d:Lr3/c;

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lr3/c;

    iget-object v0, p0, LT3/l;->c:Lf1/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "first"

    iget-object p0, p0, LT3/l;->d:Lr3/c;

    invoke-static {v1, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "second"

    invoke-static {v1, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p0, p1}, Lf1/a;->d(Lr3/c;Lr3/c;)V

    sget-object p0, LQ2/k;->a:LQ2/k;

    return-object p0
.end method
