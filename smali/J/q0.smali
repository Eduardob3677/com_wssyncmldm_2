.class public final LJ/q0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:LJ/q0;


# instance fields
.field public final a:LJ/o0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, LJ/n0;->f:LJ/q0;

    sput-object v0, LJ/q0;->b:LJ/q0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LJ/o0;

    invoke-direct {v0, p0}, LJ/o0;-><init>(LJ/q0;)V

    iput-object v0, p0, LJ/q0;->a:LJ/o0;

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsets;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LJ/n0;

    invoke-direct {v0, p0, p1}, LJ/n0;-><init>(LJ/q0;Landroid/view/WindowInsets;)V

    iput-object v0, p0, LJ/q0;->a:LJ/o0;

    return-void
.end method

.method public static f(Landroid/view/WindowInsets;Landroid/view/View;)LJ/q0;
    .locals 2

    new-instance v0, LJ/q0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0}, LJ/q0;-><init>(Landroid/view/WindowInsets;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, LJ/Q;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, LJ/J;->a(Landroid/view/View;)LJ/q0;

    move-result-object p0

    iget-object v1, v0, LJ/q0;->a:LJ/o0;

    invoke-virtual {v1, p0}, LJ/o0;->m(LJ/q0;)V

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v1, p0}, LJ/o0;->d(Landroid/view/View;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget-object p0, p0, LJ/q0;->a:LJ/o0;

    invoke-virtual {p0}, LJ/o0;->h()LB/c;

    move-result-object p0

    iget p0, p0, LB/c;->d:I

    return p0
.end method

.method public final b()I
    .locals 0

    iget-object p0, p0, LJ/q0;->a:LJ/o0;

    invoke-virtual {p0}, LJ/o0;->h()LB/c;

    move-result-object p0

    iget p0, p0, LB/c;->a:I

    return p0
.end method

.method public final c()I
    .locals 0

    iget-object p0, p0, LJ/q0;->a:LJ/o0;

    invoke-virtual {p0}, LJ/o0;->h()LB/c;

    move-result-object p0

    iget p0, p0, LB/c;->c:I

    return p0
.end method

.method public final d()I
    .locals 0

    iget-object p0, p0, LJ/q0;->a:LJ/o0;

    invoke-virtual {p0}, LJ/o0;->h()LB/c;

    move-result-object p0

    iget p0, p0, LB/c;->b:I

    return p0
.end method

.method public final e()Landroid/view/WindowInsets;
    .locals 1

    iget-object p0, p0, LJ/q0;->a:LJ/o0;

    instance-of v0, p0, LJ/j0;

    if-eqz v0, :cond_0

    check-cast p0, LJ/j0;

    iget-object p0, p0, LJ/j0;->c:Landroid/view/WindowInsets;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, LJ/q0;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, LJ/q0;

    iget-object p1, p1, LJ/q0;->a:LJ/o0;

    iget-object p0, p0, LJ/q0;->a:LJ/o0;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, LJ/q0;->a:LJ/o0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LJ/o0;->hashCode()I

    move-result p0

    :goto_0
    return p0
.end method
