.class public Lcom/idm/fotaagent/utils/SAKAttestation;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ALIAS:Ljava/lang/String;

.field private static final CLIENT_ID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/utils/SAKAttestation;->CLIENT_ID:Ljava/lang/String;

    const-string v1, "AttestationKey_"

    invoke-static {v1, v0}, Lh0/c;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/utils/SAKAttestation;->ALIAS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private attestKey(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    const-string p0, "AndroidKeyStore"

    invoke-static {p0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/samsung/android/security/keystore/AttestationUtils;

    invoke-direct {v0}, Lcom/samsung/android/security/keystore/AttestationUtils;-><init>()V

    sget-object v1, Lcom/idm/fotaagent/utils/SAKAttestation;->ALIAS:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/security/keystore/AttestationUtils;->attestKey(Ljava/lang/String;[B)Ljava/lang/Iterable;

    move-result-object p1

    new-instance v0, LC2/c;

    const/16 v1, 0xf

    invoke-direct {v0, v1, p0}, LC2/c;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-object p0
.end method

.method private generateKeyPair()V
    .locals 3

    const-string p0, "RSA"

    const-string v0, "AndroidKeyStore"

    invoke-static {p0, v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object p0

    new-instance v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    sget-object v1, Lcom/idm/fotaagent/utils/SAKAttestation;->ALIAS:Ljava/lang/String;

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const-string v1, "SHA-256"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v0

    const-string v1, "PSS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    return-void
.end method


# virtual methods
.method public retrieveCertificateChain(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/idm/fotaagent/utils/SAKAttestation;->generateKeyPair()V

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/utils/SAKAttestation;->attestKey(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
