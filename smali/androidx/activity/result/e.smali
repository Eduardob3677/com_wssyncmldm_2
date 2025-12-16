.class public final Landroidx/activity/result/e;
.super Landroidx/activity/result/c;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lb/a;

.field public final synthetic c:Landroidx/activity/result/h;


# direct methods
.method public constructor <init>(Landroidx/activity/result/h;Ljava/lang/String;Lb/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/result/e;->c:Landroidx/activity/result/h;

    iput-object p2, p0, Landroidx/activity/result/e;->a:Ljava/lang/String;

    iput-object p3, p0, Landroidx/activity/result/e;->b:Lb/a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Landroidx/activity/result/e;->c:Landroidx/activity/result/h;

    iget-object v1, v0, Landroidx/activity/result/h;->b:Ljava/util/HashMap;

    iget-object v2, p0, Landroidx/activity/result/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object p0, p0, Landroidx/activity/result/e;->b:Lb/a;

    if-eqz v1, :cond_0

    iget-object v3, v0, Landroidx/activity/result/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p0, p1}, Landroidx/activity/result/h;->b(ILb/a;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    iget-object p1, v0, Landroidx/activity/result/h;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    throw p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempting to launch an unregistered ActivityResultLauncher with contract "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " and input "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ". You must ensure the ActivityResultLauncher is registered before calling launch()."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Landroidx/activity/result/e;->c:Landroidx/activity/result/h;

    iget-object p0, p0, Landroidx/activity/result/e;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroidx/activity/result/h;->f(Ljava/lang/String;)V

    return-void
.end method
