.class public final Lcom/wssyncmldm/generated/callback/OnItemSelected;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LT/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wssyncmldm/generated/callback/OnItemSelected$Listener;
    }
.end annotation


# instance fields
.field final mListener:Lcom/wssyncmldm/generated/callback/OnItemSelected$Listener;

.field final mSourceId:I


# direct methods
.method public constructor <init>(Lcom/wssyncmldm/generated/callback/OnItemSelected$Listener;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wssyncmldm/generated/callback/OnItemSelected;->mListener:Lcom/wssyncmldm/generated/callback/OnItemSelected$Listener;

    iput p2, p0, Lcom/wssyncmldm/generated/callback/OnItemSelected;->mSourceId:I

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7

    iget-object v0, p0, Lcom/wssyncmldm/generated/callback/OnItemSelected;->mListener:Lcom/wssyncmldm/generated/callback/OnItemSelected$Listener;

    iget v1, p0, Lcom/wssyncmldm/generated/callback/OnItemSelected;->mSourceId:I

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/wssyncmldm/generated/callback/OnItemSelected$Listener;->_internalCallbackOnItemSelected(ILandroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
