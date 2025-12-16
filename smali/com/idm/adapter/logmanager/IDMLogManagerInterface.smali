.class interface abstract Lcom/idm/adapter/logmanager/IDMLogManagerInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/adapter/logmanager/IDMLogManagerInterface$LogLevel;
    }
.end annotation


# static fields
.field public static final IDM_LOG_ON:Z = true

.field public static final IDM_PRIVATE_ON:Z = true

.field public static final LOG_TAG:Ljava/lang/String; = "IDM_FOTA"

.field public static final priorities:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/idm/adapter/logmanager/IDMLogManagerInterface;->priorities:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x3
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method


# virtual methods
.method public abstract D(Ljava/lang/String;)V
.end method

.method public abstract E(Ljava/lang/String;)V
.end method

.method public abstract H(Ljava/lang/String;)V
.end method

.method public abstract I(Ljava/lang/String;)V
.end method

.method public abstract V(Ljava/lang/String;)V
.end method

.method public abstract W(Ljava/lang/String;)V
.end method

.method public abstract printStackTrace(Ljava/lang/Throwable;)V
.end method
