.class public final Ln4/v;
.super Ln4/w;
.source "SourceFile"


# static fields
.field public static final c:Ln4/v;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ln4/v;

    sget-object v1, Ln4/h;->m:Ln4/h;

    const-string v2, "Unit"

    invoke-direct {v0, v2, v1}, Ln4/w;-><init>(Ljava/lang/String;Lc3/b;)V

    sput-object v0, Ln4/v;->c:Ln4/v;

    return-void
.end method
