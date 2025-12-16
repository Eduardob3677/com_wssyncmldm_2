.class public final Lr3/Y;
.super Lr3/f0;
.source "SourceFile"


# static fields
.field public static final c:Lr3/Y;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lr3/Y;

    const-string v1, "local"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr3/f0;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lr3/Y;->c:Lr3/Y;

    return-void
.end method
