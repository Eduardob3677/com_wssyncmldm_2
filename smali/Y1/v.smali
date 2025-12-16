.class public final synthetic LY1/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb2/f;


# static fields
.field public static final synthetic c:LY1/v;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LY1/v;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LY1/v;->c:LY1/v;

    return-void
.end method


# virtual methods
.method public final m(Lb2/t;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/google/firebase/auth/FirebaseAuthRegistrar;->lambda$getComponents$0(Lb2/d;)Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object p0

    return-object p0
.end method
