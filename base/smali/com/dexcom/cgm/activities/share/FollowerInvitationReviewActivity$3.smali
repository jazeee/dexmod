.class Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$3;
.super Ljava/lang/Object;
.source "FollowerInvitationReviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$3;->this$0:Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 139
    new-instance v0, Lcom/dexcom/cgm/activities/ToastHelper;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$3;->this$0:Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;-><init>(Landroid/app/Activity;)V

    .line 140
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ToastHelper;->showGreenCheckToast()V

    .line 142
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$3$1;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$3$1;-><init>(Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$3;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 154
    return-void
.end method
