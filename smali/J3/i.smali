.class public final LJ3/i;
.super LJ3/l;
.source "SourceFile"


# instance fields
.field public final i:LJ3/l;


# direct methods
.method public constructor <init>(LJ3/l;)V
    .locals 1

    const-string v0, "elementType"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ3/i;->i:LJ3/l;

    return-void
.end method
