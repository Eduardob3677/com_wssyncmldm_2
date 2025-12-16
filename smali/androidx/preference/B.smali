.class public final Landroidx/preference/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/o;


# instance fields
.field public final synthetic a:Landroidx/preference/PreferenceGroup;

.field public final synthetic b:Landroidx/preference/D;


# direct methods
.method public constructor <init>(Landroidx/preference/D;Landroidx/preference/PreferenceGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/preference/B;->b:Landroidx/preference/D;

    iput-object p2, p0, Landroidx/preference/B;->a:Landroidx/preference/PreferenceGroup;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/preference/Preference;)Z
    .locals 1

    const p1, 0x7fffffff

    iget-object v0, p0, Landroidx/preference/B;->a:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->H(I)V

    iget-object p0, p0, Landroidx/preference/B;->b:Landroidx/preference/D;

    iget-object p1, p0, Landroidx/preference/D;->i:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/preference/D;->j:Landroidx/preference/t;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0
.end method
