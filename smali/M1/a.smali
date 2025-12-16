.class public final LM1/a;
.super LZ0/j;
.source "SourceFile"


# instance fields
.field public final b:Landroid/graphics/Typeface;

.field public final c:Ls2/c;

.field public d:Z


# direct methods
.method public constructor <init>(Ls2/c;Landroid/graphics/Typeface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LM1/a;->b:Landroid/graphics/Typeface;

    iput-object p1, p0, LM1/a;->c:Ls2/c;

    return-void
.end method


# virtual methods
.method public final W(I)V
    .locals 0

    iget-boolean p1, p0, LM1/a;->d:Z

    if-nez p1, :cond_0

    iget-object p1, p0, LM1/a;->c:Ls2/c;

    iget-object p1, p1, Ls2/c;->c:Ljava/lang/Object;

    check-cast p1, LJ1/b;

    iget-object p0, p0, LM1/a;->b:Landroid/graphics/Typeface;

    invoke-virtual {p1, p0}, LJ1/b;->j(Landroid/graphics/Typeface;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, LJ1/b;->h(Z)V

    :cond_0
    return-void
.end method

.method public final X(Landroid/graphics/Typeface;Z)V
    .locals 0

    iget-boolean p2, p0, LM1/a;->d:Z

    if-nez p2, :cond_0

    iget-object p0, p0, LM1/a;->c:Ls2/c;

    iget-object p0, p0, Ls2/c;->c:Ljava/lang/Object;

    check-cast p0, LJ1/b;

    invoke-virtual {p0, p1}, LJ1/b;->j(Landroid/graphics/Typeface;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, LJ1/b;->h(Z)V

    :cond_0
    return-void
.end method
