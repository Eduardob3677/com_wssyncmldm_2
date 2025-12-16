.class public final Lo3/e;
.super Lo3/i;
.source "SourceFile"


# static fields
.field public static final f:Lo3/e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lo3/e;

    new-instance v1, Lg4/l;

    const-string v2, "DefaultBuiltIns"

    invoke-direct {v1, v2}, Lg4/l;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lo3/i;-><init>(Lg4/l;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo3/i;->c(Z)V

    sput-object v0, Lo3/e;->f:Lo3/e;

    return-void
.end method
