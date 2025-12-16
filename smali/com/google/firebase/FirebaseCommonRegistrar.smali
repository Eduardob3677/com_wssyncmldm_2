.class public Lcom/google/firebase/FirebaseCommonRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb2/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x20

    const/16 v1, 0x5f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getComponents()Ljava/util/List;
    .locals 6

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-class v0, Ls2/b;

    invoke-static {v0}, Lb2/c;->a(Ljava/lang/Class;)Lb2/b;

    move-result-object v0

    new-instance v1, Lb2/l;

    const-class v2, Ls2/a;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2}, Lb2/l;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v0, v1}, Lb2/b;->a(Lb2/l;)V

    new-instance v1, Lcom/idm/fotaagent/enabler/ui/whatsnew/a;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lcom/idm/fotaagent/enabler/ui/whatsnew/a;-><init>(I)V

    iput-object v1, v0, Lb2/b;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Lb2/b;->b()Lb2/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v0, Li2/b;

    invoke-static {v0}, Lb2/c;->a(Ljava/lang/Class;)Lb2/b;

    move-result-object v0

    new-instance v1, Lb2/l;

    const/4 v2, 0x1

    const-class v5, Landroid/content/Context;

    invoke-direct {v1, v2, v4, v5}, Lb2/l;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v0, v1}, Lb2/b;->a(Lb2/l;)V

    new-instance v1, Lb2/l;

    const-class v2, Li2/c;

    invoke-direct {v1, v3, v4, v2}, Lb2/l;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v0, v1}, Lb2/b;->a(Lb2/l;)V

    new-instance v1, Lcom/idm/fotaagent/enabler/ui/whatsnew/a;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/idm/fotaagent/enabler/ui/whatsnew/a;-><init>(I)V

    iput-object v1, v0, Lb2/b;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Lb2/b;->b()Lb2/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fire-android"

    invoke-static {v1, v0}, Lo3/f;->c(Ljava/lang/String;Ljava/lang/String;)Lb2/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "fire-core"

    const-string v1, "20.0.0"

    invoke-static {v0, v1}, Lo3/f;->c(Ljava/lang/String;Ljava/lang/String;)Lb2/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/firebase/FirebaseCommonRegistrar;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "device-name"

    invoke-static {v1, v0}, Lo3/f;->c(Ljava/lang/String;Ljava/lang/String;)Lb2/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/firebase/FirebaseCommonRegistrar;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "device-model"

    invoke-static {v1, v0}, Lo3/f;->c(Ljava/lang/String;Ljava/lang/String;)Lb2/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/firebase/FirebaseCommonRegistrar;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "device-brand"

    invoke-static {v1, v0}, Lo3/f;->c(Ljava/lang/String;Ljava/lang/String;)Lb2/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, LE2/a;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, LE2/a;-><init>(I)V

    const-string v1, "android-target-sdk"

    invoke-static {v1, v0}, Lo3/f;->g(Ljava/lang/String;LE2/a;)Lb2/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, LE2/a;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, LE2/a;-><init>(I)V

    const-string v1, "android-min-sdk"

    invoke-static {v1, v0}, Lo3/f;->g(Ljava/lang/String;LE2/a;)Lb2/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, LE2/a;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, LE2/a;-><init>(I)V

    const-string v1, "android-platform"

    invoke-static {v1, v0}, Lo3/f;->g(Ljava/lang/String;LE2/a;)Lb2/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, LE2/a;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, LE2/a;-><init>(I)V

    const-string v1, "android-installer"

    invoke-static {v1, v0}, Lo3/f;->g(Ljava/lang/String;LE2/a;)Lb2/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    sget-object v0, LQ2/b;->f:LQ2/b;

    invoke-virtual {v0}, LQ2/b;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    const-string v1, "kotlin"

    invoke-static {v1, v0}, Lo3/f;->c(Ljava/lang/String;Ljava/lang/String;)Lb2/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method
