.class Lcom/idm/fotaagent/enabler/fumo/IntentManager$IntentBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/fumo/IntentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentBuilder"
.end annotation


# instance fields
.field private final intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/IntentManager$IntentBuilder;->intent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public sendBroadcast()V
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/IntentManager;->access$000()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/IntentManager$IntentBuilder;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public setExtra(Ljava/lang/String;I)Lcom/idm/fotaagent/enabler/fumo/IntentManager$IntentBuilder;
    .locals 1

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/IntentManager$IntentBuilder;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p0
.end method

.method public setExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/idm/fotaagent/enabler/fumo/IntentManager$IntentBuilder;
    .locals 1

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/IntentManager$IntentBuilder;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public setFlags(I)Lcom/idm/fotaagent/enabler/fumo/IntentManager$IntentBuilder;
    .locals 1

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/IntentManager$IntentBuilder;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object p0
.end method

.method public setPackage(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/fumo/IntentManager$IntentBuilder;
    .locals 1

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/IntentManager$IntentBuilder;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method
