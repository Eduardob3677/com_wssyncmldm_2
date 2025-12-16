.class public final Lr3/L;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Lr3/O;

.field public static final synthetic f:[Li3/o;


# instance fields
.field public final a:Lr3/e;

.field public final b:Lc3/b;

.field public final c:Li4/f;

.field public final d:Lg4/i;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ld3/n;

    sget-object v1, Ld3/q;->a:Ld3/r;

    const-class v2, Lr3/L;

    invoke-virtual {v1, v2}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object v2

    const-string v3, "scopeForOwnerModule"

    const-string v4, "getScopeForOwnerModule()Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;"

    invoke-direct {v0, v2, v3, v4}, Ld3/n;-><init>(Li3/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ld3/r;->e(Ld3/n;)Li3/n;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Li3/o;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lr3/L;->f:[Li3/o;

    new-instance v0, Lr3/O;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lr3/O;-><init>(I)V

    sput-object v0, Lr3/L;->e:Lr3/O;

    return-void
.end method

.method public constructor <init>(Lr3/e;Lg4/o;Lc3/b;)V
    .locals 1

    sget-object v0, Li4/f;->a:Li4/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr3/L;->a:Lr3/e;

    iput-object p3, p0, Lr3/L;->b:Lc3/b;

    iput-object v0, p0, Lr3/L;->c:Li4/f;

    new-instance p1, LB3/k;

    const/16 p3, 0x1b

    invoke-direct {p1, p3, p0}, LB3/k;-><init>(ILjava/lang/Object;)V

    check-cast p2, Lg4/l;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lg4/i;

    invoke-direct {p3, p2, p1}, Lg4/i;-><init>(Lg4/l;Lc3/a;)V

    iput-object p3, p0, Lr3/L;->d:Lg4/i;

    return-void
.end method
