.class public Lcom/dexcom/cgm/activities/event_entry/CarbsEntryActivity;
.super Landroid/app/Activity;
.source "CarbsEntryActivity.java"


# instance fields
.field entryField:Landroid/widget/EditText;

.field m_carbsValue:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/dexcom/cgm/activities/event_entry/CarbsEntryActivity;->m_carbsValue:I

    return-void
.end method

.method private isNumericOrEmpty(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 117
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 129
    :goto_0
    return-object v0

    .line 124
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 125
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onClickCancel(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/event_entry/CarbsEntryActivity;->setResult(I)V

    .line 56
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/event_entry/CarbsEntryActivity;->onBackPressed()V

    .line 57
    return-void
.end method

.method public onClickSave(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 62
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/dexcom/cgm/activities/event_entry/CarbsEntryActivity;->entryField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/dexcom/cgm/activities/event_entry/CarbsEntryActivity;->isNumericOrEmpty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 66
    iget-object v1, p0, Lcom/dexcom/cgm/activities/event_entry/CarbsEntryActivity;->entryField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 68
    iget-object v1, p0, Lcom/dexcom/cgm/activities/event_entry/CarbsEntryActivity;->entryField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/dexcom/cgm/activities/event_entry/CarbsEntryActivity;->m_carbsValue:I

    .line 75
    :goto_0
    iget v1, p0, Lcom/dexcom/cgm/activities/event_entry/CarbsEntryActivity;->m_carbsValue:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/dexcom/cgm/activities/event_entry/CarbsEntryActivity;->m_carbsValue:I

    const/16 v2, 0xfa

    if-le v1, v2, :cond_1

    .line 77
    :cond_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 80
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 82
    new-instance v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_event_entry_carbs_text:I

    .line 83
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentText(I)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 84
    invoke-virtual {v0, v3}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setDismissButtonVisibility(Z)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_event_entry_carbs_title:I

    .line 85
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/event_entry/CarbsEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->show()Landroid/app/Dialog;

    .line 113
    :goto_1
    return-void

    .line 72
    :cond_2
    iput v5, p0, Lcom/dexcom/cgm/activities/event_entry/CarbsEntryActivity;->m_carbsValue:I

    goto :goto_0

    .line 90
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "carbValue"

    iget v2, p0, Lcom/dexcom/cgm/activities/event_entry/CarbsEntryActivity;->m_carbsValue:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 91
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 92
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v3

    .line 93
    invoke-interface {v3}, Lcom/dexcom/cgm/i/a;->getCurrentCgmStateInformation()Lcom/dexcom/cgm/h/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/h/a/b;->getEgv()I

    move-result v4

    .line 94
    const-string v0, ""

    .line 95
    if-eqz v4, :cond_4

    .line 97
    invoke-interface {v3}, Lcom/dexcom/cgm/i/a;->getCurrentCgmStateInformation()Lcom/dexcom/cgm/h/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/h/a/b;->getTrendArrow()Lcom/dexcom/cgm/h/a/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/h/a/a/e;->name()Ljava/lang/String;

    move-result-object v0

    .line 99
    :cond_4
    const-string v3, "Current Glucose Level:"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v3, "Current Trend Arrow:"

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_5
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v0, "Entered Grams:"

    iget v3, p0, Lcom/dexcom/cgm/activities/event_entry/CarbsEntryActivity;->m_carbsValue:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/event_entry/CarbsEntryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/dexcom/cgm/activities/R$string;->flurry_evt_GlucoseWhenEnteringCarb:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/flurry/android/a;->logEvent(Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/e;

    .line 104
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/dexcom/cgm/activities/event_entry/CarbsEntryActivity;->setResult(ILandroid/content/Intent;)V

    .line 105
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/event_entry/CarbsEntryActivity;->finish()V

    goto :goto_1

    .line 110
    :cond_6
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/CarbsEntryActivity;->entryField:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 111
    sget v0, Lcom/dexcom/cgm/activities/R$string;->toast_invalid_value:I

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_carbs_entry:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/event_entry/CarbsEntryActivity;->setContentView(I)V

    .line 34
    sget v0, Lcom/dexcom/cgm/activities/R$id;->carbs_entry:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/event_entry/CarbsEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/CarbsEntryActivity;->entryField:Landroid/widget/EditText;

    .line 36
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/event_entry/CarbsEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/event_entry/CarbsEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "carbsValue"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/event_entry/CarbsEntryActivity;->m_carbsValue:I

    .line 40
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 46
    iget v0, p0, Lcom/dexcom/cgm/activities/event_entry/CarbsEntryActivity;->m_carbsValue:I

    if-lez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/CarbsEntryActivity;->entryField:Landroid/widget/EditText;

    iget v1, p0, Lcom/dexcom/cgm/activities/event_entry/CarbsEntryActivity;->m_carbsValue:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 50
    :cond_0
    return-void
.end method
