.class Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$3$1;
.super Ljava/lang/Object;
.source "FollowerInvitationReviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$3;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$3;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$3$1;->this$1:Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 147
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$3$1;->this$1:Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$3;

    iget-object v1, v1, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$3;->this$0:Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;

    const-class v2, Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 150
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 151
    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$3$1;->this$1:Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$3;

    iget-object v1, v1, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$3;->this$0:Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;->startActivity(Landroid/content/Intent;)V

    .line 152
    return-void
.end method
