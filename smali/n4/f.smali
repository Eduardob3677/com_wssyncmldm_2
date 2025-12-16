.class public final Ln4/f;
.super Ln4/g;
.source "SourceFile"


# static fields
.field public static final b:Ln4/f;

.field public static final c:Ln4/f;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Ln4/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ln4/g;-><init>(Z)V

    sput-object v0, Ln4/f;->b:Ln4/f;

    new-instance v0, Ln4/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ln4/g;-><init>(Z)V

    sput-object v0, Ln4/f;->c:Ln4/f;

    return-void
.end method
