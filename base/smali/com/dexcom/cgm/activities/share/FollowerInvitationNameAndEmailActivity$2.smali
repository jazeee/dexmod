.class Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity$2;
.super Ljava/lang/Object;
.source "FollowerInvitationNameAndEmailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity$2;->this$0:Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 137
    new-instance v0, Lcom/dexcom/cgm/activities/ToastHelper;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity$2;->this$0:Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;-><init>(Landroid/app/Activity;)V

    .line 138
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ToastHelper;->showGreenCheckToast()V

    .line 139
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity$2$1;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity$2$1;-><init>(Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity$2;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 148
    return-void
.end method
