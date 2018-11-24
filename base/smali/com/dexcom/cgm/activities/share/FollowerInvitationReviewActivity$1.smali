.class Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$1;
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
    .line 62
    iput-object p1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$1;->this$0:Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$1;->this$0:Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;->access$000(Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$1;->this$0:Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;->access$100(Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;)Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->setVisibility(I)V

    .line 68
    return-void
.end method
