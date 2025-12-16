.class public final LE3/v;
.super Li3/x;
.source "SourceFile"


# static fields
.field public static final b:LE3/v;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LE3/v;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Li3/x;-><init>(I)V

    sput-object v0, LE3/v;->b:LE3/v;

    return-void
.end method
