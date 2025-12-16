.class public abstract Lr3/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LS2/e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LS2/e;

    invoke-direct {v0}, LS2/e;-><init>()V

    sget-object v1, Lr3/a0;->c:Lr3/a0;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, LS2/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lr3/Z;->c:Lr3/Z;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LS2/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lr3/W;->c:Lr3/W;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, LS2/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lr3/b0;->c:Lr3/b0;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, LS2/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lr3/c0;->c:Lr3/c0;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, LS2/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, LS2/e;->c()V

    iput-boolean v2, v0, LS2/e;->n:Z

    sput-object v0, Lr3/e0;->a:LS2/e;

    return-void
.end method
