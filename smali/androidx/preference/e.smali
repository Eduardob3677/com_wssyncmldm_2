.class public final Landroidx/preference/e;
.super Landroidx/preference/Preference;
.source "SourceFile"


# instance fields
.field public X:J


# virtual methods
.method public final e()J
    .locals 2

    iget-wide v0, p0, Landroidx/preference/e;->X:J

    return-wide v0
.end method

.method public final n(Landroidx/preference/H;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/preference/Preference;->n(Landroidx/preference/H;)V

    const/4 p0, 0x0

    iput-boolean p0, p1, Landroidx/preference/H;->y:Z

    return-void
.end method
