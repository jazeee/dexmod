.class public Lcom/dexcom/cgm/activities/SettingsTransmitterActivity;
.super Landroid/app/Activity;
.source "SettingsTransmitterActivity.java"


# instance fields
.field private final GRAPH_HEIGHT_300:I

.field private m_navView300:Lcom/dexcom/cgm/activities/DexListNavView;

.field private m_navView400:Lcom/dexcom/cgm/activities/DexListNavView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    const/16 v0, 0x12c

    iput v0, p0, Lcom/dexcom/cgm/activities/SettingsTransmitterActivity;->GRAPH_HEIGHT_300:I

    return-void
.end method

.method static synthetic access$000(Lcom/dexcom/cgm/activities/SettingsTransmitterActivity;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/SettingsTransmitterActivity;->loadActivity(Ljava/lang/Class;)V

    return-void
.end method

.method private displayStopSessionDialog()V
    .locals 3

    .prologue
    .line 128
    new-instance v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$layout;->dialog_stop_session_to_pair_tx:I

    .line 129
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentLayout(I)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_settings_stop_sensor:I

    .line 130
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/SettingsTransmitterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/dexcom/cgm/activities/SettingsTransmitterActivity$2;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/SettingsTransmitterActivity$2;-><init>(Lcom/dexcom/cgm/activities/SettingsTransmitterActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->button_text_cancel:I

    .line 141
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/SettingsTransmitterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/dexcom/cgm/activities/SettingsTransmitterActivity$1;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/SettingsTransmitterActivity$1;-><init>(Lcom/dexcom/cgm/activities/SettingsTransmitterActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->main_screen_text_29:I

    .line 148
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/SettingsTransmitterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->show()Landroid/app/Dialog;

    .line 150
    return-void
.end method

.method private formatAbString(Lcom/dexcom/cgm/k/j;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/SettingsTransmitterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_settings_ab_pattern:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {v0}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    .line 81
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatter;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/format/DateTimeFormatter;

    .line 82
    invoke-virtual {p1}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/format/DateTimeFormatter;->print(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private formatActivatedOn(Lcom/dexcom/cgm/k/j;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 88
    new-instance v0, Lorg/joda/time/LocalDateTime;

    invoke-virtual {p1}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lorg/joda/time/LocalDateTime;-><init>(J)V

    .line 89
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v0}, Lorg/joda/time/LocalDateTime;->toDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 90
    return-object v0
.end method

.method private loadActivity(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 154
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/SettingsTransmitterActivity;->startActivity(Landroid/content/Intent;)V

    .line 156
    return-void
.end method

.method private setNavEndText(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/SettingsTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListNavView;

    .line 96
    invoke-virtual {v0, p2}, Lcom/dexcom/cgm/activities/DexListNavView;->setEndText(Ljava/lang/String;)V

    .line 97
    return-void
.end method


# virtual methods
.method public onClickNavigate(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 101
    sget v0, Lcom/dexcom/cgm/activities/R$id;->settings_transmitter_pair_new:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 103
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    .line 105
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getSensorInsertionTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/k/j;->Unknown:Lcom/dexcom/cgm/k/j;

    if-eq v0, v1, :cond_1

    .line 107
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/SettingsTransmitterActivity;->displayStopSessionDialog()V

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    const-class v0, Lcom/dexcom/cgm/activities/TransmitterSnScanActivity;

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/SettingsTransmitterActivity;->loadActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 114
    :cond_2
    sget v0, Lcom/dexcom/cgm/activities/R$id;->settings_graph_height_300_mgdl:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SettingsTransmitterActivity;->m_navView300:Lcom/dexcom/cgm/activities/DexListNavView;

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_radio_button_checked:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexListNavView;->setStartImage(I)V

    .line 117
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SettingsTransmitterActivity;->m_navView400:Lcom/dexcom/cgm/activities/DexListNavView;

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_radio_button_unchecked:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexListNavView;->setStartImage(I)V

    .line 118
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    .line 120
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    const/16 v1, 0x12c

    .line 121
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/d/e;->setGraphHeight(I)V

    .line 122
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getShareComponent()Lcom/dexcom/cgm/share/ShareService;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/share/ShareService;->saveGraphHeightSetting()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_settings_transmitter:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/SettingsTransmitterActivity;->setContentView(I)V

    .line 37
    sget v0, Lcom/dexcom/cgm/activities/R$id;->settings_graph_height_300_mgdl:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/SettingsTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListNavView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/SettingsTransmitterActivity;->m_navView300:Lcom/dexcom/cgm/activities/DexListNavView;

    .line 38
    sget v0, Lcom/dexcom/cgm/activities/R$id;->settings_graph_height_400_mgdl:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/SettingsTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListNavView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/SettingsTransmitterActivity;->m_navView400:Lcom/dexcom/cgm/activities/DexListNavView;

    .line 39
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 44
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 46
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    .line 47
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getTransmitterInfo()Lcom/dexcom/cgm/h/a/f;

    move-result-object v0

    .line 49
    sget v1, Lcom/dexcom/cgm/activities/R$id;->settings_transmitter_sn:I

    .line 51
    invoke-virtual {v0}, Lcom/dexcom/cgm/h/a/f;->getTransmitterId()Lcom/dexcom/cgm/h/a/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/h/a/e;->toString()Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-direct {p0, v1, v2}, Lcom/dexcom/cgm/activities/SettingsTransmitterActivity;->setNavEndText(ILjava/lang/String;)V

    .line 53
    invoke-virtual {v0}, Lcom/dexcom/cgm/h/a/f;->isDetailsAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    sget v1, Lcom/dexcom/cgm/activities/R$id;->settings_transmitter_ab:I

    .line 56
    invoke-static {v0}, Lcom/dexcom/cgm/h/a/f;->calculateAb(Lcom/dexcom/cgm/h/a/f;)Lcom/dexcom/cgm/k/j;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/dexcom/cgm/activities/SettingsTransmitterActivity;->formatAbString(Lcom/dexcom/cgm/k/j;)Ljava/lang/String;

    move-result-object v2

    .line 55
    invoke-direct {p0, v1, v2}, Lcom/dexcom/cgm/activities/SettingsTransmitterActivity;->setNavEndText(ILjava/lang/String;)V

    .line 57
    sget v1, Lcom/dexcom/cgm/activities/R$id;->settings_transmitter_activated_on:I

    .line 58
    invoke-virtual {v0}, Lcom/dexcom/cgm/h/a/f;->getActivatedOn()Lcom/dexcom/cgm/k/j;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/dexcom/cgm/activities/SettingsTransmitterActivity;->formatActivatedOn(Lcom/dexcom/cgm/k/j;)Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-direct {p0, v1, v2}, Lcom/dexcom/cgm/activities/SettingsTransmitterActivity;->setNavEndText(ILjava/lang/String;)V

    .line 59
    sget v1, Lcom/dexcom/cgm/activities/R$id;->settings_transmitter_firmware:I

    .line 60
    invoke-virtual {v0}, Lcom/dexcom/cgm/h/a/f;->getTransmitterVersion()Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-direct {p0, v1, v2}, Lcom/dexcom/cgm/activities/SettingsTransmitterActivity;->setNavEndText(ILjava/lang/String;)V

    .line 61
    sget v1, Lcom/dexcom/cgm/activities/R$id;->settings_transmitter_software_number:I

    .line 62
    invoke-virtual {v0}, Lcom/dexcom/cgm/h/a/f;->getSoftwareNumber()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-direct {p0, v1, v0}, Lcom/dexcom/cgm/activities/SettingsTransmitterActivity;->setNavEndText(ILjava/lang/String;)V

    .line 75
    :goto_0
    return-void

    .line 66
    :cond_0
    sget v0, Lcom/dexcom/cgm/activities/R$id;->settings_transmitter_ab:I

    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_common_triple_dashes:I

    .line 67
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/SettingsTransmitterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/SettingsTransmitterActivity;->setNavEndText(ILjava/lang/String;)V

    .line 68
    sget v0, Lcom/dexcom/cgm/activities/R$id;->settings_transmitter_activated_on:I

    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_common_triple_dashes:I

    .line 69
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/SettingsTransmitterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/SettingsTransmitterActivity;->setNavEndText(ILjava/lang/String;)V

    .line 70
    sget v0, Lcom/dexcom/cgm/activities/R$id;->settings_transmitter_firmware:I

    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_common_triple_dashes:I

    .line 71
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/SettingsTransmitterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/SettingsTransmitterActivity;->setNavEndText(ILjava/lang/String;)V

    .line 72
    sget v0, Lcom/dexcom/cgm/activities/R$id;->settings_transmitter_software_number:I

    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_common_triple_dashes:I

    .line 73
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/SettingsTransmitterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/SettingsTransmitterActivity;->setNavEndText(ILjava/lang/String;)V

    goto :goto_0
.end method
