.class Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/core/syncml/Constants;


# instance fields
.field private add:Lcom/idm/core/syncml/Add;

.field private alert:Lcom/idm/core/syncml/Alert;

.field private atomic:Lcom/idm/core/syncml/Atomic;

.field private bAdd:Z

.field private bAlert:Z

.field private bAtomic:Z

.field private bChal:Z

.field private bCmd:Z

.field private bCmdID:Z

.field private bCmdRef:Z

.field private bCopy:Z

.field private bCorrelator:Z

.field private bCred:Z

.field private bData:Z

.field private bDelete:Z

.field private bExec:Z

.field private bFormat:Z

.field private bGet:Z

.field private bItem:Z

.field private bLocName:Z

.field private bLocURI:Z

.field private bMaxMsgSize:Z

.field private bMaxObjSize:Z

.field private bMsgID:Z

.field private bMsgRef:Z

.field private bNextNonce:Z

.field private bReplace:Z

.field private bRespURI:Z

.field private bResults:Z

.field private bSequence:Z

.field private bSessionID:Z

.field private bSource:Z

.field private bSourceRef:Z

.field private bStatus:Z

.field private bSyncHdr:Z

.field private bTarget:Z

.field private bTargetRef:Z

.field private bType:Z

.field private bVerDTD:Z

.field private bVerProto:Z

.field private chal:Lcom/idm/core/syncml/Chal;

.field private cmd:Ljava/lang/String;

.field private cmdID:Ljava/lang/String;

.field private cmdRef:Ljava/lang/String;

.field private copy:Lcom/idm/core/syncml/Copy;

.field private correlator:Ljava/lang/String;

.field private cred:Lcom/idm/core/syncml/Cred;

.field private data:Ljava/lang/String;

.field private delete:Lcom/idm/core/syncml/Delete;

.field private exec:Lcom/idm/core/syncml/Exec;

.field private get:Lcom/idm/core/syncml/Get;

.field private item:Lcom/idm/core/syncml/Item;

.field private meta:Lcom/idm/core/syncml/Meta;

.field private msgRef:Ljava/lang/String;

.field private replace:Lcom/idm/core/syncml/Replace;

.field private results:Lcom/idm/core/syncml/Results;

.field private sequence:Lcom/idm/core/syncml/Sequence;

.field private source:Lcom/idm/core/syncml/Source;

.field private sourceRef:Ljava/lang/String;

.field private status:Lcom/idm/core/syncml/Status;

.field private syncML:Lcom/idm/core/syncml/SyncML;

.field private target:Lcom/idm/core/syncml/Target;

.field private targetRef:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bSyncHdr:Z

    iput-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bVerDTD:Z

    iput-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bVerProto:Z

    iput-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bSessionID:Z

    iput-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bMsgID:Z

    iput-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bRespURI:Z

    iput-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bTarget:Z

    iput-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bSource:Z

    iput-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bLocURI:Z

    iput-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bLocName:Z

    iput-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bCred:Z

    iput-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bFormat:Z

    iput-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bType:Z

    iput-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bNextNonce:Z

    iput-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bMaxMsgSize:Z

    iput-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bMaxObjSize:Z

    iput-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bAtomic:Z

    iput-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bSequence:Z

    iput-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bAlert:Z

    iput-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bAdd:Z

    iput-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bGet:Z

    iput-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bReplace:Z

    iput-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bExec:Z

    iput-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bCopy:Z

    iput-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bDelete:Z

    iput-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bStatus:Z

    iput-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bChal:Z

    iput-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bResults:Z

    iput-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bItem:Z

    iput-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bData:Z

    iput-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bCmdID:Z

    iput-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bCmd:Z

    iput-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bCorrelator:Z

    iput-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bMsgRef:Z

    iput-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bCmdRef:Z

    iput-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bTargetRef:Z

    iput-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bSourceRef:Z

    new-instance v0, Lcom/idm/core/syncml/SyncML;

    invoke-direct {v0}, Lcom/idm/core/syncml/SyncML;-><init>()V

    iput-object v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->syncML:Lcom/idm/core/syncml/SyncML;

    return-void
.end method


# virtual methods
.method public endTag(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SyncML"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "SYNCML_TAG_SYNCML"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "SyncHdr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bSyncHdr:Z

    goto/16 :goto_0

    :cond_1
    const-string v0, "SyncBody"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "SYNCML_TAG_SYNCBODY"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "VerDTD"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bVerDTD:Z

    goto/16 :goto_0

    :cond_3
    const-string v0, "VerProto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bVerProto:Z

    goto/16 :goto_0

    :cond_4
    const-string v0, "SessionID"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bSessionID:Z

    goto/16 :goto_0

    :cond_5
    const-string v0, "MsgID"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bMsgID:Z

    goto/16 :goto_0

    :cond_6
    const-string v0, "RespURI"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bRespURI:Z

    goto/16 :goto_0

    :cond_7
    const-string v0, "Target"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bTarget:Z

    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bSyncHdr:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->syncML:Lcom/idm/core/syncml/SyncML;

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncML;->getSyncHdr()Lcom/idm/core/syncml/SyncHdr;

    move-result-object p1

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->target:Lcom/idm/core/syncml/Target;

    invoke-virtual {p1, p0}, Lcom/idm/core/syncml/SyncHdr;->setTarget(Lcom/idm/core/syncml/Target;)V

    goto/16 :goto_0

    :cond_8
    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bItem:Z

    if-eqz p1, :cond_5b

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->item:Lcom/idm/core/syncml/Item;

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->target:Lcom/idm/core/syncml/Target;

    invoke-virtual {p1, p0}, Lcom/idm/core/syncml/Item;->setTarget(Lcom/idm/core/syncml/Target;)V

    goto/16 :goto_0

    :cond_9
    const-string v0, "Source"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bSource:Z

    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bSyncHdr:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->syncML:Lcom/idm/core/syncml/SyncML;

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncML;->getSyncHdr()Lcom/idm/core/syncml/SyncHdr;

    move-result-object p1

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->source:Lcom/idm/core/syncml/Source;

    invoke-virtual {p1, p0}, Lcom/idm/core/syncml/SyncHdr;->setSource(Lcom/idm/core/syncml/Source;)V

    goto/16 :goto_0

    :cond_a
    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bItem:Z

    if-eqz p1, :cond_5b

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->item:Lcom/idm/core/syncml/Item;

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->source:Lcom/idm/core/syncml/Source;

    invoke-virtual {p1, p0}, Lcom/idm/core/syncml/Item;->setSource(Lcom/idm/core/syncml/Source;)V

    goto/16 :goto_0

    :cond_b
    const-string v0, "LocURI"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bLocURI:Z

    goto/16 :goto_0

    :cond_c
    const-string v0, "LocName"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bLocName:Z

    goto/16 :goto_0

    :cond_d
    const-string v0, "Cred"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bCred:Z

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->syncML:Lcom/idm/core/syncml/SyncML;

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncML;->getSyncHdr()Lcom/idm/core/syncml/SyncHdr;

    move-result-object p1

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->cred:Lcom/idm/core/syncml/Cred;

    invoke-virtual {p1, p0}, Lcom/idm/core/syncml/SyncHdr;->setCred(Lcom/idm/core/syncml/Cred;)V

    goto/16 :goto_0

    :cond_e
    const-string v0, "Meta"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bCred:Z

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->cred:Lcom/idm/core/syncml/Cred;

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->meta:Lcom/idm/core/syncml/Meta;

    invoke-virtual {p1, p0}, Lcom/idm/core/syncml/Cred;->setMeta(Lcom/idm/core/syncml/Meta;)V

    goto/16 :goto_0

    :cond_f
    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bSyncHdr:Z

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->syncML:Lcom/idm/core/syncml/SyncML;

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncML;->getSyncHdr()Lcom/idm/core/syncml/SyncHdr;

    move-result-object p1

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->meta:Lcom/idm/core/syncml/Meta;

    invoke-virtual {p1, p0}, Lcom/idm/core/syncml/SyncHdr;->setMeta(Lcom/idm/core/syncml/Meta;)V

    goto/16 :goto_0

    :cond_10
    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bItem:Z

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->item:Lcom/idm/core/syncml/Item;

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->meta:Lcom/idm/core/syncml/Meta;

    invoke-virtual {p1, p0}, Lcom/idm/core/syncml/Item;->setMeta(Lcom/idm/core/syncml/Meta;)V

    goto/16 :goto_0

    :cond_11
    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bAdd:Z

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->add:Lcom/idm/core/syncml/Add;

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->meta:Lcom/idm/core/syncml/Meta;

    invoke-virtual {p1, p0}, Lcom/idm/core/syncml/Command;->setMeta(Lcom/idm/core/syncml/Meta;)V

    goto/16 :goto_0

    :cond_12
    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bGet:Z

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->get:Lcom/idm/core/syncml/Get;

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->meta:Lcom/idm/core/syncml/Meta;

    invoke-virtual {p1, p0}, Lcom/idm/core/syncml/Command;->setMeta(Lcom/idm/core/syncml/Meta;)V

    goto/16 :goto_0

    :cond_13
    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bReplace:Z

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->replace:Lcom/idm/core/syncml/Replace;

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->meta:Lcom/idm/core/syncml/Meta;

    invoke-virtual {p1, p0}, Lcom/idm/core/syncml/Command;->setMeta(Lcom/idm/core/syncml/Meta;)V

    goto/16 :goto_0

    :cond_14
    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bExec:Z

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->exec:Lcom/idm/core/syncml/Exec;

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->meta:Lcom/idm/core/syncml/Meta;

    invoke-virtual {p1, p0}, Lcom/idm/core/syncml/Command;->setMeta(Lcom/idm/core/syncml/Meta;)V

    goto/16 :goto_0

    :cond_15
    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bCopy:Z

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->copy:Lcom/idm/core/syncml/Copy;

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->meta:Lcom/idm/core/syncml/Meta;

    invoke-virtual {p1, p0}, Lcom/idm/core/syncml/Command;->setMeta(Lcom/idm/core/syncml/Meta;)V

    goto/16 :goto_0

    :cond_16
    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bDelete:Z

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->delete:Lcom/idm/core/syncml/Delete;

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->meta:Lcom/idm/core/syncml/Meta;

    invoke-virtual {p1, p0}, Lcom/idm/core/syncml/Command;->setMeta(Lcom/idm/core/syncml/Meta;)V

    goto/16 :goto_0

    :cond_17
    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bChal:Z

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->chal:Lcom/idm/core/syncml/Chal;

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->meta:Lcom/idm/core/syncml/Meta;

    invoke-virtual {p1, p0}, Lcom/idm/core/syncml/Chal;->setMeta(Lcom/idm/core/syncml/Meta;)V

    goto/16 :goto_0

    :cond_18
    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bResults:Z

    if-eqz p1, :cond_5b

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->results:Lcom/idm/core/syncml/Results;

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->meta:Lcom/idm/core/syncml/Meta;

    invoke-virtual {p1, p0}, Lcom/idm/core/syncml/Command;->setMeta(Lcom/idm/core/syncml/Meta;)V

    goto/16 :goto_0

    :cond_19
    const-string v0, "Format"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bFormat:Z

    goto/16 :goto_0

    :cond_1a
    const-string v0, "Type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bType:Z

    goto/16 :goto_0

    :cond_1b
    const-string v0, "NextNonce"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bNextNonce:Z

    goto/16 :goto_0

    :cond_1c
    const-string v0, "MaxMsgSize"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bMaxMsgSize:Z

    goto/16 :goto_0

    :cond_1d
    const-string v0, "MaxObjSize"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bMaxObjSize:Z

    goto/16 :goto_0

    :cond_1e
    const-string v0, "Data"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bData:Z

    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bCred:Z

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->cred:Lcom/idm/core/syncml/Cred;

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->data:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/idm/core/syncml/Cred;->setData(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1f
    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bItem:Z

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->item:Lcom/idm/core/syncml/Item;

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->data:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/idm/core/syncml/Item;->setData(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_20
    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bAlert:Z

    if-eqz p1, :cond_21

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->alert:Lcom/idm/core/syncml/Alert;

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->data:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/idm/core/syncml/Alert;->setData(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_21
    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bStatus:Z

    if-eqz p1, :cond_5b

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->status:Lcom/idm/core/syncml/Status;

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->data:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/idm/core/syncml/Status;->setData(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_22
    const-string v0, "CmdID"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bCmdID:Z

    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bAlert:Z

    if-eqz p1, :cond_23

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->alert:Lcom/idm/core/syncml/Alert;

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->cmdID:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/idm/core/syncml/Command;->setCmdID(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_23
    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bAdd:Z

    if-eqz p1, :cond_24

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->add:Lcom/idm/core/syncml/Add;

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->cmdID:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/idm/core/syncml/Command;->setCmdID(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_24
    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bGet:Z

    if-eqz p1, :cond_25

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->get:Lcom/idm/core/syncml/Get;

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->cmdID:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/idm/core/syncml/Command;->setCmdID(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_25
    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bReplace:Z

    if-eqz p1, :cond_26

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->replace:Lcom/idm/core/syncml/Replace;

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->cmdID:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/idm/core/syncml/Command;->setCmdID(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_26
    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bExec:Z

    if-eqz p1, :cond_27

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->exec:Lcom/idm/core/syncml/Exec;

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->cmdID:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/idm/core/syncml/Command;->setCmdID(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_27
    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bCopy:Z

    if-eqz p1, :cond_28

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->copy:Lcom/idm/core/syncml/Copy;

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->cmdID:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/idm/core/syncml/Command;->setCmdID(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_28
    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bDelete:Z

    if-eqz p1, :cond_29

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->delete:Lcom/idm/core/syncml/Delete;

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->cmdID:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/idm/core/syncml/Command;->setCmdID(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_29
    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bStatus:Z

    if-eqz p1, :cond_2a

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->status:Lcom/idm/core/syncml/Status;

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->cmdID:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/idm/core/syncml/Command;->setCmdID(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2a
    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bResults:Z

    if-eqz p1, :cond_5b

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->results:Lcom/idm/core/syncml/Results;

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->cmdID:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/idm/core/syncml/Command;->setCmdID(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2b
    const-string v0, "Atomic"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bAtomic:Z

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->syncML:Lcom/idm/core/syncml/SyncML;

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncML;->getSyncBody()Lcom/idm/core/syncml/SyncBody;

    move-result-object p1

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncBody;->getCommandList()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->atomic:Lcom/idm/core/syncml/Atomic;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2c
    const-string v0, "Sequence"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bSequence:Z

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->syncML:Lcom/idm/core/syncml/SyncML;

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncML;->getSyncBody()Lcom/idm/core/syncml/SyncBody;

    move-result-object p1

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncBody;->getCommandList()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->sequence:Lcom/idm/core/syncml/Sequence;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2d
    const-string v0, "Alert"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bAlert:Z

    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bAtomic:Z

    if-eqz p1, :cond_2e

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->atomic:Lcom/idm/core/syncml/Atomic;

    invoke-virtual {p1}, Lcom/idm/core/syncml/Atomic;->getCommandList()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->alert:Lcom/idm/core/syncml/Alert;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2e
    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bSequence:Z

    if-eqz p1, :cond_2f

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->sequence:Lcom/idm/core/syncml/Sequence;

    invoke-virtual {p1}, Lcom/idm/core/syncml/Sequence;->getCommandList()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->alert:Lcom/idm/core/syncml/Alert;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2f
    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->syncML:Lcom/idm/core/syncml/SyncML;

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncML;->getSyncBody()Lcom/idm/core/syncml/SyncBody;

    move-result-object p1

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncBody;->getCommandList()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->alert:Lcom/idm/core/syncml/Alert;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_30
    const-string v0, "Add"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bAdd:Z

    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bAtomic:Z

    if-eqz p1, :cond_31

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->atomic:Lcom/idm/core/syncml/Atomic;

    invoke-virtual {p1}, Lcom/idm/core/syncml/Atomic;->getCommandList()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->add:Lcom/idm/core/syncml/Add;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_31
    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bSequence:Z

    if-eqz p1, :cond_32

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->sequence:Lcom/idm/core/syncml/Sequence;

    invoke-virtual {p1}, Lcom/idm/core/syncml/Sequence;->getCommandList()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->add:Lcom/idm/core/syncml/Add;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_32
    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->syncML:Lcom/idm/core/syncml/SyncML;

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncML;->getSyncBody()Lcom/idm/core/syncml/SyncBody;

    move-result-object p1

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncBody;->getCommandList()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->add:Lcom/idm/core/syncml/Add;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_33
    const-string v0, "Get"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bGet:Z

    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bAtomic:Z

    if-eqz p1, :cond_34

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->atomic:Lcom/idm/core/syncml/Atomic;

    invoke-virtual {p1}, Lcom/idm/core/syncml/Atomic;->getCommandList()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->get:Lcom/idm/core/syncml/Get;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_34
    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bSequence:Z

    if-eqz p1, :cond_35

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->sequence:Lcom/idm/core/syncml/Sequence;

    invoke-virtual {p1}, Lcom/idm/core/syncml/Sequence;->getCommandList()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->get:Lcom/idm/core/syncml/Get;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_35
    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->syncML:Lcom/idm/core/syncml/SyncML;

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncML;->getSyncBody()Lcom/idm/core/syncml/SyncBody;

    move-result-object p1

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncBody;->getCommandList()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->get:Lcom/idm/core/syncml/Get;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_36
    const-string v0, "Replace"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bReplace:Z

    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bAtomic:Z

    if-eqz p1, :cond_37

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->atomic:Lcom/idm/core/syncml/Atomic;

    invoke-virtual {p1}, Lcom/idm/core/syncml/Atomic;->getCommandList()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->replace:Lcom/idm/core/syncml/Replace;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_37
    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bSequence:Z

    if-eqz p1, :cond_38

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->sequence:Lcom/idm/core/syncml/Sequence;

    invoke-virtual {p1}, Lcom/idm/core/syncml/Sequence;->getCommandList()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->replace:Lcom/idm/core/syncml/Replace;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_38
    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->syncML:Lcom/idm/core/syncml/SyncML;

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncML;->getSyncBody()Lcom/idm/core/syncml/SyncBody;

    move-result-object p1

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncBody;->getCommandList()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->replace:Lcom/idm/core/syncml/Replace;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_39
    const-string v0, "Exec"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bExec:Z

    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bAtomic:Z

    if-eqz p1, :cond_3a

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->atomic:Lcom/idm/core/syncml/Atomic;

    invoke-virtual {p1}, Lcom/idm/core/syncml/Atomic;->getCommandList()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->exec:Lcom/idm/core/syncml/Exec;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3a
    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bSequence:Z

    if-eqz p1, :cond_3b

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->sequence:Lcom/idm/core/syncml/Sequence;

    invoke-virtual {p1}, Lcom/idm/core/syncml/Sequence;->getCommandList()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->exec:Lcom/idm/core/syncml/Exec;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3b
    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->syncML:Lcom/idm/core/syncml/SyncML;

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncML;->getSyncBody()Lcom/idm/core/syncml/SyncBody;

    move-result-object p1

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncBody;->getCommandList()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->exec:Lcom/idm/core/syncml/Exec;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3c
    const-string v0, "Copy"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bCopy:Z

    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bAtomic:Z

    if-eqz p1, :cond_3d

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->atomic:Lcom/idm/core/syncml/Atomic;

    invoke-virtual {p1}, Lcom/idm/core/syncml/Atomic;->getCommandList()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->copy:Lcom/idm/core/syncml/Copy;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3d
    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bSequence:Z

    if-eqz p1, :cond_3e

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->sequence:Lcom/idm/core/syncml/Sequence;

    invoke-virtual {p1}, Lcom/idm/core/syncml/Sequence;->getCommandList()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->copy:Lcom/idm/core/syncml/Copy;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3e
    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->syncML:Lcom/idm/core/syncml/SyncML;

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncML;->getSyncBody()Lcom/idm/core/syncml/SyncBody;

    move-result-object p1

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncBody;->getCommandList()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->copy:Lcom/idm/core/syncml/Copy;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3f
    const-string v0, "Delete"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bDelete:Z

    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bAtomic:Z

    if-eqz p1, :cond_40

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->atomic:Lcom/idm/core/syncml/Atomic;

    invoke-virtual {p1}, Lcom/idm/core/syncml/Atomic;->getCommandList()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->delete:Lcom/idm/core/syncml/Delete;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_40
    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bSequence:Z

    if-eqz p1, :cond_41

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->sequence:Lcom/idm/core/syncml/Sequence;

    invoke-virtual {p1}, Lcom/idm/core/syncml/Sequence;->getCommandList()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->delete:Lcom/idm/core/syncml/Delete;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_41
    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->syncML:Lcom/idm/core/syncml/SyncML;

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncML;->getSyncBody()Lcom/idm/core/syncml/SyncBody;

    move-result-object p1

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncBody;->getCommandList()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->delete:Lcom/idm/core/syncml/Delete;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_42
    const-string v0, "Item"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bItem:Z

    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bAlert:Z

    if-eqz p1, :cond_43

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->alert:Lcom/idm/core/syncml/Alert;

    invoke-virtual {p1}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->item:Lcom/idm/core/syncml/Item;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_43
    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bAdd:Z

    if-eqz p1, :cond_44

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->add:Lcom/idm/core/syncml/Add;

    invoke-virtual {p1}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->item:Lcom/idm/core/syncml/Item;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_44
    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bGet:Z

    if-eqz p1, :cond_45

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->get:Lcom/idm/core/syncml/Get;

    invoke-virtual {p1}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->item:Lcom/idm/core/syncml/Item;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_45
    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bReplace:Z

    if-eqz p1, :cond_46

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->replace:Lcom/idm/core/syncml/Replace;

    invoke-virtual {p1}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->item:Lcom/idm/core/syncml/Item;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_46
    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bExec:Z

    if-eqz p1, :cond_47

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->exec:Lcom/idm/core/syncml/Exec;

    invoke-virtual {p1}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->item:Lcom/idm/core/syncml/Item;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_47
    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bCopy:Z

    if-eqz p1, :cond_48

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->copy:Lcom/idm/core/syncml/Copy;

    invoke-virtual {p1}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->item:Lcom/idm/core/syncml/Item;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_48
    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bDelete:Z

    if-eqz p1, :cond_49

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->delete:Lcom/idm/core/syncml/Delete;

    invoke-virtual {p1}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->item:Lcom/idm/core/syncml/Item;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_49
    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bStatus:Z

    if-eqz p1, :cond_4a

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->status:Lcom/idm/core/syncml/Status;

    invoke-virtual {p1}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->item:Lcom/idm/core/syncml/Item;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4a
    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bResults:Z

    if-eqz p1, :cond_5b

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->results:Lcom/idm/core/syncml/Results;

    invoke-virtual {p1}, Lcom/idm/core/syncml/ItemCommand;->getItemList()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->item:Lcom/idm/core/syncml/Item;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4b
    const-string v0, "MoreData"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4c

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->item:Lcom/idm/core/syncml/Item;

    invoke-virtual {p0, v2}, Lcom/idm/core/syncml/Item;->setMoreData(Z)V

    goto/16 :goto_0

    :cond_4c
    const-string v0, "Correlator"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bCorrelator:Z

    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bAlert:Z

    if-eqz p1, :cond_4d

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->alert:Lcom/idm/core/syncml/Alert;

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->correlator:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/idm/core/syncml/Alert;->setCorrelator(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4d
    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bExec:Z

    if-eqz p1, :cond_5b

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->exec:Lcom/idm/core/syncml/Exec;

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->correlator:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/idm/core/syncml/Exec;->setCorrelator(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4e
    const-string v0, "Status"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bStatus:Z

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->syncML:Lcom/idm/core/syncml/SyncML;

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncML;->getSyncBody()Lcom/idm/core/syncml/SyncBody;

    move-result-object p1

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncBody;->getCommandList()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->status:Lcom/idm/core/syncml/Status;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4f
    const-string v0, "Cmd"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bCmd:Z

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->status:Lcom/idm/core/syncml/Status;

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->cmd:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/idm/core/syncml/Status;->setCmd(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_50
    const-string v0, "Chal"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bChal:Z

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->status:Lcom/idm/core/syncml/Status;

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->chal:Lcom/idm/core/syncml/Chal;

    invoke-virtual {p1, p0}, Lcom/idm/core/syncml/Status;->setChal(Lcom/idm/core/syncml/Chal;)V

    goto/16 :goto_0

    :cond_51
    const-string v0, "Results"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bResults:Z

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->syncML:Lcom/idm/core/syncml/SyncML;

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncML;->getSyncBody()Lcom/idm/core/syncml/SyncBody;

    move-result-object p1

    invoke-virtual {p1}, Lcom/idm/core/syncml/SyncBody;->getCommandList()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->results:Lcom/idm/core/syncml/Results;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_52
    const-string v0, "MsgRef"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bMsgRef:Z

    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bStatus:Z

    if-eqz p1, :cond_53

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->status:Lcom/idm/core/syncml/Status;

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->msgRef:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/idm/core/syncml/ResponseCommand;->setMsgRef(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_53
    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bResults:Z

    if-eqz p1, :cond_5b

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->results:Lcom/idm/core/syncml/Results;

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->msgRef:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/idm/core/syncml/ResponseCommand;->setMsgRef(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_54
    const-string v0, "CmdRef"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bCmdRef:Z

    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bStatus:Z

    if-eqz p1, :cond_55

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->status:Lcom/idm/core/syncml/Status;

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->cmdRef:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/idm/core/syncml/ResponseCommand;->setCmdRef(Ljava/lang/String;)V

    goto :goto_0

    :cond_55
    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bResults:Z

    if-eqz p1, :cond_5b

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->results:Lcom/idm/core/syncml/Results;

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->cmdRef:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/idm/core/syncml/ResponseCommand;->setCmdRef(Ljava/lang/String;)V

    goto :goto_0

    :cond_56
    const-string v0, "TargetRef"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bTargetRef:Z

    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bStatus:Z

    if-eqz p1, :cond_57

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->status:Lcom/idm/core/syncml/Status;

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->targetRef:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/idm/core/syncml/ResponseCommand;->setTargetRef(Ljava/lang/String;)V

    goto :goto_0

    :cond_57
    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bResults:Z

    if-eqz p1, :cond_5b

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->results:Lcom/idm/core/syncml/Results;

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->targetRef:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/idm/core/syncml/ResponseCommand;->setTargetRef(Ljava/lang/String;)V

    goto :goto_0

    :cond_58
    const-string v0, "SourceRef"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bSourceRef:Z

    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bStatus:Z

    if-eqz p1, :cond_59

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->status:Lcom/idm/core/syncml/Status;

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->sourceRef:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/idm/core/syncml/ResponseCommand;->setSourceRef(Ljava/lang/String;)V

    goto :goto_0

    :cond_59
    iget-boolean p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bResults:Z

    if-eqz p1, :cond_5b

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->results:Lcom/idm/core/syncml/Results;

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->sourceRef:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/idm/core/syncml/ResponseCommand;->setSourceRef(Ljava/lang/String;)V

    goto :goto_0

    :cond_5a
    const-string v0, "Final"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5b

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->syncML:Lcom/idm/core/syncml/SyncML;

    invoke-virtual {p0}, Lcom/idm/core/syncml/SyncML;->getSyncBody()Lcom/idm/core/syncml/SyncBody;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/idm/core/syncml/SyncBody;->setFinalMsg(Z)V

    :cond_5b
    :goto_0
    return-void
.end method

.method public idmGetSyncML()Lcom/idm/core/syncml/SyncML;
    .locals 0

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->syncML:Lcom/idm/core/syncml/SyncML;

    return-object p0
.end method

.method public startTag(Ljava/lang/String;)V
    .locals 2

    const-string v0, "SyncML"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "SYNCML_TAG_SYNCML"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "SyncHdr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->syncML:Lcom/idm/core/syncml/SyncML;

    new-instance v0, Lcom/idm/core/syncml/SyncHdr;

    invoke-direct {v0}, Lcom/idm/core/syncml/SyncHdr;-><init>()V

    invoke-virtual {p1, v0}, Lcom/idm/core/syncml/SyncML;->setSyncHdr(Lcom/idm/core/syncml/SyncHdr;)V

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bSyncHdr:Z

    goto/16 :goto_0

    :cond_1
    const-string v0, "SyncBody"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->syncML:Lcom/idm/core/syncml/SyncML;

    new-instance p1, Lcom/idm/core/syncml/SyncBody;

    invoke-direct {p1}, Lcom/idm/core/syncml/SyncBody;-><init>()V

    invoke-virtual {p0, p1}, Lcom/idm/core/syncml/SyncML;->setSyncBody(Lcom/idm/core/syncml/SyncBody;)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "VerDTD"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bVerDTD:Z

    goto/16 :goto_0

    :cond_3
    const-string v0, "VerProto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bVerProto:Z

    goto/16 :goto_0

    :cond_4
    const-string v0, "SessionID"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bSessionID:Z

    goto/16 :goto_0

    :cond_5
    const-string v0, "MsgID"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bMsgID:Z

    goto/16 :goto_0

    :cond_6
    const-string v0, "RespURI"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bRespURI:Z

    goto/16 :goto_0

    :cond_7
    const-string v0, "Target"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bTarget:Z

    new-instance p1, Lcom/idm/core/syncml/Target;

    invoke-direct {p1}, Lcom/idm/core/syncml/Target;-><init>()V

    iput-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->target:Lcom/idm/core/syncml/Target;

    goto/16 :goto_0

    :cond_8
    const-string v0, "Source"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bSource:Z

    new-instance p1, Lcom/idm/core/syncml/Source;

    invoke-direct {p1}, Lcom/idm/core/syncml/Source;-><init>()V

    iput-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->source:Lcom/idm/core/syncml/Source;

    goto/16 :goto_0

    :cond_9
    const-string v0, "LocURI"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bLocURI:Z

    goto/16 :goto_0

    :cond_a
    const-string v0, "LocName"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bLocName:Z

    goto/16 :goto_0

    :cond_b
    const-string v0, "Cred"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bCred:Z

    new-instance p1, Lcom/idm/core/syncml/Cred;

    invoke-direct {p1}, Lcom/idm/core/syncml/Cred;-><init>()V

    iput-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->cred:Lcom/idm/core/syncml/Cred;

    goto/16 :goto_0

    :cond_c
    const-string v0, "Meta"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance p1, Lcom/idm/core/syncml/Meta;

    invoke-direct {p1}, Lcom/idm/core/syncml/Meta;-><init>()V

    iput-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->meta:Lcom/idm/core/syncml/Meta;

    goto/16 :goto_0

    :cond_d
    const-string v0, "Format"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bFormat:Z

    goto/16 :goto_0

    :cond_e
    const-string v0, "Type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bType:Z

    goto/16 :goto_0

    :cond_f
    const-string v0, "NextNonce"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bNextNonce:Z

    goto/16 :goto_0

    :cond_10
    const-string v0, "MaxMsgSize"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bMaxMsgSize:Z

    goto/16 :goto_0

    :cond_11
    const-string v0, "MaxObjSize"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bMaxObjSize:Z

    goto/16 :goto_0

    :cond_12
    const-string v0, "Data"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bData:Z

    goto/16 :goto_0

    :cond_13
    const-string v0, "Correlator"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bCorrelator:Z

    goto/16 :goto_0

    :cond_14
    const-string v0, "Atomic"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bAtomic:Z

    new-instance p1, Lcom/idm/core/syncml/Atomic;

    invoke-direct {p1}, Lcom/idm/core/syncml/Atomic;-><init>()V

    iput-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->atomic:Lcom/idm/core/syncml/Atomic;

    goto/16 :goto_0

    :cond_15
    const-string v0, "Sequence"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bSequence:Z

    new-instance p1, Lcom/idm/core/syncml/Sequence;

    invoke-direct {p1}, Lcom/idm/core/syncml/Sequence;-><init>()V

    iput-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->sequence:Lcom/idm/core/syncml/Sequence;

    goto/16 :goto_0

    :cond_16
    const-string v0, "Alert"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bAlert:Z

    new-instance p1, Lcom/idm/core/syncml/Alert;

    invoke-direct {p1}, Lcom/idm/core/syncml/Alert;-><init>()V

    iput-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->alert:Lcom/idm/core/syncml/Alert;

    goto/16 :goto_0

    :cond_17
    const-string v0, "Add"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bAdd:Z

    new-instance p1, Lcom/idm/core/syncml/Add;

    invoke-direct {p1}, Lcom/idm/core/syncml/Add;-><init>()V

    iput-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->add:Lcom/idm/core/syncml/Add;

    goto/16 :goto_0

    :cond_18
    const-string v0, "Get"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bGet:Z

    new-instance p1, Lcom/idm/core/syncml/Get;

    invoke-direct {p1}, Lcom/idm/core/syncml/Get;-><init>()V

    iput-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->get:Lcom/idm/core/syncml/Get;

    goto/16 :goto_0

    :cond_19
    const-string v0, "Replace"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bReplace:Z

    new-instance p1, Lcom/idm/core/syncml/Replace;

    invoke-direct {p1}, Lcom/idm/core/syncml/Replace;-><init>()V

    iput-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->replace:Lcom/idm/core/syncml/Replace;

    goto/16 :goto_0

    :cond_1a
    const-string v0, "Exec"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bExec:Z

    new-instance p1, Lcom/idm/core/syncml/Exec;

    invoke-direct {p1}, Lcom/idm/core/syncml/Exec;-><init>()V

    iput-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->exec:Lcom/idm/core/syncml/Exec;

    goto/16 :goto_0

    :cond_1b
    const-string v0, "Copy"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bCopy:Z

    new-instance p1, Lcom/idm/core/syncml/Copy;

    invoke-direct {p1}, Lcom/idm/core/syncml/Copy;-><init>()V

    iput-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->copy:Lcom/idm/core/syncml/Copy;

    goto/16 :goto_0

    :cond_1c
    const-string v0, "Delete"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bDelete:Z

    new-instance p1, Lcom/idm/core/syncml/Delete;

    invoke-direct {p1}, Lcom/idm/core/syncml/Delete;-><init>()V

    iput-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->delete:Lcom/idm/core/syncml/Delete;

    goto/16 :goto_0

    :cond_1d
    const-string v0, "CmdID"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bCmdID:Z

    goto/16 :goto_0

    :cond_1e
    const-string v0, "Item"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bItem:Z

    new-instance p1, Lcom/idm/core/syncml/Item;

    invoke-direct {p1}, Lcom/idm/core/syncml/Item;-><init>()V

    iput-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->item:Lcom/idm/core/syncml/Item;

    goto/16 :goto_0

    :cond_1f
    const-string v0, "Status"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bStatus:Z

    new-instance p1, Lcom/idm/core/syncml/Status;

    invoke-direct {p1}, Lcom/idm/core/syncml/Status;-><init>()V

    iput-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->status:Lcom/idm/core/syncml/Status;

    goto :goto_0

    :cond_20
    const-string v0, "Cmd"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bCmd:Z

    goto :goto_0

    :cond_21
    const-string v0, "Chal"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bChal:Z

    new-instance p1, Lcom/idm/core/syncml/Chal;

    invoke-direct {p1}, Lcom/idm/core/syncml/Chal;-><init>()V

    iput-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->chal:Lcom/idm/core/syncml/Chal;

    goto :goto_0

    :cond_22
    const-string v0, "Results"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bResults:Z

    new-instance p1, Lcom/idm/core/syncml/Results;

    invoke-direct {p1}, Lcom/idm/core/syncml/Results;-><init>()V

    iput-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->results:Lcom/idm/core/syncml/Results;

    goto :goto_0

    :cond_23
    const-string v0, "MsgRef"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bMsgRef:Z

    goto :goto_0

    :cond_24
    const-string v0, "CmdRef"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bCmdRef:Z

    goto :goto_0

    :cond_25
    const-string v0, "TargetRef"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bTargetRef:Z

    goto :goto_0

    :cond_26
    const-string v0, "SourceRef"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    iput-boolean v1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bSourceRef:Z

    :cond_27
    :goto_0
    return-void
.end method

.method public text(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    iget-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bVerDTD:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->syncML:Lcom/idm/core/syncml/SyncML;

    invoke-virtual {p0}, Lcom/idm/core/syncml/SyncML;->getSyncHdr()Lcom/idm/core/syncml/SyncHdr;

    move-result-object p0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/core/syncml/SyncHdr;->setVerDTD(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bVerProto:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->syncML:Lcom/idm/core/syncml/SyncML;

    invoke-virtual {p0}, Lcom/idm/core/syncml/SyncML;->getSyncHdr()Lcom/idm/core/syncml/SyncHdr;

    move-result-object p0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/core/syncml/SyncHdr;->setVerProto(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bSessionID:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->syncML:Lcom/idm/core/syncml/SyncML;

    invoke-virtual {p0}, Lcom/idm/core/syncml/SyncML;->getSyncHdr()Lcom/idm/core/syncml/SyncHdr;

    move-result-object p0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/core/syncml/SyncHdr;->setSessionID(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bMsgID:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->syncML:Lcom/idm/core/syncml/SyncML;

    invoke-virtual {p0}, Lcom/idm/core/syncml/SyncML;->getSyncHdr()Lcom/idm/core/syncml/SyncHdr;

    move-result-object p0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/core/syncml/SyncHdr;->setMsgID(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bRespURI:Z

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->syncML:Lcom/idm/core/syncml/SyncML;

    invoke-virtual {p0}, Lcom/idm/core/syncml/SyncML;->getSyncHdr()Lcom/idm/core/syncml/SyncHdr;

    move-result-object p0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/core/syncml/SyncHdr;->setRespURI(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bLocURI:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bTarget:Z

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->target:Lcom/idm/core/syncml/Target;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/core/syncml/Location;->setLocURI(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    iget-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bSource:Z

    if-eqz v0, :cond_15

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->source:Lcom/idm/core/syncml/Source;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/core/syncml/Location;->setLocURI(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    iget-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bLocName:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bTarget:Z

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->target:Lcom/idm/core/syncml/Target;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/core/syncml/Location;->setLocName(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bSource:Z

    if-eqz v0, :cond_15

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->source:Lcom/idm/core/syncml/Source;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/core/syncml/Location;->setLocName(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    iget-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bFormat:Z

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->meta:Lcom/idm/core/syncml/Meta;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/core/syncml/Meta;->setFormat(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    iget-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bType:Z

    if-eqz v0, :cond_a

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->meta:Lcom/idm/core/syncml/Meta;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/core/syncml/Meta;->setType(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    iget-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bNextNonce:Z

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->meta:Lcom/idm/core/syncml/Meta;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/core/syncml/Meta;->setNextNonce(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    iget-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bMaxMsgSize:Z

    if-eqz v0, :cond_c

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->meta:Lcom/idm/core/syncml/Meta;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/core/syncml/Meta;->setMaxMsgSize(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    iget-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bMaxObjSize:Z

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->meta:Lcom/idm/core/syncml/Meta;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/core/syncml/Meta;->setMaxObjSize(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    iget-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bData:Z

    if-eqz v0, :cond_e

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->data:Ljava/lang/String;

    goto :goto_0

    :cond_e
    iget-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bCmdID:Z

    if-eqz v0, :cond_f

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->cmdID:Ljava/lang/String;

    goto :goto_0

    :cond_f
    iget-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bCorrelator:Z

    if-eqz v0, :cond_10

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->correlator:Ljava/lang/String;

    goto :goto_0

    :cond_10
    iget-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bCmd:Z

    if-eqz v0, :cond_11

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->cmd:Ljava/lang/String;

    goto :goto_0

    :cond_11
    iget-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bMsgRef:Z

    if-eqz v0, :cond_12

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->msgRef:Ljava/lang/String;

    goto :goto_0

    :cond_12
    iget-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bCmdRef:Z

    if-eqz v0, :cond_13

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->cmdRef:Ljava/lang/String;

    goto :goto_0

    :cond_13
    iget-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bTargetRef:Z

    if-eqz v0, :cond_14

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->targetRef:Ljava/lang/String;

    goto :goto_0

    :cond_14
    iget-boolean v0, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->bSourceRef:Z

    if-eqz v0, :cond_15

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/core/xml/IDMXmlSyncmlParserHandler;->sourceRef:Ljava/lang/String;

    :cond_15
    :goto_0
    return-void
.end method
