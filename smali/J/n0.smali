.class public final LJ/n0;
.super LJ/m0;
.source "SourceFile"


# static fields
.field public static final f:LJ/q0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LJ/q0;->f(Landroid/view/WindowInsets;Landroid/view/View;)LJ/q0;

    move-result-object v0

    sput-object v0, LJ/n0;->f:LJ/q0;

    return-void
.end method

.method public constructor <init>(LJ/q0;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LJ/m0;-><init>(LJ/q0;Landroid/view/WindowInsets;)V

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public f(I)LB/c;
    .locals 0

    iget-object p0, p0, LJ/j0;->c:Landroid/view/WindowInsets;

    invoke-static {p1}, LJ/p0;->a(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p0

    invoke-static {p0}, LB/c;->c(Landroid/graphics/Insets;)LB/c;

    move-result-object p0

    return-object p0
.end method
