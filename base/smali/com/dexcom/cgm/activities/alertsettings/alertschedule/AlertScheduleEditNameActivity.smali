.class public Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditNameActivity;
.super Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditBaseActivity;
.source "AlertScheduleEditNameActivity.java"


# instance fields
.field private alertScheduleNameEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditNameActivity;->alertScheduleNameEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    new-instance v1, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditNameActivity;->getAlertSchedule()Lcom/dexcom/cgm/model/DexAlertSchedule;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;-><init>(Lcom/dexcom/cgm/model/DexAlertSchedule;)V

    .line 52
    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->setScheduleName(Ljava/lang/String;)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    .line 53
    invoke-virtual {v1}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->build()Lcom/dexcom/cgm/model/DexAlertSchedule;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditNameActivity;->saveAlertSchedule(Lcom/dexcom/cgm/model/DexAlertSchedule;)V

    .line 56
    :cond_0
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditNameActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 58
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAcceptingText()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditNameActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 61
    if-eqz v1, :cond_1

    .line 63
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 67
    :cond_1
    invoke-super {p0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditBaseActivity;->onBackPressed()V

    .line 68
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_schedule_name_settings:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditNameActivity;->setContentView(I)V

    .line 27
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditNameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 28
    sget v0, Lcom/dexcom/cgm/activities/R$id;->id_schedule_name_enter:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditNameActivity;->alertScheduleNameEditText:Landroid/widget/EditText;

    .line 29
    if-eqz v1, :cond_0

    .line 31
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditNameActivity;->alertScheduleNameEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 34
    :cond_0
    sget v0, Lcom/dexcom/cgm/activities/R$id;->id_schedule_name_enter_text:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditBaseActivity;->onResume()V

    .line 41
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditNameActivity;->alertScheduleNameEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 42
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditNameActivity;->alertScheduleNameEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 43
    return-void
.end method
