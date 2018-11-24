.class Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$5;
.super Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$OnPickListener;
.source "FollowerInvitationAlertSettingsActivity.java"


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;

.field final synthetic val$alertType:Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;

.field final synthetic val$optionValues:[I


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;[ILcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;)V
    .locals 1

    .prologue
    .line 420
    iput-object p1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$5;->this$0:Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;

    iput-object p2, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$5;->val$optionValues:[I

    iput-object p3, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$5;->val$alertType:Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$OnPickListener;-><init>(Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$1;)V

    return-void
.end method


# virtual methods
.method protected onPick(I)V
    .locals 3

    .prologue
    .line 424
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$5;->val$optionValues:[I

    aget v0, v0, p1

    .line 425
    invoke-static {}, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->getInstance()Lcom/dexcom/cgm/activities/share/FollowerInvitationData;

    move-result-object v1

    iget-object v2, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$5;->val$alertType:Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;

    invoke-virtual {v1, v2, v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->setAlertDelay(Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;I)V

    .line 426
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$5;->this$0:Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->access$200(Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;)V

    .line 427
    return-void
.end method
