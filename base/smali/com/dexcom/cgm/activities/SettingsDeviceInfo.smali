.class public Lcom/dexcom/cgm/activities/SettingsDeviceInfo;
.super Landroid/app/Activity;
.source "SettingsDeviceInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private formattedDateTimeValue(Lcom/dexcom/cgm/k/j;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 92
    new-instance v0, Lorg/joda/time/LocalDateTime;

    invoke-virtual {p1}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lorg/joda/time/LocalDateTime;-><init>(J)V

    .line 95
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v0}, Lorg/joda/time/LocalDateTime;->toDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v0}, Lorg/joda/time/LocalDateTime;->toDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAppVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 81
    :try_start_0
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/SettingsDeviceInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/SettingsDeviceInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 82
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "UNKNOWN"

    goto :goto_0
.end method

.method private setNavEndText(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/SettingsDeviceInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListNavView;

    .line 103
    invoke-virtual {v0, p2}, Lcom/dexcom/cgm/activities/DexListNavView;->setEndText(Ljava/lang/String;)V

    .line 104
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_settings_device_info:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/SettingsDeviceInfo;->setContentView(I)V

    .line 28
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 33
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 35
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    .line 37
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getSensorInsertionTime()Lcom/dexcom/cgm/k/j;

    move-result-object v1

    sget-object v2, Lcom/dexcom/cgm/k/j;->Unknown:Lcom/dexcom/cgm/k/j;

    if-eq v1, v2, :cond_0

    .line 39
    sget v1, Lcom/dexcom/cgm/activities/R$id;->settings_device_info_insertion_time:I

    .line 40
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getSensorInsertionTime()Lcom/dexcom/cgm/k/j;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/dexcom/cgm/activities/SettingsDeviceInfo;->formattedDateTimeValue(Lcom/dexcom/cgm/k/j;)Ljava/lang/String;

    move-result-object v2

    .line 39
    invoke-direct {p0, v1, v2}, Lcom/dexcom/cgm/activities/SettingsDeviceInfo;->setNavEndText(ILjava/lang/String;)V

    .line 48
    :goto_0
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getLastCalibration()Lcom/dexcom/cgm/h/a/d;

    move-result-object v1

    .line 49
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/dexcom/cgm/h/a/d;->getMeterTimeStamp()Lcom/dexcom/cgm/k/j;

    move-result-object v1

    sget-object v2, Lcom/dexcom/cgm/k/j;->Unknown:Lcom/dexcom/cgm/k/j;

    if-eq v1, v2, :cond_1

    .line 51
    sget v1, Lcom/dexcom/cgm/activities/R$id;->settings_device_info_last_calibration:I

    sget v2, Lcom/dexcom/cgm/activities/R$string;->help_menu_text_8:I

    .line 52
    invoke-virtual {p0, v2}, Lcom/dexcom/cgm/activities/SettingsDeviceInfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 53
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getLastCalibration()Lcom/dexcom/cgm/h/a/d;

    move-result-object v5

    invoke-virtual {v5}, Lcom/dexcom/cgm/h/a/d;->getMeterValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget v5, Lcom/dexcom/cgm/activities/R$string;->mgdl_unit_of_measurement:I

    .line 54
    invoke-virtual {p0, v5}, Lcom/dexcom/cgm/activities/SettingsDeviceInfo;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 55
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getLastCalibration()Lcom/dexcom/cgm/h/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/h/a/d;->getMeterTimeStamp()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/SettingsDeviceInfo;->formattedDateTimeValue(Lcom/dexcom/cgm/k/j;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    .line 52
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-direct {p0, v1, v0}, Lcom/dexcom/cgm/activities/SettingsDeviceInfo;->setNavEndText(ILjava/lang/String;)V

    .line 71
    :goto_1
    sget v0, Lcom/dexcom/cgm/activities/R$id;->settings_device_info_software_revision:I

    invoke-direct {p0}, Lcom/dexcom/cgm/activities/SettingsDeviceInfo;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/SettingsDeviceInfo;->setNavEndText(ILjava/lang/String;)V

    .line 72
    sget v0, Lcom/dexcom/cgm/activities/R$id;->settings_device_info_software_number:I

    sget v1, Lcom/dexcom/cgm/activities/R$string;->software_number:I

    .line 73
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/SettingsDeviceInfo;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/SettingsDeviceInfo;->setNavEndText(ILjava/lang/String;)V

    .line 74
    sget v0, Lcom/dexcom/cgm/activities/R$id;->settings_device_info_udi:I

    sget v1, Lcom/dexcom/cgm/activities/R$string;->udi:I

    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/SettingsDeviceInfo;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/SettingsDeviceInfo;->setNavEndText(ILjava/lang/String;)V

    .line 75
    return-void

    .line 44
    :cond_0
    sget v1, Lcom/dexcom/cgm/activities/R$id;->settings_device_info_insertion_time:I

    sget v2, Lcom/dexcom/cgm/activities/R$string;->help_menu_text_31:I

    .line 45
    invoke-virtual {p0, v2}, Lcom/dexcom/cgm/activities/SettingsDeviceInfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-direct {p0, v1, v2}, Lcom/dexcom/cgm/activities/SettingsDeviceInfo;->setNavEndText(ILjava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_1
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getSensorInsertionTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/k/j;->Unknown:Lcom/dexcom/cgm/k/j;

    if-eq v0, v1, :cond_2

    .line 61
    sget v0, Lcom/dexcom/cgm/activities/R$id;->settings_device_info_last_calibration:I

    sget v1, Lcom/dexcom/cgm/activities/R$string;->help_menu_text_32:I

    .line 62
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/SettingsDeviceInfo;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/SettingsDeviceInfo;->setNavEndText(ILjava/lang/String;)V

    goto :goto_1

    .line 66
    :cond_2
    sget v0, Lcom/dexcom/cgm/activities/R$id;->settings_device_info_last_calibration:I

    sget v1, Lcom/dexcom/cgm/activities/R$string;->help_menu_text_31:I

    .line 67
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/SettingsDeviceInfo;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/SettingsDeviceInfo;->setNavEndText(ILjava/lang/String;)V

    goto :goto_1
.end method
