.class Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$2$2;
.super Ljava/lang/Object;
.source "FollowerInvitationReviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$2;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$2;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$2$2;->this$1:Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 113
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$2$2;->this$1:Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$2;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$2;->this$0:Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;->access$100(Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;)Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$2$2;->this$1:Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$2;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$2;->this$0:Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;->access$000(Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 115
    return-void
.end method
