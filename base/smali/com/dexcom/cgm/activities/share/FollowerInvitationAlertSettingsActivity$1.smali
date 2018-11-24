.class Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$1;
.super Ljava/lang/Object;
.source "FollowerInvitationAlertSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;

.field final synthetic val$alertType:Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$1;->this$0:Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;

    iput-object p2, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$1;->val$alertType:Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$1;->this$0:Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$1;->val$alertType:Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->access$000(Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;)V

    .line 74
    return-void
.end method
