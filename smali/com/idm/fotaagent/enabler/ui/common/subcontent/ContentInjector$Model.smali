.class public abstract Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Model"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model$TitleAndBullets;,
        Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model$TopMargin;
    }
.end annotation


# instance fields
.field private final body:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model;->body:Ljava/lang/CharSequence;

    return-void
.end method

.method public static synthetic access$100(Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model;)Z
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model;->inflateTo(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private inflateTo(Landroid/view/ViewGroup;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model;->getLayoutId()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model;->populateTo(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "contentView should not be null (container.getChildCount(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private isEmpty()Z
    .locals 0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model;->getBody()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final getBody()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model;->body:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public abstract getLayoutId()I
.end method

.method public abstract populateTo(Landroid/view/View;)V
.end method
