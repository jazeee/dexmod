.class public Lcom/dexcom/cgm/activities/MeterEntryActivity;
.super Landroid/app/Activity;
.source "MeterEntryActivity.java"


# instance fields
.field m_meterValue:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/dexcom/cgm/activities/MeterEntryActivity;->m_meterValue:I

    return-void
.end method

.method private clearMeterEntryNotification()V
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->FirstOfTwoCalibrations:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/notifications/NotificationManager;->clearNotification(Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;)V

    .line 79
    sget-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->SecondOfTwoCalibrations:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/notifications/NotificationManager;->clearNotification(Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;)V

    .line 80
    sget-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->CalibrationRequested:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/notifications/NotificationManager;->clearNotification(Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;)V

    .line 81
    sget-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->CalibrationRequired:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/notifications/NotificationManager;->clearNotification(Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;)V

    .line 82
    return-void
.end method

.method private isNumeric(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 192
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 203
    :goto_0
    return-object v0

    .line 199
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 203
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private verifyMeterEntry()V
    .locals 3

    .prologue
    .line 148
    new-instance v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$layout;->dialog_meter_is_this_correct:I

    new-instance v2, Lcom/dexcom/cgm/activities/MeterEntryActivity$3;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/MeterEntryActivity$3;-><init>(Lcom/dexcom/cgm/activities/MeterEntryActivity;)V

    .line 149
    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentLayout(ILcom/dexcom/cgm/activities/DexDialogBuilder$OnCustomLayout;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->button_text_save:I

    .line 160
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/MeterEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/dexcom/cgm/activities/MeterEntryActivity$2;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/MeterEntryActivity$2;-><init>(Lcom/dexcom/cgm/activities/MeterEntryActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->button_text_cancel:I

    .line 179
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/MeterEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/dexcom/cgm/activities/MeterEntryActivity$1;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/MeterEntryActivity$1;-><init>(Lcom/dexcom/cgm/activities/MeterEntryActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_meter_entry_is_this_correct:I

    .line 186
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/MeterEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->show()Landroid/app/Dialog;

    .line 188
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 58
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/MeterEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_2

    const-string v2, "LAUNCHED_FROM_NOTIFICATION"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 63
    const-string v2, "LAUNCHED_FROM_NOTIFICATION"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 66
    :goto_0
    if-nez v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationCallbackReceiver;->m_meterEntryCalled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/dexcom/cgm/activities/TrendActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 71
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/dexcom/cgm/activities/notifications/NotificationCallbackReceiver;->m_meterEntryCalled:Ljava/lang/Boolean;

    .line 72
    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/MeterEntryActivity;->startActivity(Landroid/content/Intent;)V

    .line 74
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/MeterEntryActivity;->finish()V

    .line 51
    return-void
.end method

.method public onClickCancel(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/MeterEntryActivity;->finish()V

    .line 88
    return-void
.end method

.method public onClickSave(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v0, 0x1

    .line 93
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 94
    sget v0, Lcom/dexcom/cgm/activities/R$id;->meter_entry:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/MeterEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 97
    :try_start_0
    const-string v2, "20"

    .line 98
    const-string v3, "600"

    .line 99
    sget v4, Lcom/dexcom/cgm/activities/R$string;->mgdl_unit_of_measurement:I

    invoke-virtual {p0, v4}, Lcom/dexcom/cgm/activities/MeterEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 101
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/dexcom/cgm/activities/MeterEntryActivity;->isNumeric(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 103
    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 105
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/dexcom/cgm/activities/MeterEntryActivity;->m_meterValue:I

    .line 107
    iget v5, p0, Lcom/dexcom/cgm/activities/MeterEntryActivity;->m_meterValue:I

    const/16 v6, 0x14

    if-lt v5, v6, :cond_0

    iget v5, p0, Lcom/dexcom/cgm/activities/MeterEntryActivity;->m_meterValue:I

    const/16 v6, 0x258

    if-le v5, v6, :cond_1

    .line 109
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 117
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    .line 119
    new-instance v1, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    sget v5, Lcom/dexcom/cgm/activities/R$string;->dex_meter_entry_text:I

    .line 121
    invoke-virtual {p0, v5}, Lcom/dexcom/cgm/activities/MeterEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v2, 0x1

    aput-object v3, v6, v2

    const/4 v2, 0x2

    aput-object v4, v6, v2

    .line 120
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v1

    const/4 v2, 0x1

    .line 125
    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setDismissButtonVisibility(Z)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$string;->toast_invalid_value:I

    .line 126
    invoke-virtual {p0, v2}, Lcom/dexcom/cgm/activities/MeterEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v1

    .line 127
    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->show()Landroid/app/Dialog;

    .line 144
    :goto_1
    return-void

    .line 114
    :cond_2
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 131
    :cond_3
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/MeterEntryActivity;->verifyMeterEntry()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 140
    :catch_0
    move-exception v1

    .line 142
    const-class v2, Lcom/dexcom/cgm/activities/MeterEntryActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Text: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " caused "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/dexcom/cgm/f/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 136
    :cond_4
    :try_start_1
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 137
    sget v1, Lcom/dexcom/cgm/activities/R$string;->toast_invalid_value:I

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_meter_entry:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/MeterEntryActivity;->setContentView(I)V

    .line 38
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/MeterEntryActivity;->clearMeterEntryNotification()V

    .line 39
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 44
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 45
    return-void
.end method
