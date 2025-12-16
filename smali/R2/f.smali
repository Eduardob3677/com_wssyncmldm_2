.class public abstract LR2/f;
.super Ljava/util/AbstractSet;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;
.implements Le3/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract l()I
.end method

.method public final bridge size()I
    .locals 0

    invoke-virtual {p0}, LR2/f;->l()I

    move-result p0

    return p0
.end method
