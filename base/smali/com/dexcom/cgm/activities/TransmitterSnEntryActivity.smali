.class public Lcom/dexcom/cgm/activities/TransmitterSnEntryActivity;
.super Landroid/app/Activity;
.source "TransmitterSnEntryActivity.java"


# instance fields
.field private m_editText:Landroid/widget/EditText;

.field secondsSpent:I

.field timerStart:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private showDialogWithLayoutID(I)V
    .locals 1

    .prologue
    .line 114
    new-instance v0, Lcom/dexcom/cgm/activities/TransmitterSnEntryActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/cgm/activities/TransmitterSnEntryActivity$1;-><init>(Lcom/dexcom/cgm/activities/TransmitterSnEntryActivity;I)V

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/TransmitterSnEntryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 126
    return-void
.end method


# virtual methods
.method public onClickCancel(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/TransmitterSnEntryActivity;->finish()V

    .line 132
    return-void
.end method

.method public onClickHelpTip(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$layout;->dialog_where_is_the_transmitter_sn:I

    .line 63
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentLayout(I)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 64
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setDismissButtonVisibility(Z)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_common_transmitter:I

    .line 65
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/TransmitterSnEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->show()Landroid/app/Dialog;

    .line 67
    return-void
.end method

.method public onClickSave(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 72
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TransmitterSnEntryActivity;->m_editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/dexcom/cgm/activities/TransmitterSnEntryActivity;->m_editText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-static {v0}, Lcom/dexcom/cgm/model/TransmitterId;->isCorrectLength(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->dialog_transmitter_sn_6_chars:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/TransmitterSnEntryActivity;->showDialogWithLayoutID(I)V

    .line 110
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-static {v0}, Lcom/dexcom/cgm/model/TransmitterId;->isFirstCharacterValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 84
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->dialog_transmitter_sn_first_char:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/TransmitterSnEntryActivity;->showDialogWithLayoutID(I)V

    goto :goto_0

    .line 87
    :cond_1
    invoke-static {v0}, Lcom/dexcom/cgm/model/TransmitterId;->containsOnlyValidCharacters(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 89
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->dialog_transmitter_sn_invalid_char:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/TransmitterSnEntryActivity;->showDialogWithLayoutID(I)V

    goto :goto_0

    .line 92
    :cond_2
    invoke-static {v0}, Lcom/dexcom/cgm/model/TransmitterId;->isTransmitterIdArcher(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 94
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->TransmitterCompatibility:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator;->createDialogForFixedAlert(Landroid/app/Activity;Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;Ljava/lang/Runnable;)Landroid/app/Dialog;

    goto :goto_0

    .line 98
    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iget-wide v4, p0, Lcom/dexcom/cgm/activities/TransmitterSnEntryActivity;->timerStart:J

    sub-long/2addr v2, v4

    .line 100
    iget v4, p0, Lcom/dexcom/cgm/activities/TransmitterSnEntryActivity;->secondsSpent:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Lcom/dexcom/cgm/activities/TransmitterSnEntryActivity;->secondsSpent:I

    .line 101
    const-string v2, "Time"

    iget v3, p0, Lcom/dexcom/cgm/activities/TransmitterSnEntryActivity;->secondsSpent:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/TransmitterSnEntryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/dexcom/cgm/activities/R$string;->flurry_evt_Pairing_step16_manual:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/flurry/android/a;->logEvent(Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/e;

    .line 105
    new-instance v1, Lcom/dexcom/cgm/h/a/e;

    invoke-direct {v1, v0}, Lcom/dexcom/cgm/h/a/e;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/i/a;->setTransmitterId(Lcom/dexcom/cgm/h/a/e;)V

    .line 108
    new-instance v0, Lcom/dexcom/cgm/activities/ToastHelper;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/ToastHelper;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$string;->setup_wizard_tx_sn_saved:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;->showGreenCheckToast(I)V

    .line 109
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dexcom/cgm/activities/TrendActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/TransmitterSnEntryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_transmitter_sn_entry:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/TransmitterSnEntryActivity;->setContentView(I)V

    .line 35
    sget v0, Lcom/dexcom/cgm/activities/R$id;->transmitter_sn_entry:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/TransmitterSnEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TransmitterSnEntryActivity;->m_editText:Landroid/widget/EditText;

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/dexcom/cgm/activities/TransmitterSnEntryActivity;->timerStart:J

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/dexcom/cgm/activities/TransmitterSnEntryActivity;->secondsSpent:I

    .line 38
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 43
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-wide v2, p0, Lcom/dexcom/cgm/activities/TransmitterSnEntryActivity;->timerStart:J

    sub-long/2addr v0, v2

    .line 45
    iget v2, p0, Lcom/dexcom/cgm/activities/TransmitterSnEntryActivity;->secondsSpent:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/dexcom/cgm/activities/TransmitterSnEntryActivity;->secondsSpent:I

    .line 46
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    .line 47
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/activities/TransmitterSnEntryActivity;->secondsSpent:I

    .line 48
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/d/e;->setSetupManualSNTimeSpent(I)V

    .line 49
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 54
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/dexcom/cgm/activities/TransmitterSnEntryActivity;->timerStart:J

    .line 56
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/dexcom/cgm/d/e;->manualSNTimeSpent()I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/TransmitterSnEntryActivity;->secondsSpent:I

    .line 58
    return-void
.end method
