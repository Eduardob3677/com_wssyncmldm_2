.class public final Ld4/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/util/Set;


# instance fields
.field public final a:Ld4/i;

.field public final b:Lg4/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lo3/m;->c:LQ3/e;

    invoke-virtual {v0}, LQ3/e;->g()LQ3/c;

    move-result-object v0

    invoke-static {v0}, LQ3/b;->k(LQ3/c;)LQ3/b;

    move-result-object v0

    invoke-static {v0}, LL2/b;->I(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ld4/g;->c:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ld4/i;)V
    .locals 2

    const-string v0, "components"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld4/g;->a:Ld4/i;

    new-instance v0, LA3/d;

    const/16 v1, 0xf

    invoke-direct {v0, v1, p0}, LA3/d;-><init>(ILjava/lang/Object;)V

    iget-object p1, p1, Ld4/i;->a:Lg4/o;

    check-cast p1, Lg4/l;

    invoke-virtual {p1, v0}, Lg4/l;->c(Lc3/b;)Lg4/j;

    move-result-object p1

    iput-object p1, p0, Ld4/g;->b:Lg4/j;

    return-void
.end method


# virtual methods
.method public final a(LQ3/b;Ld4/d;)Lr3/e;
    .locals 1

    const-string v0, "classId"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Ld4/g;->b:Lg4/j;

    new-instance v0, Ld4/f;

    invoke-direct {v0, p1, p2}, Ld4/f;-><init>(LQ3/b;Ld4/d;)V

    invoke-virtual {p0, v0}, Lg4/j;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr3/e;

    return-object p0
.end method
