.class Landroidx/databinding/ViewDataBinding$OnStartListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/v;


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroidx/databinding/v;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding$OnStartListener;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/H;
        value = .enum Landroidx/lifecycle/p;->ON_START:Landroidx/lifecycle/p;
    .end annotation

    iget-object p0, p0, Landroidx/databinding/ViewDataBinding$OnStartListener;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/databinding/v;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/databinding/v;->executePendingBindings()V

    :cond_0
    return-void
.end method
