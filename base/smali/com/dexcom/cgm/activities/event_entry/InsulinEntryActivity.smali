.class public Lcom/dexcom/cgm/activities/event_entry/InsulinEntryActivity;
.super Landroid/app/Activity;
.source "InsulinEntryActivity.java"


# instance fields
.field private m_insulinValue:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/dexcom/cgm/activities/event_entry/InsulinEntryActivity;->m_insulinValue:D

    return-void
.end method

.method private static isNumericOrEmpty(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 107
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 121
    :goto_0
    return-object v0

    .line 116
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 117
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 121
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
    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/event_entry/InsulinEntryActivity;->setResult(I)V

    .line 58
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/event_entry/InsulinEntryActivity;->onBackPressed()V

    .line 59
    return-void
.end method

.method public onClickSave(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    .line 64
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 65
    sget v0, Lcom/dexcom/cgm/activities/R$id;->insulin_entry:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/event_entry/InsulinEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 67
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dexcom/cgm/activities/event_entry/InsulinEntryActivity;->isNumericOrEmpty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 69
    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 71
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/dexcom/cgm/activities/event_entry/InsulinEntryActivity;->m_insulinValue:D

    .line 78
    :goto_0
    iget-wide v2, p0, Lcom/dexcom/cgm/activities/event_entry/InsulinEntryActivity;->m_insulinValue:D

    cmpg-double v0, v2, v4

    if-ltz v0, :cond_0

    iget-wide v2, p0, Lcom/dexcom/cgm/activities/event_entry/InsulinEntryActivity;->m_insulinValue:D

    const-wide v4, 0x406f400000000000L    # 250.0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_4

    .line 80
    :cond_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 83
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 85
    new-instance v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_event_entry_insulin_text:I

    .line 86
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentText(I)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 87
    invoke-virtual {v0, v7}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setDismissButtonVisibility(Z)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_event_entry_insulin_title:I

    .line 88
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/event_entry/InsulinEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->show()Landroid/app/Dialog;

    .line 103
    :goto_2
    return-void

    .line 75
    :cond_1
    iput-wide v4, p0, Lcom/dexcom/cgm/activities/event_entry/InsulinEntryActivity;->m_insulinValue:D

    goto :goto_0

    .line 93
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "insulinValue"

    iget-wide v2, p0, Lcom/dexcom/cgm/activities/event_entry/InsulinEntryActivity;->m_insulinValue:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    move-result-object v0

    .line 94
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/dexcom/cgm/activities/event_entry/InsulinEntryActivity;->setResult(ILandroid/content/Intent;)V

    .line 95
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/event_entry/InsulinEntryActivity;->finish()V

    goto :goto_2

    .line 100
    :cond_3
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 101
    sget v0, Lcom/dexcom/cgm/activities/R$string;->toast_invalid_value:I

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_insulin_entry:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/event_entry/InsulinEntryActivity;->setContentView(I)V

    .line 34
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/event_entry/InsulinEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/event_entry/InsulinEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "insulinValue"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/dexcom/cgm/activities/event_entry/InsulinEntryActivity;->m_insulinValue:D

    .line 38
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 43
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 45
    sget v0, Lcom/dexcom/cgm/activities/R$id;->insulin_entry:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/event_entry/InsulinEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 46
    new-instance v1, Lcom/dexcom/cgm/activities/event_entry/InsulinEntryDecimalTextWatcher;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/dexcom/cgm/activities/event_entry/InsulinEntryDecimalTextWatcher;-><init>(Landroid/widget/EditText;I)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 48
    iget-wide v2, p0, Lcom/dexcom/cgm/activities/event_entry/InsulinEntryActivity;->m_insulinValue:D

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_0

    .line 50
    iget-wide v2, p0, Lcom/dexcom/cgm/activities/event_entry/InsulinEntryActivity;->m_insulinValue:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 52
    :cond_0
    return-void
.end method
