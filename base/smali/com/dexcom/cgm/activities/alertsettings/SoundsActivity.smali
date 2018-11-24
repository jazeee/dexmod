.class public Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;
.super Landroid/app/Activity;
.source "SoundsActivity.java"

# interfaces
.implements Lcom/dexcom/cgm/activities/media/MediaHandler$ErrorListener;


# static fields
.field private static final VIBRATE_FOR_1500_MILLISECONDS:I = 0x5dc


# instance fields
.field private final TAG:Ljava/lang/String;

.field private m_alertKind:Lcom/dexcom/cgm/h/a/a/a;

.field private m_alertScheduleIndex:I

.field private m_alertSound:Lcom/dexcom/cgm/i/a/a/a;

.field private m_currentSelectionIndex:I

.field private m_currentSoundSelection:Ljava/lang/String;

.field private m_mediaHandler:Lcom/dexcom/cgm/activities/media/MediaHandler;

.field private m_vibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->m_currentSelectionIndex:I

    .line 36
    const-class v0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->TAG:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->m_currentSoundSelection:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->m_alertKind:Lcom/dexcom/cgm/h/a/a/a;

    .line 39
    iput-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->m_alertSound:Lcom/dexcom/cgm/i/a/a/a;

    return-void
.end method

.method static synthetic access$000(Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;)Lcom/dexcom/cgm/activities/media/MediaHandler;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->m_mediaHandler:Lcom/dexcom/cgm/activities/media/MediaHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->m_currentSelectionIndex:I

    return v0
.end method

.method static synthetic access$102(Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;I)I
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->m_currentSelectionIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->m_currentSoundSelection:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->m_currentSoundSelection:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;Lcom/dexcom/cgm/i/a/a/a;)Lcom/dexcom/cgm/i/a/a/a;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->m_alertSound:Lcom/dexcom/cgm/i/a/a/a;

    return-object p1
.end method

.method static synthetic access$400(Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;)Landroid/os/Vibrator;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->m_vibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method private configureAlertType(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 135
    invoke-static {}, Lcom/dexcom/cgm/h/a/a/a;->values()[Lcom/dexcom/cgm/h/a/a/a;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 137
    invoke-virtual {v3}, Lcom/dexcom/cgm/h/a/a/a;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 139
    iput-object v3, p0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->m_alertKind:Lcom/dexcom/cgm/h/a/a/a;

    .line 143
    :cond_0
    return-void

    .line 135
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private saveSelectedSound()V
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->m_alertSound:Lcom/dexcom/cgm/i/a/a/a;

    if-eqz v0, :cond_0

    .line 186
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->m_alertScheduleIndex:I

    .line 188
    invoke-interface {v0, v1}, Lcom/dexcom/cgm/i/a;->getAlertSettings(I)Lcom/dexcom/cgm/i/a/a;

    move-result-object v0

    .line 189
    sget-object v1, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity$2;->$SwitchMap$com$dexcom$cgm$presentation$model$enums$DexAlertKind:[I

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->m_alertKind:Lcom/dexcom/cgm/h/a/a/a;

    invoke-virtual {v2}, Lcom/dexcom/cgm/h/a/a/a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 240
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown alert settings for sound update."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :pswitch_0
    new-instance v1, Lcom/dexcom/cgm/i/a/c;

    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/a;->getUrgentLow()Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/dexcom/cgm/i/a/c;-><init>(Lcom/dexcom/cgm/i/a/b;)V

    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->m_alertSound:Lcom/dexcom/cgm/i/a/a/a;

    .line 194
    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/i/a/c;->setAlertSound(Lcom/dexcom/cgm/i/a/a/a;)Lcom/dexcom/cgm/i/a/c;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/c;->build()Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    .line 196
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/dexcom/cgm/i/a;->updateAlertSettings(Lcom/dexcom/cgm/i/a/b;)V

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 201
    :pswitch_1
    new-instance v1, Lcom/dexcom/cgm/i/a/c;

    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/a;->getUserLow()Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/dexcom/cgm/i/a/c;-><init>(Lcom/dexcom/cgm/i/a/b;)V

    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->m_alertSound:Lcom/dexcom/cgm/i/a/a/a;

    .line 202
    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/i/a/c;->setAlertSound(Lcom/dexcom/cgm/i/a/a/a;)Lcom/dexcom/cgm/i/a/c;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/c;->build()Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    .line 204
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/dexcom/cgm/i/a;->updateAlertSettings(Lcom/dexcom/cgm/i/a/b;)V

    goto :goto_0

    .line 209
    :pswitch_2
    new-instance v1, Lcom/dexcom/cgm/i/a/c;

    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/a;->getUserHigh()Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/dexcom/cgm/i/a/c;-><init>(Lcom/dexcom/cgm/i/a/b;)V

    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->m_alertSound:Lcom/dexcom/cgm/i/a/a/a;

    .line 210
    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/i/a/c;->setAlertSound(Lcom/dexcom/cgm/i/a/a/a;)Lcom/dexcom/cgm/i/a/c;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/c;->build()Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    .line 212
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/dexcom/cgm/i/a;->updateAlertSettings(Lcom/dexcom/cgm/i/a/b;)V

    goto :goto_0

    .line 217
    :pswitch_3
    new-instance v1, Lcom/dexcom/cgm/i/a/c;

    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/a;->getRiseRate()Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/dexcom/cgm/i/a/c;-><init>(Lcom/dexcom/cgm/i/a/b;)V

    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->m_alertSound:Lcom/dexcom/cgm/i/a/a/a;

    .line 218
    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/i/a/c;->setAlertSound(Lcom/dexcom/cgm/i/a/a/a;)Lcom/dexcom/cgm/i/a/c;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/c;->build()Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    .line 220
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/dexcom/cgm/i/a;->updateAlertSettings(Lcom/dexcom/cgm/i/a/b;)V

    goto :goto_0

    .line 225
    :pswitch_4
    new-instance v1, Lcom/dexcom/cgm/i/a/c;

    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/a;->getFallRate()Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/dexcom/cgm/i/a/c;-><init>(Lcom/dexcom/cgm/i/a/b;)V

    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->m_alertSound:Lcom/dexcom/cgm/i/a/a/a;

    .line 226
    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/i/a/c;->setAlertSound(Lcom/dexcom/cgm/i/a/a/a;)Lcom/dexcom/cgm/i/a/c;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/c;->build()Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    .line 228
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/dexcom/cgm/i/a;->updateAlertSettings(Lcom/dexcom/cgm/i/a/b;)V

    goto :goto_0

    .line 233
    :pswitch_5
    new-instance v1, Lcom/dexcom/cgm/i/a/c;

    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/a;->getNoData()Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/dexcom/cgm/i/a/c;-><init>(Lcom/dexcom/cgm/i/a/b;)V

    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->m_alertSound:Lcom/dexcom/cgm/i/a/a/a;

    .line 234
    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/i/a/c;->setAlertSound(Lcom/dexcom/cgm/i/a/a/a;)Lcom/dexcom/cgm/i/a/c;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/c;->build()Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    .line 236
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/dexcom/cgm/i/a;->updateAlertSettings(Lcom/dexcom/cgm/i/a/b;)V

    goto/16 :goto_0

    .line 189
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 174
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 175
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->m_vibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->m_vibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 179
    :cond_0
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->saveSelectedSound()V

    .line 180
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->finish()V

    .line 169
    return-void
.end method

.method public onClickBack(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->finish()V

    .line 163
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_sounds:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->setContentView(I)V

    .line 52
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->INTENT_EXTRA_ALERT_SCHEDULE_INDEX:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->m_alertScheduleIndex:I

    .line 53
    iget v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->m_alertScheduleIndex:I

    if-ne v0, v2, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Intent extra alertScheduleIndex must be set. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    const-string v0, ""

    .line 58
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "alertType"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "soundName"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-direct {p0, v1}, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->configureAlertType(Ljava/lang/String;)V

    :cond_1
    move-object v1, v0

    .line 64
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "vibrator"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->m_vibrator:Landroid/os/Vibrator;

    .line 66
    sget v0, Lcom/dexcom/cgm/activities/R$id;->soundsList:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 71
    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->m_vibrator:Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->m_alertKind:Lcom/dexcom/cgm/h/a/a/a;

    sget-object v4, Lcom/dexcom/cgm/h/a/a/a;->UrgentLowGlucose:Lcom/dexcom/cgm/h/a/a/a;

    invoke-virtual {v2, v4}, Lcom/dexcom/cgm/h/a/a/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 73
    :cond_2
    invoke-static {}, Lcom/dexcom/cgm/i/a/a/a;->values()[Lcom/dexcom/cgm/i/a/a/a;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 81
    :goto_0
    invoke-static {}, Lcom/dexcom/cgm/i/a/a/a;->values()[Lcom/dexcom/cgm/i/a/a/a;

    move-result-object v5

    array-length v6, v5

    move v4, v3

    :goto_1
    if-ge v4, v6, :cond_7

    aget-object v7, v5, v4

    .line 85
    sget-object v8, Lcom/dexcom/cgm/i/a/a/a;->VibrateOnly:Lcom/dexcom/cgm/i/a/a/a;

    invoke-virtual {v7, v8}, Lcom/dexcom/cgm/i/a/a/a;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 87
    iget-object v8, p0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->m_alertKind:Lcom/dexcom/cgm/h/a/a/a;

    sget-object v9, Lcom/dexcom/cgm/h/a/a/a;->UrgentLowGlucose:Lcom/dexcom/cgm/h/a/a/a;

    invoke-virtual {v8, v9}, Lcom/dexcom/cgm/h/a/a/a;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->m_alertKind:Lcom/dexcom/cgm/h/a/a/a;

    invoke-virtual {v8}, Lcom/dexcom/cgm/h/a/a/a;->isUserAlert()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 92
    :cond_3
    sget-object v8, Lcom/dexcom/cgm/i/a/a/a;->None:Lcom/dexcom/cgm/i/a/a/a;

    invoke-virtual {v7, v8}, Lcom/dexcom/cgm/i/a/a/a;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->m_vibrator:Landroid/os/Vibrator;

    invoke-virtual {v8}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 94
    invoke-virtual {v7}, Lcom/dexcom/cgm/i/a/a/a;->getAlertSoundString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 96
    iput v3, p0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->m_currentSelectionIndex:I

    .line 98
    :cond_4
    invoke-virtual {v7}, Lcom/dexcom/cgm/i/a/a/a;->getAlertSoundString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v3

    .line 99
    add-int/lit8 v3, v3, 0x1

    .line 81
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 77
    :cond_6
    invoke-static {}, Lcom/dexcom/cgm/i/a/a/a;->values()[Lcom/dexcom/cgm/i/a/a/a;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    new-array v2, v2, [Ljava/lang/String;

    goto :goto_0

    .line 103
    :cond_7
    new-instance v1, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity$SoundsArrayAdapter;

    invoke-direct {v1, p0, p0, v2}, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity$SoundsArrayAdapter;-><init>(Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;Landroid/content/Context;[Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 106
    new-instance v2, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity$1;

    invoke-direct {v2, p0, v1}, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity$1;-><init>(Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity$SoundsArrayAdapter;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 131
    return-void
.end method

.method public onMediaPlayerError(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 304
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 154
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 155
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->m_mediaHandler:Lcom/dexcom/cgm/activities/media/MediaHandler;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/media/MediaHandler;->destroy()V

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->m_mediaHandler:Lcom/dexcom/cgm/activities/media/MediaHandler;

    .line 157
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 147
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 148
    new-instance v0, Lcom/dexcom/cgm/activities/media/MediaHandler;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/activities/media/MediaHandler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->m_mediaHandler:Lcom/dexcom/cgm/activities/media/MediaHandler;

    .line 149
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->m_mediaHandler:Lcom/dexcom/cgm/activities/media/MediaHandler;

    invoke-virtual {v0, p0}, Lcom/dexcom/cgm/activities/media/MediaHandler;->setMediaPlayerErrorListener(Lcom/dexcom/cgm/activities/media/MediaHandler$ErrorListener;)V

    .line 150
    return-void
.end method
