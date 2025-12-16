.class public final synthetic Lcom/idm/fotaagent/enabler/fumo/policy/checkers/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Checker;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final check()V
    .locals 0

    iget p0, p0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/c;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Policies$ForInstall;->a()V

    return-void

    :pswitch_0
    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Policies$ForDownload;->b()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
