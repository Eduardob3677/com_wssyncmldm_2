.class public final Lp/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lp/b;

.field public static final c:Lp/b;


# instance fields
.field public final a:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Lp/h;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sput-object v1, Lp/b;->c:Lp/b;

    sput-object v1, Lp/b;->b:Lp/b;

    goto :goto_0

    :cond_0
    new-instance v0, Lp/b;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lp/b;-><init>(Ljava/lang/Throwable;Z)V

    sput-object v0, Lp/b;->c:Lp/b;

    new-instance v0, Lp/b;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lp/b;-><init>(Ljava/lang/Throwable;Z)V

    sput-object v0, Lp/b;->b:Lp/b;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp/b;->a:Ljava/lang/Throwable;

    return-void
.end method
