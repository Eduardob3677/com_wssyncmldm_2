.class public final Landroidx/databinding/u;
.super Landroidx/databinding/i;
.source "SourceFile"

# interfaces
.implements Landroidx/databinding/m;


# instance fields
.field public final a:Landroidx/databinding/w;


# direct methods
.method public constructor <init>(Landroidx/databinding/v;ILjava/lang/ref/ReferenceQueue;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/databinding/w;

    invoke-direct {v0, p1, p2, p0, p3}, Landroidx/databinding/w;-><init>(Landroidx/databinding/v;ILandroidx/databinding/m;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v0, p0, Landroidx/databinding/u;->a:Landroidx/databinding/w;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroidx/databinding/j;

    invoke-interface {p1, p0}, Landroidx/databinding/j;->addOnPropertyChangedCallback(Landroidx/databinding/i;)V

    return-void
.end method

.method public final b(Landroidx/lifecycle/w;)V
    .locals 0

    return-void
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroidx/databinding/j;

    invoke-interface {p1, p0}, Landroidx/databinding/j;->removeOnPropertyChangedCallback(Landroidx/databinding/i;)V

    return-void
.end method
