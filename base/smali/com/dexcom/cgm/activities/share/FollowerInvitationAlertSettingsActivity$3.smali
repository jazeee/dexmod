.class Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$3;
.super Ljava/lang/Object;
.source "FollowerInvitationAlertSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;

.field final synthetic val$switchView:Lcom/dexcom/cgm/activities/DexListSwitchView;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;Lcom/dexcom/cgm/activities/DexListSwitchView;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$3;->this$0:Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;

    iput-object p2, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$3;->val$switchView:Lcom/dexcom/cgm/activities/DexListSwitchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 95
    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$3;->val$switchView:Lcom/dexcom/cgm/activities/DexListSwitchView;

    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$3;->val$switchView:Lcom/dexcom/cgm/activities/DexListSwitchView;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexListSwitchView;->isSwitchChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/activities/DexListSwitchView;->setSwitchChecked(Z)V

    .line 96
    return-void

    .line 95
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
