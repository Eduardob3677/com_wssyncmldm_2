.class public final Lo3/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Lo3/b;

.field public static final b:LQ2/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo3/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo3/b;->a:Lo3/b;

    sget-object v0, Lo3/a;->d:Lo3/a;

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lf1/a;->U(ILc3/a;)LQ2/c;

    move-result-object v0

    sput-object v0, Lo3/b;->b:LQ2/c;

    return-void
.end method
