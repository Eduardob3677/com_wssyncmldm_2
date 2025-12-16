.class public final synthetic Lcom/idm/fotaagent/enabler/fumo/policy/checkers/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Checker;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager;


# direct methods
.method public synthetic constructor <init>(Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager;I)V
    .locals 0

    iput p2, p0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/b;->a:I

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/b;->b:Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final check()V
    .locals 1

    iget v0, p0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/b;->a:I

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/b;->b:Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Policies$ForInstall;->b(Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager;)V

    return-void

    :pswitch_0
    invoke-static {p0}, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Policies$ForDownload;->a(Lcom/idm/fotaagent/enabler/fumo/policy/afw/AfWManager;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
