.class Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse$IDMTndsTagManage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/core/tnds/IDMTndsXmlWbxmlDefine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IDMTndsTagManage"
.end annotation


# instance fields
.field eTagID:[I

.field nTagSP:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse$IDMTndsTagManage;->eTagID:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse$IDMTndsTagManage;->nTagSP:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/core/tnds/IDMTndsWbxmltoXmlParse$IDMTndsTagManage;-><init>()V

    return-void
.end method
