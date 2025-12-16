.class public final LJ/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:LJ/q;


# direct methods
.method public constructor <init>(Landroid/view/View;LJ/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, LJ/H;->a:LJ/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-static {p2, p1}, LJ/q0;->f(Landroid/view/WindowInsets;Landroid/view/View;)LJ/q0;

    move-result-object p2

    iget-object p0, p0, LJ/H;->a:LJ/q;

    invoke-interface {p0, p1, p2}, LJ/q;->Y(Landroid/view/View;LJ/q0;)LJ/q0;

    move-result-object p0

    invoke-virtual {p0}, LJ/q0;->e()Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method
