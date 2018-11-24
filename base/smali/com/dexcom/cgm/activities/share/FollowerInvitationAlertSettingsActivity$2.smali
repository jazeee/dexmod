.class Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$2;
.super Ljava/lang/Object;
.source "FollowerInvitationAlertSettingsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;

.field final synthetic val$onChecked:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$2;->this$0:Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;

    iput-object p2, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$2;->val$onChecked:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$2;->val$onChecked:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 88
    return-void
.end method
