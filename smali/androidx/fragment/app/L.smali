.class public abstract Landroidx/fragment/app/L;
.super Landroidx/fragment/app/J;
.source "SourceFile"


# instance fields
.field public final c:Landroid/app/Activity;

.field public final d:Landroid/content/Context;

.field public final e:Landroid/os/Handler;

.field public final f:Landroidx/fragment/app/a0;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/G;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroidx/fragment/app/a0;

    invoke-direct {v1}, Landroidx/fragment/app/Z;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/L;->f:Landroidx/fragment/app/a0;

    iput-object p1, p0, Landroidx/fragment/app/L;->c:Landroid/app/Activity;

    iput-object p1, p0, Landroidx/fragment/app/L;->d:Landroid/content/Context;

    iput-object v0, p0, Landroidx/fragment/app/L;->e:Landroid/os/Handler;

    return-void
.end method
