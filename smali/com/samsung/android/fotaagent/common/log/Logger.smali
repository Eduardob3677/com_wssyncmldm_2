.class public abstract Lcom/samsung/android/fotaagent/common/log/Logger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/fotaagent/common/log/Logger$Level;
    }
.end annotation


# static fields
.field private static final DEFAULT_ADDITIONAL_DEPTH_IN_CALL_STACK:I = 0x1

.field public static STUB:Lcom/samsung/android/fotaagent/common/log/Logger;


# instance fields
.field private final additionalDepthInCallStack:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/fotaagent/common/log/Logger$1;

    invoke-direct {v0}, Lcom/samsung/android/fotaagent/common/log/Logger$1;-><init>()V

    sput-object v0, Lcom/samsung/android/fotaagent/common/log/Logger;->STUB:Lcom/samsung/android/fotaagent/common/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/fotaagent/common/log/Logger;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/samsung/android/fotaagent/common/log/Logger;->additionalDepthInCallStack:I

    return-void
.end method


# virtual methods
.method public D(Lcom/samsung/android/fotaagent/common/log/Where;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/fotaagent/common/log/Logger$Level;->D:Lcom/samsung/android/fotaagent/common/log/Logger$Level;

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/fotaagent/common/log/Logger;->log(Lcom/samsung/android/fotaagent/common/log/Logger$Level;Lcom/samsung/android/fotaagent/common/log/Where;Ljava/lang/Object;)V

    return-void
.end method

.method public D(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/fotaagent/common/log/Logger;->additionalDepthInCallStack:I

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Where;->callerOf(I)Lcom/samsung/android/fotaagent/common/log/Where;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/fotaagent/common/log/Logger;->D(Lcom/samsung/android/fotaagent/common/log/Where;Ljava/lang/Object;)V

    return-void
.end method

.method public E(Lcom/samsung/android/fotaagent/common/log/Where;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/fotaagent/common/log/Logger$Level;->E:Lcom/samsung/android/fotaagent/common/log/Logger$Level;

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/fotaagent/common/log/Logger;->log(Lcom/samsung/android/fotaagent/common/log/Logger$Level;Lcom/samsung/android/fotaagent/common/log/Where;Ljava/lang/Object;)V

    return-void
.end method

.method public E(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/fotaagent/common/log/Logger;->additionalDepthInCallStack:I

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Where;->callerOf(I)Lcom/samsung/android/fotaagent/common/log/Where;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/fotaagent/common/log/Logger;->E(Lcom/samsung/android/fotaagent/common/log/Where;Ljava/lang/Object;)V

    return-void
.end method

.method public H(Lcom/samsung/android/fotaagent/common/log/Where;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/fotaagent/common/log/Logger$Level;->H:Lcom/samsung/android/fotaagent/common/log/Logger$Level;

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/fotaagent/common/log/Logger;->log(Lcom/samsung/android/fotaagent/common/log/Logger$Level;Lcom/samsung/android/fotaagent/common/log/Where;Ljava/lang/Object;)V

    return-void
.end method

.method public H(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/fotaagent/common/log/Logger;->additionalDepthInCallStack:I

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Where;->callerOf(I)Lcom/samsung/android/fotaagent/common/log/Where;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/fotaagent/common/log/Logger;->H(Lcom/samsung/android/fotaagent/common/log/Where;Ljava/lang/Object;)V

    return-void
.end method

.method public I(Lcom/samsung/android/fotaagent/common/log/Where;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/fotaagent/common/log/Logger$Level;->I:Lcom/samsung/android/fotaagent/common/log/Logger$Level;

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/fotaagent/common/log/Logger;->log(Lcom/samsung/android/fotaagent/common/log/Logger$Level;Lcom/samsung/android/fotaagent/common/log/Where;Ljava/lang/Object;)V

    return-void
.end method

.method public I(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/fotaagent/common/log/Logger;->additionalDepthInCallStack:I

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Where;->callerOf(I)Lcom/samsung/android/fotaagent/common/log/Where;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/fotaagent/common/log/Logger;->I(Lcom/samsung/android/fotaagent/common/log/Where;Ljava/lang/Object;)V

    return-void
.end method

.method public V(Lcom/samsung/android/fotaagent/common/log/Where;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/fotaagent/common/log/Logger$Level;->V:Lcom/samsung/android/fotaagent/common/log/Logger$Level;

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/fotaagent/common/log/Logger;->log(Lcom/samsung/android/fotaagent/common/log/Logger$Level;Lcom/samsung/android/fotaagent/common/log/Where;Ljava/lang/Object;)V

    return-void
.end method

.method public V(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/fotaagent/common/log/Logger;->additionalDepthInCallStack:I

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Where;->callerOf(I)Lcom/samsung/android/fotaagent/common/log/Where;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/fotaagent/common/log/Logger;->V(Lcom/samsung/android/fotaagent/common/log/Where;Ljava/lang/Object;)V

    return-void
.end method

.method public W(Lcom/samsung/android/fotaagent/common/log/Where;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/fotaagent/common/log/Logger$Level;->W:Lcom/samsung/android/fotaagent/common/log/Logger$Level;

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/fotaagent/common/log/Logger;->log(Lcom/samsung/android/fotaagent/common/log/Logger$Level;Lcom/samsung/android/fotaagent/common/log/Where;Ljava/lang/Object;)V

    return-void
.end method

.method public W(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/fotaagent/common/log/Logger;->additionalDepthInCallStack:I

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Where;->callerOf(I)Lcom/samsung/android/fotaagent/common/log/Where;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/fotaagent/common/log/Logger;->W(Lcom/samsung/android/fotaagent/common/log/Where;Ljava/lang/Object;)V

    return-void
.end method

.method public abstract log(Lcom/samsung/android/fotaagent/common/log/Logger$Level;Lcom/samsung/android/fotaagent/common/log/Where;Ljava/lang/Object;)V
.end method

.method public printStackTrace(Lcom/samsung/android/fotaagent/common/log/Where;Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    :try_start_0
    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    sget-object p2, Lcom/samsung/android/fotaagent/common/log/Logger$Level;->S:Lcom/samsung/android/fotaagent/common/log/Logger$Level;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, p1, v0}, Lcom/samsung/android/fotaagent/common/log/Logger;->log(Lcom/samsung/android/fotaagent/common/log/Logger$Level;Lcom/samsung/android/fotaagent/common/log/Where;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public printStackTrace(Lcom/samsung/android/fotaagent/common/log/Where;Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/fotaagent/common/log/Logger;->E(Lcom/samsung/android/fotaagent/common/log/Where;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/fotaagent/common/log/Logger;->printStackTrace(Lcom/samsung/android/fotaagent/common/log/Where;Ljava/lang/Throwable;)V

    return-void
.end method

.method public printStackTrace(Ljava/lang/Throwable;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/fotaagent/common/log/Logger;->additionalDepthInCallStack:I

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Where;->callerOf(I)Lcom/samsung/android/fotaagent/common/log/Where;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/fotaagent/common/log/Logger;->printStackTrace(Lcom/samsung/android/fotaagent/common/log/Where;Ljava/lang/Throwable;)V

    return-void
.end method
