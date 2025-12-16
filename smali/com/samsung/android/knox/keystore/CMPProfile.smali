.class public Lcom/samsung/android/knox/keystore/CMPProfile;
.super Lcom/samsung/android/knox/keystore/EnrollmentProfile;
.source "SourceFile"


# static fields
.field public static final CMP_HTTP:I = 0x0

.field public static final CMP_POP_CHALLENGERESP:I = 0x1

.field public static final CMP_POP_INDIRECTENCRYPTCERT:I = 0x2

.field public static final CMP_POP_SIGNATURE:I = 0x0

.field public static final CMP_TCP:I = 0x1


# instance fields
.field public cmpServerURL:Ljava/lang/String;

.field public iakLength:J

.field public initialAuthenticationKey:[B

.field public issuerDN:Ljava/lang/String;

.field public keyUsage:I

.field public notAfterDate:J

.field public notBeforeDate:J

.field public popType:I

.field public subjectDN:Ljava/lang/String;

.field public transport:I

.field public userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/EnrollmentProfile;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CMPProfile;->initialAuthenticationKey:[B

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getProfileType()Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
