.class synthetic Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$idm$fotaagent$receiver$dynamic$ReceiverToBeSpecifiedFlag$Property:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;->values()[Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$1;->$SwitchMap$com$idm$fotaagent$receiver$dynamic$ReceiverToBeSpecifiedFlag$Property:[I

    :try_start_0
    sget-object v1, Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;->EXPORT:Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$1;->$SwitchMap$com$idm$fotaagent$receiver$dynamic$ReceiverToBeSpecifiedFlag$Property:[I

    sget-object v1, Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;->NOT_EXPORT:Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$1;->$SwitchMap$com$idm$fotaagent$receiver$dynamic$ReceiverToBeSpecifiedFlag$Property:[I

    sget-object v1, Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;->NOT_SPECIFY_FOR_SYSTEM:Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
