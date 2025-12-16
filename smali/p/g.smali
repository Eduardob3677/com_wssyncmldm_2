.class public final Lp/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lp/g;


# instance fields
.field public volatile a:Ljava/lang/Thread;

.field public volatile b:Lp/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lp/g;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lp/g;->c:Lp/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lp/h;->f:Lp/a;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lp/a;->o(Lp/g;Ljava/lang/Thread;)V

    return-void
.end method
