.class public final Lz0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly0/a;


# instance fields
.field public final a:Lz0/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;LD3/f;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Lz0/b;

    new-instance v1, Lz0/d;

    invoke-direct {v1, p1, p2, v0, p3}, Lz0/d;-><init>(Landroid/content/Context;Ljava/lang/String;[Lz0/b;LD3/f;)V

    iput-object v1, p0, Lz0/e;->a:Lz0/d;

    return-void
.end method
