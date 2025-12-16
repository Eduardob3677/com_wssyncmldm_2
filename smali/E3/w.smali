.class public final LE3/w;
.super Li3/x;
.source "SourceFile"


# static fields
.field public static final b:LE3/w;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LE3/w;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Li3/x;-><init>(I)V

    sput-object v0, LE3/w;->b:LE3/w;

    return-void
.end method
