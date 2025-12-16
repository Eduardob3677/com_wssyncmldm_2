.class public final Lq3/b;
.super Lo3/i;
.source "SourceFile"


# static fields
.field public static final f:Lq3/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lq3/b;

    new-instance v1, Lg4/l;

    const-string v2, "FallbackBuiltIns"

    invoke-direct {v1, v2}, Lg4/l;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lo3/i;-><init>(Lg4/l;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo3/i;->c(Z)V

    sput-object v0, Lq3/b;->f:Lq3/b;

    return-void
.end method


# virtual methods
.method public final bridge synthetic p()Lt3/d;
    .locals 0

    sget-object p0, Lt3/a;->c:Lt3/a;

    return-object p0
.end method
