.class public final Lm3/p;
.super Lm3/o;
.source "SourceFile"

# interfaces
.implements Lm3/d;


# instance fields
.field public final g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "method"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lm3/o;-><init>(Ljava/lang/reflect/Method;ZI)V

    iput-object p2, p0, Lm3/p;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final i([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {p0, p1}, LW1/a;->j(Lm3/e;[Ljava/lang/Object;)V

    iget-object v0, p0, Lm3/p;->g:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lm3/o;->c(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
