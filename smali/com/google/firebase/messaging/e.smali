.class public final synthetic Lcom/google/firebase/messaging/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu1/a;
.implements Lb2/f;


# static fields
.field public static final synthetic d:Lcom/google/firebase/messaging/e;

.field public static final synthetic e:Lcom/google/firebase/messaging/e;

.field public static final synthetic f:Lcom/google/firebase/messaging/e;

.field public static final synthetic g:Lcom/google/firebase/messaging/e;


# instance fields
.field public final synthetic c:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/messaging/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/messaging/e;-><init>(I)V

    sput-object v0, Lcom/google/firebase/messaging/e;->d:Lcom/google/firebase/messaging/e;

    new-instance v0, Lcom/google/firebase/messaging/e;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/firebase/messaging/e;-><init>(I)V

    sput-object v0, Lcom/google/firebase/messaging/e;->e:Lcom/google/firebase/messaging/e;

    new-instance v0, Lcom/google/firebase/messaging/e;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/firebase/messaging/e;-><init>(I)V

    sput-object v0, Lcom/google/firebase/messaging/e;->f:Lcom/google/firebase/messaging/e;

    new-instance v0, Lcom/google/firebase/messaging/e;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/google/firebase/messaging/e;-><init>(I)V

    sput-object v0, Lcom/google/firebase/messaging/e;->g:Lcom/google/firebase/messaging/e;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/firebase/messaging/e;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public H(Lu1/h;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/google/firebase/messaging/e;->c:I

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0x193

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_0
    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public m(Lb2/t;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/google/firebase/messaging/FirebaseMessagingRegistrar;->lambda$getComponents$0(Lb2/d;)Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object p0

    return-object p0
.end method
