.class public Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;
.super Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForHeartBeat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/restapi/request/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForDeviceRegistration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration$LazyInstanceHolder;
    }
.end annotation


# static fields
.field private static final CARRIER_ID:Ljava/lang/String; = "ro.boot.carrierid"

.field private static final CONTENT_EULA_TERMS_VERSION:Ljava/lang/String; = "3.0"

.field private static final CONTENT_LDU_FLAG:Ljava/lang/String; = "LDU"

.field private static final CONTENT_TERMS:Ljava/lang/String; = "Y"

.field private static final CONTENT_TYPE_CODE:Ljava/lang/String; = "PHONE DEVICE"

.field private static final KEY_TYPE:Ljava/lang/String; = "ro.security.keystore.keytype"

.field private static final TAG_AID_CODE:Ljava/lang/String; = "aidCode"

.field private static final TAG_APP_CERT:Ljava/lang/String; = "appCert"

.field private static final TAG_APP_VERSION:Ljava/lang/String; = "fotaClientVer"

.field private static final TAG_AUTH_TYPE:Ljava/lang/String; = "authenticateType"

.field static final TAG_B2B_COPR_ID:Ljava/lang/String; = "corpID"

.field private static final TAG_CARRIER_ID:Ljava/lang/String; = "carrierID"

.field private static final TAG_EE_FLAG:Ljava/lang/String; = "eeFlag"

.field private static final TAG_LDU_FLAG:Ljava/lang/String; = "lduFlag"

.field private static final TAG_MCC:Ljava/lang/String; = "mobileCountryCode"

.field private static final TAG_MCC_NT:Ljava/lang/String; = "mobileCountryCodeByTelephony"

.field private static final TAG_MNC:Ljava/lang/String; = "mobileNetworkCode"

.field private static final TAG_MNC_NT:Ljava/lang/String; = "mobileNetworkCodeByTelephony"

.field static final TAG_MODEL_NAME:Ljava/lang/String; = "deviceName"

.field private static final TAG_PHYSICAL_ADDRESS:Ljava/lang/String; = "devicePhysicalAddressText"

.field private static final TAG_PP_VERSION:Ljava/lang/String; = "ppVersion"

.field private static final TAG_ROOT_CERT:Ljava/lang/String; = "rootCert"

.field private static final TAG_SAK_CERT:Ljava/lang/String; = "sakCert"

.field private static final TAG_SN:Ljava/lang/String; = "deviceSerialNumber"

.field private static final TAG_TERMS:Ljava/lang/String; = "terms"

.field private static final TAG_TERMS_VERSION:Ljava/lang/String; = "termsVersion"

.field private static final TAG_TYPE_CODE:Ljava/lang/String; = "deviceTypeCode"

.field private static final TAG_UN:Ljava/lang/String; = "uniqueNumber"


# instance fields
.field private activatedId:Lcom/idm/fotaagent/restapi/request/Node;

.field private appCert:Lcom/idm/fotaagent/restapi/request/Node;

.field private authType:Lcom/idm/fotaagent/restapi/request/Node;

.field private carrierId:Lcom/idm/fotaagent/restapi/request/Node;

.field private clientVersion:Lcom/idm/fotaagent/restapi/request/Node;

.field private corpId:Lcom/idm/fotaagent/restapi/request/Node;

.field private eeFlag:Lcom/idm/fotaagent/restapi/request/Node;

.field private lduFlag:Lcom/idm/fotaagent/restapi/request/Node;

.field private modelName:Lcom/idm/fotaagent/restapi/request/Node;

.field private physicalAddress:Lcom/idm/fotaagent/restapi/request/Node;

.field private ppVersion:Lcom/idm/fotaagent/restapi/request/Node;

.field private rootCert:Lcom/idm/fotaagent/restapi/request/Node;

.field private sakCert:Lcom/idm/fotaagent/restapi/request/Node;

.field private sakErrorCode:Ljava/lang/String;

.field private simMcc:Lcom/idm/fotaagent/restapi/request/Node;

.field private simMnc:Lcom/idm/fotaagent/restapi/request/Node;

.field private sn:Lcom/idm/fotaagent/restapi/request/Node;

.field private telMcc:Lcom/idm/fotaagent/restapi/request/Node;

.field private telMnc:Lcom/idm/fotaagent/restapi/request/Node;

.field private terms:Lcom/idm/fotaagent/restapi/request/Node;

.field private termsVersion:Lcom/idm/fotaagent/restapi/request/Node;

.field private typeCode:Lcom/idm/fotaagent/restapi/request/Node;

.field private un:Lcom/idm/fotaagent/restapi/request/Node;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForHeartBeat;-><init>(Lcom/idm/fotaagent/restapi/request/DeviceInfo$1;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->sakErrorCode:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/idm/fotaagent/restapi/request/DeviceInfo$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;-><init>()V

    return-void
.end method

.method public static get()Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration$LazyInstanceHolder;->access$500()Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;

    move-result-object v0

    return-object v0
.end method

.method private loadSAKInfoIfNeeded(Landroid/content/Context;)V
    .locals 5

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;

    invoke-direct {v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;->getChallenge()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->setDefaultSAKValues()V

    iput-object v1, p0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->sakErrorCode:Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "challenge : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->H(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->isSakAppliedModel()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "SAK is not applied"

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->setDefaultSAKValues()V

    const-string p1, "SAK_0001"

    iput-object p1, p0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->sakErrorCode:Ljava/lang/String;

    return-void

    :cond_1
    :try_start_0
    new-instance v0, Lcom/idm/fotaagent/utils/SAKAttestation;

    invoke-direct {v0}, Lcom/idm/fotaagent/utils/SAKAttestation;-><init>()V

    invoke-virtual {v0, p1}, Lcom/idm/fotaagent/utils/SAKAttestation;->retrieveCertificateChain(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/idm/fotaagent/restapi/request/Node;

    const-string v2, "appCert"

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/idm/fotaagent/restapi/request/Node;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->appCert:Lcom/idm/fotaagent/restapi/request/Node;

    new-instance v0, Lcom/idm/fotaagent/restapi/request/Node;

    const-string v2, "sakCert"

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/idm/fotaagent/restapi/request/Node;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->sakCert:Lcom/idm/fotaagent/restapi/request/Node;

    new-instance v0, Lcom/idm/fotaagent/restapi/request/Node;

    const-string v2, "rootCert"

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {p1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Lcom/idm/fotaagent/restapi/request/Node;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->rootCert:Lcom/idm/fotaagent/restapi/request/Node;

    iput-object v1, p0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->sakErrorCode:Ljava/lang/String;

    new-instance p1, Lcom/idm/fotaagent/restapi/request/Node;

    const-string v0, "authenticateType"

    const-string v1, "1"

    invoke-direct {p1, v0, v1}, Lcom/idm/fotaagent/restapi/request/Node;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->authType:Lcom/idm/fotaagent/restapi/request/Node;

    const-string p1, "certificate chain retrieval succeeded "

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->setDefaultSAKValues()V

    const-string p1, "SAK_0002"

    iput-object p1, p0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->sakErrorCode:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private setDefaultSAKValues()V
    .locals 3

    new-instance v0, Lcom/idm/fotaagent/restapi/request/Node;

    const-string v1, "appCert"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/restapi/request/Node;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->appCert:Lcom/idm/fotaagent/restapi/request/Node;

    new-instance v0, Lcom/idm/fotaagent/restapi/request/Node;

    const-string v1, "sakCert"

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/restapi/request/Node;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->sakCert:Lcom/idm/fotaagent/restapi/request/Node;

    new-instance v0, Lcom/idm/fotaagent/restapi/request/Node;

    const-string v1, "rootCert"

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/restapi/request/Node;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->rootCert:Lcom/idm/fotaagent/restapi/request/Node;

    new-instance v0, Lcom/idm/fotaagent/restapi/request/Node;

    const-string v1, "authenticateType"

    const-string v2, "0"

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/restapi/request/Node;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->authType:Lcom/idm/fotaagent/restapi/request/Node;

    return-void
.end method


# virtual methods
.method public getCorpId()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->corpId:Lcom/idm/fotaagent/restapi/request/Node;

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/request/Node;->content()Ljava/util/Optional;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->modelName:Lcom/idm/fotaagent/restapi/request/Node;

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/request/Node;->content()Ljava/util/Optional;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getNodes()Ljava/util/List;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/idm/fotaagent/restapi/request/Node;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForHeartBeat;->deviceId:Lcom/idm/fotaagent/restapi/request/Node;

    iget-object v2, v0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForHeartBeat;->modelId:Lcom/idm/fotaagent/restapi/request/Node;

    iget-object v3, v0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForHeartBeat;->salesCode:Lcom/idm/fotaagent/restapi/request/Node;

    iget-object v4, v0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForHeartBeat;->deviceVersion:Lcom/idm/fotaagent/restapi/request/Node;

    iget-object v5, v0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->physicalAddress:Lcom/idm/fotaagent/restapi/request/Node;

    iget-object v6, v0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->un:Lcom/idm/fotaagent/restapi/request/Node;

    iget-object v7, v0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->sn:Lcom/idm/fotaagent/restapi/request/Node;

    iget-object v8, v0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->typeCode:Lcom/idm/fotaagent/restapi/request/Node;

    iget-object v9, v0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->modelName:Lcom/idm/fotaagent/restapi/request/Node;

    iget-object v10, v0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->simMcc:Lcom/idm/fotaagent/restapi/request/Node;

    iget-object v11, v0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->simMnc:Lcom/idm/fotaagent/restapi/request/Node;

    iget-object v12, v0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->telMcc:Lcom/idm/fotaagent/restapi/request/Node;

    iget-object v13, v0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->telMnc:Lcom/idm/fotaagent/restapi/request/Node;

    iget-object v14, v0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->terms:Lcom/idm/fotaagent/restapi/request/Node;

    iget-object v15, v0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->termsVersion:Lcom/idm/fotaagent/restapi/request/Node;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->clientVersion:Lcom/idm/fotaagent/restapi/request/Node;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->corpId:Lcom/idm/fotaagent/restapi/request/Node;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->carrierId:Lcom/idm/fotaagent/restapi/request/Node;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->eeFlag:Lcom/idm/fotaagent/restapi/request/Node;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->ppVersion:Lcom/idm/fotaagent/restapi/request/Node;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->lduFlag:Lcom/idm/fotaagent/restapi/request/Node;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->activatedId:Lcom/idm/fotaagent/restapi/request/Node;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->authType:Lcom/idm/fotaagent/restapi/request/Node;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->appCert:Lcom/idm/fotaagent/restapi/request/Node;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->sakCert:Lcom/idm/fotaagent/restapi/request/Node;

    move-object/from16 v25, v1

    iget-object v0, v0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->rootCert:Lcom/idm/fotaagent/restapi/request/Node;

    move-object/from16 v26, v0

    move-object/from16 v1, v27

    filled-new-array/range {v1 .. v26}, [Lcom/idm/fotaagent/restapi/request/Node;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPPVersion()Ljava/lang/String;
    .locals 9

    sget-object p0, LH2/a;->b:Landroid/net/Uri;

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.setupwizardlegalprovider"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0xa

    const/4 v2, -0x1

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v3, "eulaprovider"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v3, "diagprovider"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x28

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ppprovider"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x14

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v3, "aaprovider"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x1e

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v3, "gdgpprovider"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x32

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v3, "uspdprovider"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x3c

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v3, "cbtprovider"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x46

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v3, "cpp2provider"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x50

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v3, "diagcbt2provider"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x5a

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v3, "diagnonsensitive2provider"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x64

    goto :goto_0

    :cond_9
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v3, "diagsensitiveprovider"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x6e

    goto :goto_0

    :cond_a
    move v0, v2

    :goto_0
    if-lez v0, :cond_e

    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    const-string v4, "get"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    add-int/lit8 v2, v0, 0x1

    goto :goto_1

    :cond_b
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    const-string v4, "agree"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    add-int/lit8 v2, v0, 0x2

    goto :goto_1

    :cond_c
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    const-string v4, "disagree"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    add-int/lit8 v2, v0, 0x3

    goto :goto_1

    :cond_d
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    const-string v4, "version"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    add-int/lit8 v2, v0, 0x4

    goto :goto_1

    :cond_e
    move v2, v0

    :cond_f
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Uri:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " > process: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v7, LH2/a;->a:Ljava/lang/String;

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    rem-int/2addr v2, v1

    const/4 v0, 0x4

    const/4 v8, 0x0

    if-ne v2, v0, :cond_11

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v1, p0

    move-object v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_10

    const-string p0, "read Version done"

    invoke-static {v7, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    invoke-interface {v0, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_10
    const-string v0, "no version is found"

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "this is not a granted ver action("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") from "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_12

    return-object v8

    :cond_12
    const-string p0, "[%$&*()#@!]"

    const-string v0, ""

    invoke-virtual {v8, p0, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSakErrorCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->sakErrorCode:Ljava/lang/String;

    return-object p0
.end method

.method public isSakAppliedModel()Z
    .locals 1

    const-string p0, "ro.security.keystore.keytype"

    invoke-static {p0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "sak"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public readCarrierId()Ljava/lang/String;
    .locals 1

    const-string p0, "ro.boot.carrierid"

    const-string v0, ""

    invoke-static {p0, v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public readDeviceInfo(Landroid/content/Context;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForHeartBeat;->readDeviceInfo(Landroid/content/Context;)V

    new-instance v0, Lcom/idm/fotaagent/restapi/request/Node;

    const-string v1, "devicePhysicalAddressText"

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/DeviceId;->readDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/restapi/request/Node;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->physicalAddress:Lcom/idm/fotaagent/restapi/request/Node;

    new-instance v0, Lcom/idm/fotaagent/restapi/request/Node;

    const-string v1, "uniqueNumber"

    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->readUN()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/restapi/request/Node;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->un:Lcom/idm/fotaagent/restapi/request/Node;

    new-instance v0, Lcom/idm/fotaagent/restapi/request/Node;

    const-string v1, "deviceSerialNumber"

    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/restapi/request/Node;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->sn:Lcom/idm/fotaagent/restapi/request/Node;

    new-instance v0, Lcom/idm/fotaagent/restapi/request/Node;

    const-string v1, "deviceTypeCode"

    const-string v2, "PHONE DEVICE"

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/restapi/request/Node;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->typeCode:Lcom/idm/fotaagent/restapi/request/Node;

    new-instance v0, Lcom/idm/fotaagent/restapi/request/Node;

    const-string v1, "deviceName"

    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->readModelName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/restapi/request/Node;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->modelName:Lcom/idm/fotaagent/restapi/request/Node;

    new-instance v0, Lcom/idm/fotaagent/restapi/request/Node;

    const-string v1, "mobileCountryCode"

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->readSimMCC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/restapi/request/Node;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->simMcc:Lcom/idm/fotaagent/restapi/request/Node;

    new-instance v0, Lcom/idm/fotaagent/restapi/request/Node;

    const-string v1, "mobileNetworkCode"

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->readSimMNC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/restapi/request/Node;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->simMnc:Lcom/idm/fotaagent/restapi/request/Node;

    new-instance v0, Lcom/idm/fotaagent/restapi/request/Node;

    const-string v1, "mobileCountryCodeByTelephony"

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->readNetworkMCC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/restapi/request/Node;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->telMcc:Lcom/idm/fotaagent/restapi/request/Node;

    new-instance v0, Lcom/idm/fotaagent/restapi/request/Node;

    const-string v1, "mobileNetworkCodeByTelephony"

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->readNetworkMNC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/restapi/request/Node;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->telMnc:Lcom/idm/fotaagent/restapi/request/Node;

    new-instance v0, Lcom/idm/fotaagent/restapi/request/Node;

    const-string v1, "terms"

    const-string v2, "Y"

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/restapi/request/Node;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->terms:Lcom/idm/fotaagent/restapi/request/Node;

    new-instance v0, Lcom/idm/fotaagent/restapi/request/Node;

    const-string v1, "termsVersion"

    const-string v2, "3.0"

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/restapi/request/Node;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->termsVersion:Lcom/idm/fotaagent/restapi/request/Node;

    new-instance v0, Lcom/idm/fotaagent/restapi/request/Node;

    const-string v1, "fotaClientVer"

    invoke-static {p1}, Lcom/idm/fotaagent/utils/DeviceUtils;->readAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/restapi/request/Node;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->clientVersion:Lcom/idm/fotaagent/restapi/request/Node;

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/policy/mdm/MDMInfo;

    invoke-direct {v0}, Lcom/idm/fotaagent/enabler/fumo/policy/mdm/MDMInfo;-><init>()V

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/fumo/policy/mdm/MDMInfo;->getCorpId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/restapi/request/Node;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    const-string v2, "corpID"

    invoke-direct {v1, v2, v0}, Lcom/idm/fotaagent/restapi/request/Node;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->corpId:Lcom/idm/fotaagent/restapi/request/Node;

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->readCarrierId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/restapi/request/Node;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v3

    :goto_1
    const-string v2, "carrierID"

    invoke-direct {v1, v2, v0}, Lcom/idm/fotaagent/restapi/request/Node;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->carrierId:Lcom/idm/fotaagent/restapi/request/Node;

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->readEEFlag(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/restapi/request/Node;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    move-object v0, v3

    :goto_2
    const-string v2, "eeFlag"

    invoke-direct {v1, v2, v0}, Lcom/idm/fotaagent/restapi/request/Node;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->eeFlag:Lcom/idm/fotaagent/restapi/request/Node;

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->getPPVersion()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/restapi/request/Node;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/samsung/android/fotaagent/common/feature/SalesCode;->get()Lcom/samsung/android/fotaagent/common/feature/SalesCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/fotaagent/common/feature/SalesCode;->isKoreaCountryFeature()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    move-object v0, v3

    :goto_3
    const-string v2, "ppVersion"

    invoke-direct {v1, v2, v0}, Lcom/idm/fotaagent/restapi/request/Node;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->ppVersion:Lcom/idm/fotaagent/restapi/request/Node;

    new-instance v0, Lcom/idm/fotaagent/restapi/request/Node;

    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->isLiveDemoDevice()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "LDU"

    goto :goto_4

    :cond_4
    move-object v1, v3

    :goto_4
    const-string v2, "lduFlag"

    invoke-direct {v0, v2, v1}, Lcom/idm/fotaagent/restapi/request/Node;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->lduFlag:Lcom/idm/fotaagent/restapi/request/Node;

    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->getActivatedId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/restapi/request/Node;

    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->isTSS2_0()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    move-object v3, v0

    :cond_5
    const-string v0, "aidCode"

    invoke-direct {v1, v0, v3}, Lcom/idm/fotaagent/restapi/request/Node;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->activatedId:Lcom/idm/fotaagent/restapi/request/Node;

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForDeviceRegistration;->loadSAKInfoIfNeeded(Landroid/content/Context;)V

    return-void
.end method

.method public readEEFlag(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "enterprise_edition"

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Y"

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-string p0, "N"
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :goto_1
    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    const-string p0, ""

    return-object p0
.end method
