.class Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$2;
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
    .line 72
    iput-object p1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$2;->this$0:Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 79
    :try_start_0
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getShareComponent()Lcom/dexcom/cgm/share/ShareService;

    move-result-object v1

    .line 80
    invoke-static {}, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->getInstance()Lcom/dexcom/cgm/activities/share/FollowerInvitationData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->createFollower()Lcom/dexcom/cgm/model/Follower;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/dexcom/cgm/share/ShareService;->addFollower(Lcom/dexcom/cgm/model/Follower;)V
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/ServerUnreachableWSException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/ServiceUnavailableWSException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException; {:try_start_0 .. :try_end_0} :catch_2

    .line 81
    const/4 v0, 0x1

    .line 94
    :goto_0
    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$2;->this$0:Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;

    new-instance v1, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$2$1;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$2$1;-><init>(Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$2;)V

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 120
    :goto_1
    return-void

    .line 85
    :catch_0
    move-exception v1

    .line 86
    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$2;->this$0:Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;

    sget v2, Lcom/dexcom/cgm/activities/R$string;->dex_general_no_internet:I

    invoke-static {v1, v2}, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;->access$200(Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;I)V

    goto :goto_0

    .line 90
    :catch_1
    move-exception v1

    .line 91
    :goto_2
    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$2;->this$0:Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;

    sget v2, Lcom/dexcom/cgm/activities/R$string;->dex_general_server_down:I

    invoke-static {v1, v2}, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;->access$200(Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;I)V

    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$2;->this$0:Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;

    new-instance v1, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$2$2;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$2$2;-><init>(Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity$2;)V

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 90
    :catch_2
    move-exception v1

    goto :goto_2
.end method
