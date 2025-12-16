.class public final synthetic LJ/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/u;


# instance fields
.field public final synthetic a:LJ/j;

.field public final synthetic b:LJ/l;


# direct methods
.method public synthetic constructor <init>(LJ/j;LJ/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ/h;->a:LJ/j;

    iput-object p2, p0, LJ/h;->b:LJ/l;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/w;Landroidx/lifecycle/p;)V
    .locals 1

    sget-object p1, Landroidx/lifecycle/p;->ON_DESTROY:Landroidx/lifecycle/p;

    iget-object v0, p0, LJ/h;->a:LJ/j;

    if-ne p2, p1, :cond_0

    iget-object p0, p0, LJ/h;->b:LJ/l;

    invoke-virtual {v0, p0}, LJ/j;->c(LJ/l;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    return-void
.end method
