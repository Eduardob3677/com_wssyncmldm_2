.class public final Lu3/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc3/a;


# instance fields
.field public final synthetic c:Lg4/o;

.field public final synthetic d:Lr3/O;

.field public final synthetic e:Lu3/j;


# direct methods
.method public constructor <init>(Lu3/j;Lg4/o;Lr3/O;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu3/f;->e:Lu3/j;

    iput-object p2, p0, Lu3/f;->c:Lg4/o;

    iput-object p3, p0, Lu3/f;->d:Lr3/O;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lu3/i;

    iget-object v1, p0, Lu3/f;->d:Lr3/O;

    iget-object v2, p0, Lu3/f;->e:Lu3/j;

    iget-object p0, p0, Lu3/f;->c:Lg4/o;

    invoke-direct {v0, v2, p0, v1}, Lu3/i;-><init>(Lu3/j;Lg4/o;Lr3/O;)V

    return-object v0
.end method
