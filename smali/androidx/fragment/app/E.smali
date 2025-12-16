.class public final synthetic Landroidx/fragment/app/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/b;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/G;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/G;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/E;->a:Landroidx/fragment/app/G;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1

    iget-object p0, p0, Landroidx/fragment/app/E;->a:Landroidx/fragment/app/G;

    iget-object p0, p0, Landroidx/fragment/app/G;->mFragments:Landroidx/fragment/app/K;

    iget-object p0, p0, Landroidx/fragment/app/K;->a:Landroidx/fragment/app/L;

    iget-object p1, p0, Landroidx/fragment/app/L;->f:Landroidx/fragment/app/a0;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, p0, v0}, Landroidx/fragment/app/Z;->b(Landroidx/fragment/app/L;Landroidx/fragment/app/J;Landroidx/fragment/app/Fragment;)V

    return-void
.end method
