.class Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$6;
.super Ljava/lang/Object;
.source "FollowerInvitationAlertSettingsActivity.java"

# interfaces
.implements Lcom/dexcom/cgm/activities/DexDialogBuilder$OnCustomLayout;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;

.field final synthetic val$defaultOption:Ljava/lang/String;

.field final synthetic val$options:Ljava/util/List;

.field final synthetic val$showUnits:Z

.field final synthetic val$titleTextID:I


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;IZLjava/util/List;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 457
    iput-object p1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$6;->this$0:Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;

    iput p2, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$6;->val$titleTextID:I

    iput-boolean p3, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$6;->val$showUnits:Z

    iput-object p4, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$6;->val$options:Ljava/util/List;

    iput-object p5, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$6;->val$defaultOption:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayout(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 461
    sget v0, Lcom/dexcom/cgm/activities/R$id;->notify_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 462
    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$6;->this$0:Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;

    iget v3, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$6;->val$titleTextID:I

    invoke-virtual {v1, v3}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    sget v0, Lcom/dexcom/cgm/activities/R$id;->units:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 464
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$6;->val$showUnits:Z

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 466
    sget v0, Lcom/dexcom/cgm/activities/R$id;->number_picker:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    .line 467
    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 468
    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$6;->val$options:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 469
    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$6;->val$options:Ljava/util/List;

    iget-object v3, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$6;->val$options:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 470
    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 471
    const/high16 v1, 0x60000

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    .line 473
    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$6;->val$options:Ljava/util/List;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$6;->val$defaultOption:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 475
    sget v1, Lcom/dexcom/cgm/activities/R$color;->dex_green:I

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->setDividerColor(Landroid/widget/NumberPicker;I)V

    .line 476
    return-void

    .line 464
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method
