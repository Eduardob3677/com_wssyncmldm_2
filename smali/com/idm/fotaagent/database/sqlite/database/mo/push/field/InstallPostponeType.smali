.class public Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/TypeLengthValueField;


# static fields
.field public static final NO:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;

.field public static final UNLIMITED:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;

.field private static final serialVersionUID:J = -0x710dd2f1934fd14cL


# instance fields
.field private final code:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;-><init>(B)V

    sput-object v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;->UNLIMITED:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;-><init>(B)V

    sput-object v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;->NO:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;

    return-void
.end method

.method private constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;->code:B

    return-void
.end method

.method public static of(B)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;
    .locals 2

    sget-object v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;->UNLIMITED:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;->toCode()B

    move-result v1

    if-ne p0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;->NO:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;->toCode()B

    move-result v1

    if-ne p0, v1, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x1

    if-lt p0, v0, :cond_2

    const/16 v0, 0x9

    if-gt p0, v0, :cond_2

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;-><init>(B)V

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "code: "

    invoke-static {p0, v1}, LB/f;->t(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;

    iget-byte p0, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;->code:B

    iget-byte p1, p1, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;->code:B

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public maxCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;->toCode()B

    move-result v0

    if-gez v0, :cond_0

    const-string p0, "should not be called; return 0"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;->toCode()B

    move-result p0

    return p0
.end method

.method public toCode()B
    .locals 0

    iget-byte p0, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;->code:B

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-byte p0, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;->code:B

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
