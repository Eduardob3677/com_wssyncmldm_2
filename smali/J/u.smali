.class public final synthetic LJ/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LI/a;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:LJ/w;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;LJ/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ/u;->a:Landroid/view/View;

    iput-object p2, p0, LJ/u;->b:LJ/w;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, LJ/y;

    iget-object v0, p0, LJ/u;->a:Landroid/view/View;

    iget-object p0, p0, LJ/u;->b:LJ/w;

    invoke-virtual {p1, v0, p0}, LJ/y;->a(Landroid/view/View;LJ/w;)V

    return-void
.end method
