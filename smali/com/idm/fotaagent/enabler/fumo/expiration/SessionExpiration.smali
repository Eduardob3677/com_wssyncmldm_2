.class public final enum Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;

.field public static final enum EXPIRATION_CANCEL:Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;

.field public static final enum EXPIRATION_NOTIFY:Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;

.field public static final enum RESCHEDULE_CANCEL:Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;


# instance fields
.field private final jobId:I

.field private final latencyInMillis:J

.field private final serviceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $values()[Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;
    .locals 3

    sget-object v0, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;->EXPIRATION_NOTIFY:Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;

    sget-object v1, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;->EXPIRATION_CANCEL:Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;

    sget-object v2, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;->RESCHEDULE_CANCEL:Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;

    filled-new-array {v0, v1, v2}, [Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 16

    new-instance v7, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x1c

    invoke-virtual {v8, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    const-string v1, "EXPIRATION_NOTIFY"

    const/4 v2, 0x0

    const-class v3, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpirationService$ForNotify;

    const v4, 0x2d580e7c

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;-><init>(Ljava/lang/String;ILjava/lang/Class;IJ)V

    sput-object v7, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;->EXPIRATION_NOTIFY:Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;

    const-wide/16 v1, 0x1e

    invoke-virtual {v8, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v14

    const-string v10, "EXPIRATION_CANCEL"

    const/4 v11, 0x1

    const-class v12, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpirationService$ForCancel;

    const v13, 0x2d580e7d

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;-><init>(Ljava/lang/String;ILjava/lang/Class;IJ)V

    sput-object v0, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;->EXPIRATION_CANCEL:Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;

    const-wide/16 v1, 0x1

    invoke-virtual {v8, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    const-string v2, "RESCHEDULE_CANCEL"

    const/4 v3, 0x2

    const-class v4, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpirationService$ForCancel;

    const v5, 0x2d580e7d

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;-><init>(Ljava/lang/String;ILjava/lang/Class;IJ)V

    sput-object v0, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;->RESCHEDULE_CANCEL:Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;->$values()[Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;->$VALUES:[Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;IJ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;->serviceClass:Ljava/lang/Class;

    iput p4, p0, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;->jobId:I

    iput-wide p5, p0, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;->latencyInMillis:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;
    .locals 1

    const-class v0, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;

    return-object p0
.end method

.method public static values()[Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;->$VALUES:[Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;

    invoke-virtual {v0}, [Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;

    return-object v0
.end method


# virtual methods
.method public getJobId()I
    .locals 0

    iget p0, p0, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;->jobId:I

    return p0
.end method

.method public getLatencyInMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;->latencyInMillis:J

    return-wide v0
.end method

.method public getServiceClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpiration;->serviceClass:Ljava/lang/Class;

    return-object p0
.end method
