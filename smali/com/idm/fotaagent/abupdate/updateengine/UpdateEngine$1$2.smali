.class Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$1;->onPayloadApplicationComplete(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$1;

.field final synthetic val$errorCode:I


# direct methods
.method public constructor <init>(Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$1;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$1$2;->this$1:Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$1;

    iput p2, p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$1$2;->val$errorCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$1$2;->this$1:Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$1;

    iget-object v0, v0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$1;->val$callback:Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngineCallback;

    iget p0, p0, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$1$2;->val$errorCode:I

    invoke-virtual {v0, p0}, Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngineCallback;->setResultCode(I)V

    return-void
.end method
