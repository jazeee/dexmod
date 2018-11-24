.class public Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;
.super Lcom/dexcom/cgm/activities/BaseFragment;
.source "AlertScheduleFragment.java"


# instance fields
.field private alertScheduleActivity:Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment$AlertScheduleFragmentHolder;

.field private m_alertSchedule:Lcom/dexcom/cgm/model/DexAlertSchedule;

.field private m_alertScheduleNameEditText:Landroid/widget/EditText;

.field private m_layout:I

.field private m_numberPicker:Landroid/widget/NumberPicker;

.field private m_thresholdValues:[I

.field private m_view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/BaseFragment;-><init>()V

    .line 46
    return-void
.end method

.method private formatDaysString(Lcom/dexcom/cgm/model/DexAlertSchedule;)Ljava/lang/String;
    .locals 13

    .prologue
    .line 237
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isMondayEnabled()Z

    move-result v5

    .line 238
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isTuesdayEnabled()Z

    move-result v6

    .line 239
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isWednesdayEnabled()Z

    move-result v7

    .line 240
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isThursdayEnabled()Z

    move-result v8

    .line 241
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isFridayEnabled()Z

    move-result v9

    .line 242
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isSaturdayEnabled()Z

    move-result v10

    .line 243
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isSundayEnabled()Z

    move-result v11

    .line 245
    if-eqz v5, :cond_1

    if-eqz v6, :cond_1

    if-eqz v7, :cond_1

    if-eqz v8, :cond_1

    and-int v0, v9, v10

    if-eqz v0, :cond_1

    if-eqz v11, :cond_1

    const/4 v0, 0x1

    move v4, v0

    .line 246
    :goto_0
    if-eqz v5, :cond_2

    if-eqz v6, :cond_2

    if-eqz v7, :cond_2

    if-eqz v8, :cond_2

    if-eqz v9, :cond_2

    if-nez v10, :cond_2

    if-nez v11, :cond_2

    const/4 v0, 0x1

    move v3, v0

    .line 247
    :goto_1
    if-nez v5, :cond_5

    if-nez v6, :cond_3

    const/4 v0, 0x1

    move v1, v0

    :goto_2
    if-nez v7, :cond_4

    const/4 v0, 0x1

    :goto_3
    and-int/2addr v0, v1

    if-eqz v0, :cond_5

    if-nez v8, :cond_5

    if-nez v9, :cond_5

    if-eqz v10, :cond_5

    if-eqz v11, :cond_5

    const/4 v0, 0x1

    move v2, v0

    .line 248
    :goto_4
    if-nez v5, :cond_8

    if-nez v6, :cond_6

    const/4 v0, 0x1

    move v1, v0

    :goto_5
    if-nez v7, :cond_7

    const/4 v0, 0x1

    :goto_6
    and-int/2addr v0, v1

    if-eqz v0, :cond_8

    if-nez v8, :cond_8

    if-nez v9, :cond_8

    if-nez v10, :cond_8

    if-nez v11, :cond_8

    const/4 v0, 0x1

    .line 250
    :goto_7
    if-eqz v4, :cond_9

    .line 252
    invoke-static {}, Lcom/dexcom/cgm/activities/TheApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->schedule_every_day:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 280
    :cond_0
    :goto_8
    return-object v0

    .line 245
    :cond_1
    const/4 v0, 0x0

    move v4, v0

    goto :goto_0

    .line 246
    :cond_2
    const/4 v0, 0x0

    move v3, v0

    goto :goto_1

    .line 247
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    move v2, v0

    goto :goto_4

    .line 248
    :cond_6
    const/4 v0, 0x0

    move v1, v0

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    goto :goto_6

    :cond_8
    const/4 v0, 0x0

    goto :goto_7

    .line 254
    :cond_9
    if-eqz v2, :cond_a

    .line 256
    invoke-static {}, Lcom/dexcom/cgm/activities/TheApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->schedule_weekends:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 258
    :cond_a
    if-eqz v3, :cond_b

    .line 260
    invoke-static {}, Lcom/dexcom/cgm/activities/TheApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->schedule_weekdays:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 262
    :cond_b
    if-eqz v0, :cond_c

    .line 264
    invoke-static {}, Lcom/dexcom/cgm/activities/TheApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->schedule_no_days_selected:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 270
    :cond_c
    const/4 v0, 0x7

    new-array v2, v0, [Z

    const/4 v0, 0x0

    aput-boolean v5, v2, v0

    const/4 v0, 0x1

    aput-boolean v6, v2, v0

    const/4 v0, 0x2

    aput-boolean v7, v2, v0

    const/4 v0, 0x3

    aput-boolean v8, v2, v0

    const/4 v0, 0x4

    aput-boolean v9, v2, v0

    const/4 v0, 0x5

    aput-boolean v10, v2, v0

    const/4 v0, 0x6

    aput-boolean v11, v2, v0

    .line 272
    const-string v1, ""

    .line 273
    const/4 v0, 0x0

    move v12, v0

    move-object v0, v1

    move v1, v12

    :goto_9
    const/4 v3, 0x7

    if-ge v1, v3, :cond_0

    .line 275
    aget-boolean v3, v2, v1

    if-eqz v3, :cond_d

    .line 277
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/dexcom/a/a/c;->values$34b7e0()[I

    move-result-object v3

    aget v3, v3, v1

    invoke-static {v3}, Lcom/dexcom/a/a/a;->getShortenedDayOfWeek$3469b3db(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 273
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_9
.end method

.method private formatTimeString(Lcom/dexcom/cgm/model/DexAlertSchedule;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/dexcom/cgm/activities/TheApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->getStartTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/dexcom/a/a/a;->formatTimeOfDay(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 232
    invoke-static {}, Lcom/dexcom/cgm/activities/TheApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->getEndTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/dexcom/a/a/a;->formatTimeOfDay(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getOnOffString(Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    if-eqz p1, :cond_0

    sget v0, Lcom/dexcom/cgm/activities/R$string;->alert_text_on:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget v0, Lcom/dexcom/cgm/activities/R$string;->alert_text_off:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setEndText(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListNavView;

    .line 219
    invoke-virtual {v0, p2}, Lcom/dexcom/cgm/activities/DexListNavView;->setEndText(Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method private setSwitchChecked(IZ)V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListSwitchView;

    .line 309
    invoke-virtual {v0, p2}, Lcom/dexcom/cgm/activities/DexListSwitchView;->setSwitchChecked(Z)V

    .line 310
    return-void
.end method

.method private updateTimeText(J)V
    .locals 3

    .prologue
    .line 292
    iget v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_layout:I

    sget v1, Lcom/dexcom/cgm/activities/R$layout;->fragment_schedule_start_time_settings:I

    if-ne v0, v1, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/dexcom/a/a/a;->formatTimeOfDay(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 295
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_view:Landroid/view/View;

    sget v2, Lcom/dexcom/cgm/activities/R$id;->id_start_time_picker:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 298
    :cond_0
    iget v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_layout:I

    sget v1, Lcom/dexcom/cgm/activities/R$layout;->fragment_schedule_stop_time_settings:I

    if-ne v0, v1, :cond_1

    .line 300
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/dexcom/a/a/a;->formatTimeOfDay(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 301
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_view:Landroid/view/View;

    sget v2, Lcom/dexcom/cgm/activities/R$id;->id_stop_time_picker:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 304
    :cond_1
    return-void
.end method


# virtual methods
.method public getThresholdValues()[I
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_thresholdValues:[I

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/dexcom/cgm/activities/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-super {p0, p1, p2, p3}, Lcom/dexcom/cgm/activities/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 70
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment$AlertScheduleFragmentHolder;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->alertScheduleActivity:Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment$AlertScheduleFragmentHolder;

    .line 71
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->alertScheduleActivity:Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment$AlertScheduleFragmentHolder;

    invoke-interface {v0, p0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment$AlertScheduleFragmentHolder;->setCurrentFragment(Landroid/support/v4/app/Fragment;)V

    .line 72
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 73
    const-string v1, "LAYOUT"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_layout:I

    .line 74
    iget v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_layout:I

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_view:Landroid/view/View;

    .line 76
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_view:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_numberPicker:Landroid/widget/NumberPicker;

    .line 194
    iget v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_layout:I

    sget v1, Lcom/dexcom/cgm/activities/R$layout;->fragment_schedule_name_alert_settings:I

    if-ne v0, v1, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 197
    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_alertScheduleNameEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 200
    :cond_0
    invoke-super {p0}, Lcom/dexcom/cgm/activities/BaseFragment;->onDestroyView()V

    .line 201
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 206
    invoke-super {p0}, Lcom/dexcom/cgm/activities/BaseFragment;->onPause()V

    .line 208
    iget v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_layout:I

    sget v1, Lcom/dexcom/cgm/activities/R$layout;->fragment_schedule_name_alert_settings:I

    if-ne v0, v1, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 211
    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_alertScheduleNameEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 214
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 82
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->getSchedule()Lcom/dexcom/cgm/model/DexAlertSchedule;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_alertSchedule:Lcom/dexcom/cgm/model/DexAlertSchedule;

    .line 83
    invoke-super {p0}, Lcom/dexcom/cgm/activities/BaseFragment;->onResume()V

    .line 84
    iget v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_layout:I

    sget v2, Lcom/dexcom/cgm/activities/R$layout;->fragment_schedule_name_alert_settings:I

    if-ne v0, v2, :cond_0

    .line 86
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_view:Landroid/view/View;

    sget v2, Lcom/dexcom/cgm/activities/R$id;->id_schedule_name_enter:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_alertScheduleNameEditText:Landroid/widget/EditText;

    .line 87
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_alertSchedule:Lcom/dexcom/cgm/model/DexAlertSchedule;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/DexAlertSchedule;->getScheduleName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 89
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_alertScheduleNameEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 90
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v6}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 93
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_alertScheduleNameEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 101
    :cond_0
    :goto_0
    iget v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_layout:I

    sget v2, Lcom/dexcom/cgm/activities/R$layout;->fragment_schedule_start_time_settings:I

    if-ne v0, v2, :cond_1

    .line 103
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_alertSchedule:Lcom/dexcom/cgm/model/DexAlertSchedule;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/DexAlertSchedule;->getStartTime()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->updateTimeText(J)V

    .line 106
    :cond_1
    iget v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_layout:I

    sget v2, Lcom/dexcom/cgm/activities/R$layout;->fragment_schedule_stop_time_settings:I

    if-ne v0, v2, :cond_2

    .line 108
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_alertSchedule:Lcom/dexcom/cgm/model/DexAlertSchedule;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/DexAlertSchedule;->getEndTime()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->updateTimeText(J)V

    .line 111
    :cond_2
    iget v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_layout:I

    sget v2, Lcom/dexcom/cgm/activities/R$layout;->fragment_schedule_days_settings:I

    if-ne v0, v2, :cond_3

    .line 113
    sget v0, Lcom/dexcom/cgm/activities/R$id;->switch_schedule_day_monday:I

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_alertSchedule:Lcom/dexcom/cgm/model/DexAlertSchedule;

    invoke-virtual {v2}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isMondayEnabled()Z

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->setSwitchChecked(IZ)V

    .line 114
    sget v0, Lcom/dexcom/cgm/activities/R$id;->switch_schedule_day_tuesday:I

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_alertSchedule:Lcom/dexcom/cgm/model/DexAlertSchedule;

    invoke-virtual {v2}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isTuesdayEnabled()Z

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->setSwitchChecked(IZ)V

    .line 115
    sget v0, Lcom/dexcom/cgm/activities/R$id;->switch_schedule_day_wednesday:I

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_alertSchedule:Lcom/dexcom/cgm/model/DexAlertSchedule;

    invoke-virtual {v2}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isWednesdayEnabled()Z

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->setSwitchChecked(IZ)V

    .line 116
    sget v0, Lcom/dexcom/cgm/activities/R$id;->switch_schedule_day_thursday:I

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_alertSchedule:Lcom/dexcom/cgm/model/DexAlertSchedule;

    invoke-virtual {v2}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isThursdayEnabled()Z

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->setSwitchChecked(IZ)V

    .line 117
    sget v0, Lcom/dexcom/cgm/activities/R$id;->schedule_day_friday:I

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_alertSchedule:Lcom/dexcom/cgm/model/DexAlertSchedule;

    invoke-virtual {v2}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isFridayEnabled()Z

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->setSwitchChecked(IZ)V

    .line 118
    sget v0, Lcom/dexcom/cgm/activities/R$id;->schedule_day_saturday:I

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_alertSchedule:Lcom/dexcom/cgm/model/DexAlertSchedule;

    invoke-virtual {v2}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isSaturdayEnabled()Z

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->setSwitchChecked(IZ)V

    .line 119
    sget v0, Lcom/dexcom/cgm/activities/R$id;->switch_schedule_day_sunday:I

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_alertSchedule:Lcom/dexcom/cgm/model/DexAlertSchedule;

    invoke-virtual {v2}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isSundayEnabled()Z

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->setSwitchChecked(IZ)V

    .line 122
    :cond_3
    iget v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_layout:I

    sget v2, Lcom/dexcom/cgm/activities/R$layout;->fragment_schedule_low_glucose_settings:I

    if-ne v0, v2, :cond_6

    .line 124
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_view:Landroid/view/View;

    sget v2, Lcom/dexcom/cgm/activities/R$id;->number_picker:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_numberPicker:Landroid/widget/NumberPicker;

    .line 125
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/dexcom/cgm/activities/R$array;->low_alert_mgdl_egvs:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_thresholdValues:[I

    .line 127
    new-instance v0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;

    invoke-direct {v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;-><init>()V

    .line 128
    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_view:Landroid/view/View;

    sget v3, Lcom/dexcom/cgm/activities/R$id;->number_picker:I

    iget-object v4, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_thresholdValues:[I

    invoke-virtual {v0, v2, v3, v4}, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->configureMaster(Landroid/view/View;I[I)V

    .line 130
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    .line 132
    invoke-interface {v0, v6}, Lcom/dexcom/cgm/i/a;->getAlertSettings(I)Lcom/dexcom/cgm/i/a/a;

    move-result-object v0

    sget-object v2, Lcom/dexcom/cgm/h/a/a/a;->UserSelectLowGlucose:Lcom/dexcom/cgm/h/a/a/a;

    .line 133
    invoke-virtual {v0, v2}, Lcom/dexcom/cgm/i/a/a;->getAlertProperties(Lcom/dexcom/cgm/h/a/a/a;)Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/b;->getThreshold()I

    move-result v2

    move v0, v1

    .line 136
    :goto_1
    iget-object v3, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_thresholdValues:[I

    array-length v3, v3

    if-ge v0, v3, :cond_6

    .line 138
    iget-object v3, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_thresholdValues:[I

    aget v3, v3, v0

    if-ne v3, v2, :cond_4

    .line 140
    iget-object v3, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_numberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 136
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 97
    :cond_5
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_alertScheduleNameEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_alertSchedule:Lcom/dexcom/cgm/model/DexAlertSchedule;

    invoke-virtual {v2}, Lcom/dexcom/cgm/model/DexAlertSchedule;->getScheduleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 145
    :cond_6
    iget v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_layout:I

    sget v2, Lcom/dexcom/cgm/activities/R$layout;->fragment_schedule_high_glucose_settings:I

    if-ne v0, v2, :cond_8

    .line 147
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_view:Landroid/view/View;

    sget v2, Lcom/dexcom/cgm/activities/R$id;->number_picker:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_numberPicker:Landroid/widget/NumberPicker;

    .line 148
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/dexcom/cgm/activities/R$array;->high_alert_mgdl_egvs:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_thresholdValues:[I

    .line 149
    new-instance v0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;

    invoke-direct {v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;-><init>()V

    .line 150
    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_view:Landroid/view/View;

    sget v3, Lcom/dexcom/cgm/activities/R$id;->number_picker:I

    iget-object v4, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_thresholdValues:[I

    invoke-virtual {v0, v2, v3, v4}, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->configureMaster(Landroid/view/View;I[I)V

    .line 153
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    .line 155
    invoke-interface {v0, v6}, Lcom/dexcom/cgm/i/a;->getAlertSettings(I)Lcom/dexcom/cgm/i/a/a;

    move-result-object v0

    sget-object v2, Lcom/dexcom/cgm/h/a/a/a;->UserSelectHighGlucose:Lcom/dexcom/cgm/h/a/a/a;

    .line 156
    invoke-virtual {v0, v2}, Lcom/dexcom/cgm/i/a/a;->getAlertProperties(Lcom/dexcom/cgm/h/a/a/a;)Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/b;->getThreshold()I

    move-result v2

    move v0, v1

    .line 160
    :goto_2
    iget-object v3, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_thresholdValues:[I

    array-length v3, v3

    if-ge v0, v3, :cond_8

    .line 162
    iget-object v3, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_thresholdValues:[I

    aget v3, v3, v0

    if-ne v3, v2, :cond_7

    .line 164
    iget-object v3, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_numberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 160
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 169
    :cond_8
    iget v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_layout:I

    sget v2, Lcom/dexcom/cgm/activities/R$layout;->fragment_schedule_always_sound:I

    if-ne v0, v2, :cond_9

    .line 171
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_view:Landroid/view/View;

    sget v2, Lcom/dexcom/cgm/activities/R$id;->schedule_setup_always_sound_switch:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListSwitchView;

    .line 172
    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_alertSchedule:Lcom/dexcom/cgm/model/DexAlertSchedule;

    invoke-virtual {v2}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isAlwaysSoundEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/dexcom/cgm/activities/DexListSwitchView;->setSwitchChecked(Z)V

    .line 175
    :cond_9
    iget v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_layout:I

    sget v2, Lcom/dexcom/cgm/activities/R$layout;->fragment_alert_settings_summary:I

    if-ne v0, v2, :cond_a

    .line 178
    sget v0, Lcom/dexcom/cgm/activities/R$id;->summary_name:I

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_alertSchedule:Lcom/dexcom/cgm/model/DexAlertSchedule;

    invoke-virtual {v2}, Lcom/dexcom/cgm/model/DexAlertSchedule;->getScheduleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->setEndText(ILjava/lang/String;)V

    .line 179
    sget v0, Lcom/dexcom/cgm/activities/R$id;->summary_always_sound:I

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_alertSchedule:Lcom/dexcom/cgm/model/DexAlertSchedule;

    invoke-virtual {v2}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isAlwaysSoundEnabled()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->getOnOffString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->setEndText(ILjava/lang/String;)V

    .line 180
    sget v0, Lcom/dexcom/cgm/activities/R$id;->summary_time:I

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_alertSchedule:Lcom/dexcom/cgm/model/DexAlertSchedule;

    invoke-direct {p0, v2}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->formatTimeString(Lcom/dexcom/cgm/model/DexAlertSchedule;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->setEndText(ILjava/lang/String;)V

    .line 181
    sget v0, Lcom/dexcom/cgm/activities/R$id;->summary_days:I

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->m_alertSchedule:Lcom/dexcom/cgm/model/DexAlertSchedule;

    invoke-direct {p0, v2}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->formatDaysString(Lcom/dexcom/cgm/model/DexAlertSchedule;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->setEndText(ILjava/lang/String;)V

    .line 182
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    .line 184
    invoke-interface {v0, v6}, Lcom/dexcom/cgm/i/a;->getAlertSettings(I)Lcom/dexcom/cgm/i/a/a;

    move-result-object v0

    .line 185
    sget v2, Lcom/dexcom/cgm/activities/R$id;->summary_low_glucose:I

    sget v3, Lcom/dexcom/cgm/activities/R$string;->mgdl:I

    invoke-virtual {p0, v3}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/a;->getUserLow()Lcom/dexcom/cgm/i/a/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/dexcom/cgm/i/a/b;->getThreshold()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->setEndText(ILjava/lang/String;)V

    .line 186
    sget v2, Lcom/dexcom/cgm/activities/R$id;->summary_high_glucose:I

    sget v3, Lcom/dexcom/cgm/activities/R$string;->mgdl:I

    invoke-virtual {p0, v3}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/a;->getUserHigh()Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/b;->getThreshold()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->setEndText(ILjava/lang/String;)V

    .line 188
    :cond_a
    return-void
.end method
