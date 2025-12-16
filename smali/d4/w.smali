.class public abstract Ld4/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LQ3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LQ3/c;

    const-string v1, "kotlin.suspend"

    invoke-direct {v0, v1}, LQ3/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Ld4/w;->a:LQ3/c;

    new-instance v0, LQ3/a;

    sget-object v1, Lo3/n;->j:LQ3/c;

    const-string v2, "suspend"

    invoke-static {v2}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object v2

    invoke-direct {v0, v1, v2}, LQ3/a;-><init>(LQ3/c;LQ3/f;)V

    return-void
.end method
