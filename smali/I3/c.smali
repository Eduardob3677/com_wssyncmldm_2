.class public final LI3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ/b0;


# instance fields
.field public a:Z

.field public b:I

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ActionBarContextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI3/c;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, LI3/c;->a:Z

    return-void
.end method

.method public constructor <init>(Lh4/z;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI3/c;->c:Ljava/lang/Object;

    iput p2, p0, LI3/c;->b:I

    iput-boolean p3, p0, LI3/c;->a:Z

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    iget-boolean v0, p0, LI3/c;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LI3/c;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/widget/ActionBarContextView;->h:LJ/a0;

    iget p0, p0, LI3/c;->b:I

    invoke-static {v0, p0}, Landroidx/appcompat/widget/ActionBarContextView;->b(Landroidx/appcompat/widget/ActionBarContextView;I)V

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LI3/c;->a:Z

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, LI3/c;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v0}, Landroidx/appcompat/widget/ActionBarContextView;->a(Landroidx/appcompat/widget/ActionBarContextView;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, LI3/c;->a:Z

    return-void
.end method
