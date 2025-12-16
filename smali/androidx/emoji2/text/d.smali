.class public final Landroidx/emoji2/text/d;
.super Lf1/a;
.source "SourceFile"


# instance fields
.field public final synthetic f:Landroidx/emoji2/text/e;


# direct methods
.method public constructor <init>(Landroidx/emoji2/text/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/emoji2/text/d;->f:Landroidx/emoji2/text/e;

    return-void
.end method


# virtual methods
.method public final Z(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Landroidx/emoji2/text/d;->f:Landroidx/emoji2/text/e;

    iget-object p0, p0, Landroidx/emoji2/text/e;->a:Landroidx/emoji2/text/j;

    invoke-virtual {p0, p1}, Landroidx/emoji2/text/j;->d(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a0(Lcom/google/firebase/messaging/p;)V
    .locals 3

    iget-object p0, p0, Landroidx/emoji2/text/d;->f:Landroidx/emoji2/text/e;

    iput-object p1, p0, Landroidx/emoji2/text/e;->c:Lcom/google/firebase/messaging/p;

    new-instance p1, LJ/r0;

    iget-object v0, p0, Landroidx/emoji2/text/e;->c:Lcom/google/firebase/messaging/p;

    new-instance v1, Le4/d;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Le4/d;-><init>(I)V

    iget-object v2, p0, Landroidx/emoji2/text/e;->a:Landroidx/emoji2/text/j;

    iget-object v2, v2, Landroidx/emoji2/text/j;->h:Landroidx/emoji2/text/c;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p1, LJ/r0;->c:Ljava/lang/Object;

    iput-object v0, p1, LJ/r0;->d:Ljava/lang/Object;

    iput-object v2, p1, LJ/r0;->e:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/emoji2/text/e;->b:LJ/r0;

    iget-object p0, p0, Landroidx/emoji2/text/e;->a:Landroidx/emoji2/text/j;

    invoke-virtual {p0}, Landroidx/emoji2/text/j;->e()V

    return-void
.end method
