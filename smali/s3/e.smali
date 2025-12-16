.class public abstract Ls3/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LQ3/f;

.field public static final b:LQ3/f;

.field public static final c:LQ3/f;

.field public static final d:LQ3/f;

.field public static final e:LQ3/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "message"

    invoke-static {v0}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object v0

    sput-object v0, Ls3/e;->a:LQ3/f;

    const-string v0, "replaceWith"

    invoke-static {v0}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object v0

    sput-object v0, Ls3/e;->b:LQ3/f;

    const-string v0, "level"

    invoke-static {v0}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object v0

    sput-object v0, Ls3/e;->c:LQ3/f;

    const-string v0, "expression"

    invoke-static {v0}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object v0

    sput-object v0, Ls3/e;->d:LQ3/f;

    const-string v0, "imports"

    invoke-static {v0}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object v0

    sput-object v0, Ls3/e;->e:LQ3/f;

    return-void
.end method
