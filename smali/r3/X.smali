.class public final Lr3/X;
.super Lr3/f0;
.source "SourceFile"


# static fields
.field public static final c:Lr3/X;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lr3/X;

    const-string v1, "invisible_fake"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr3/f0;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lr3/X;->c:Lr3/X;

    return-void
.end method
