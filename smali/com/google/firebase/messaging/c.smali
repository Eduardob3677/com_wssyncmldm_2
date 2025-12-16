.class public final synthetic Lcom/google/firebase/messaging/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final synthetic d:Lcom/google/firebase/messaging/c;

.field public static final synthetic e:Lcom/google/firebase/messaging/c;

.field public static final synthetic f:Lcom/google/firebase/messaging/c;

.field public static final synthetic g:Lcom/google/firebase/messaging/c;

.field public static final synthetic h:Lcom/google/firebase/messaging/c;


# instance fields
.field public final synthetic c:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/messaging/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/messaging/c;-><init>(I)V

    sput-object v0, Lcom/google/firebase/messaging/c;->d:Lcom/google/firebase/messaging/c;

    new-instance v0, Lcom/google/firebase/messaging/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/firebase/messaging/c;-><init>(I)V

    sput-object v0, Lcom/google/firebase/messaging/c;->e:Lcom/google/firebase/messaging/c;

    new-instance v0, Lcom/google/firebase/messaging/c;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/firebase/messaging/c;-><init>(I)V

    sput-object v0, Lcom/google/firebase/messaging/c;->f:Lcom/google/firebase/messaging/c;

    new-instance v0, Lcom/google/firebase/messaging/c;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/google/firebase/messaging/c;-><init>(I)V

    sput-object v0, Lcom/google/firebase/messaging/c;->g:Lcom/google/firebase/messaging/c;

    new-instance v0, Lcom/google/firebase/messaging/c;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/firebase/messaging/c;-><init>(I)V

    sput-object v0, Lcom/google/firebase/messaging/c;->h:Lcom/google/firebase/messaging/c;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/firebase/messaging/c;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    iget p0, p0, Lcom/google/firebase/messaging/c;->c:I

    packed-switch p0, :pswitch_data_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :pswitch_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :pswitch_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :pswitch_2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :pswitch_3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
