.class public abstract Lcom/idm/fotaagent/enabler/ui/whatsnew/Description;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/ui/whatsnew/Description$ForSummary;,
        Lcom/idm/fotaagent/enabler/ui/whatsnew/Description$ForMain;
    }
.end annotation


# instance fields
.field protected final content:Lcom/idm/fotaagent/enabler/ui/DescriptionContent;


# direct methods
.method public constructor <init>(Lcom/idm/fotaagent/enabler/ui/DescriptionContent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/whatsnew/Description;->content:Lcom/idm/fotaagent/enabler/ui/DescriptionContent;

    return-void
.end method


# virtual methods
.method public abstract get(Landroid/content/Context;)Ljava/lang/CharSequence;
.end method
