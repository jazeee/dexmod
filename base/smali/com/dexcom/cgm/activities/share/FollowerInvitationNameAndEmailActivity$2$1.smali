.class Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity$2$1;
.super Ljava/lang/Object;
.source "FollowerInvitationNameAndEmailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity$2;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity$2;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity$2$1;->this$1:Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 144
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity$2$1;->this$1:Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity$2;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity$2;->this$0:Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity$2$1;->this$1:Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity$2;

    iget-object v2, v2, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity$2;->this$0:Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;

    const-class v3, Lcom/dexcom/cgm/activities/share/FollowerInvitationTrendGraphActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;->startActivity(Landroid/content/Intent;)V

    .line 146
    return-void
.end method
