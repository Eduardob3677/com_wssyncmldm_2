.class public final synthetic Lv2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic c:Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeTimer;

.field public final synthetic d:J

.field public final synthetic e:Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeTimer;JLcom/idm/fotaagent/enabler/fumo/postpone/PostponeType;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv2/a;->c:Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeTimer;

    iput-wide p2, p0, Lv2/a;->d:J

    iput-object p4, p0, Lv2/a;->e:Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType;

    iput-object p5, p0, Lv2/a;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v4, p0, Lv2/a;->f:Ljava/lang/String;

    move-object v5, p1

    check-cast v5, Landroid/app/AlarmManager;

    iget-object v0, p0, Lv2/a;->c:Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeTimer;

    iget-wide v1, p0, Lv2/a;->d:J

    iget-object v3, p0, Lv2/a;->e:Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType;

    invoke-static/range {v0 .. v5}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeTimer;->a(Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeTimer;JLcom/idm/fotaagent/enabler/fumo/postpone/PostponeType;Ljava/lang/String;Landroid/app/AlarmManager;)V

    return-void
.end method
