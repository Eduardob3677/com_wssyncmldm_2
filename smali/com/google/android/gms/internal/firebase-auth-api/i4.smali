.class public final Lcom/google/android/gms/internal/firebase-auth-api/i4;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final synthetic b:Lcom/google/android/gms/internal/firebase-auth-api/k4;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/k4;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/i4;->b:Lcom/google/android/gms/internal/firebase-auth-api/k4;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/i4;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.gms.auth.api.phone.SMS_RETRIEVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "com.google.android.gms.auth.api.phone.EXTRA_STATUS"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Status;

    iget v0, v0, Lcom/google/android/gms/common/api/Status;->d:I

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "com.google.android.gms.auth.api.phone.EXTRA_SMS_MESSAGE"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/i4;->b:Lcom/google/android/gms/internal/firebase-auth-api/k4;

    iget-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/k4;->c:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/i4;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/j4;

    const/4 v3, 0x0

    if-nez v1, :cond_1

    sget-object p2, Lcom/google/android/gms/internal/firebase-auth-api/k4;->d:LA/d;

    const-string v0, "Verification code received with no active retrieval session."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, LA/d;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string v4, "(?<!\\d)\\d{6}(?!\\d)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    iput-object p2, v1, Lcom/google/android/gms/internal/firebase-auth-api/j4;->e:Ljava/lang/String;

    if-nez p2, :cond_3

    sget-object p2, Lcom/google/android/gms/internal/firebase-auth-api/k4;->d:LA/d;

    const-string v0, "Unable to extract verification code."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, LA/d;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-object p2, v1, Lcom/google/android/gms/internal/firebase-auth-api/j4;->d:Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/internal/firebase-auth-api/s;->I(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/k4;->b(Lcom/google/android/gms/internal/firebase-auth-api/k4;Ljava/lang/String;)V

    :cond_4
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_5
    return-void
.end method
