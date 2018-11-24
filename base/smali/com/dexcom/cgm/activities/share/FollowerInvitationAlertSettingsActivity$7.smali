.class Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$7;
.super Ljava/lang/Object;
.source "FollowerInvitationAlertSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;

.field final synthetic val$onPick:Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$OnPickListener;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$OnPickListener;)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$7;->this$0:Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;

    iput-object p2, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$7;->val$onPick:Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$OnPickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 485
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$id;->number_picker:I

    .line 486
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    .line 487
    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 488
    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$7;->val$onPick:Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$OnPickListener;

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$OnPickListener;->onPick(I)V

    .line 489
    return-void
.end method
