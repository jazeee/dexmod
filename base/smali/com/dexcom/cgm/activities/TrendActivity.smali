.class public Lcom/dexcom/cgm/activities/TrendActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "TrendActivity.java"


# static fields
.field private static final INTERNALCHECK:Ljava/lang/String; = "INTERNALCHECK"

.field private static final INVALID_IMAGE_ID:I = -0x1

.field public static THIS_CYCLE_LANDSCAPE:Z

.field private static final TenReadingsSeconds:J


# instance fields
.field private final BACKGROUND_TRIGGER:J

.field private m_alertSoundIconVisible:Z

.field private m_alertSoundStatusView:Landroid/widget/ImageView;

.field private m_alertSoundTooltipView:Landroid/view/View;

.field private m_alertStatusListener:Landroid/view/View$OnClickListener;

.field private m_alertStatusTooltipListener:Landroid/view/View$OnTouchListener;

.field private m_context:Landroid/content/Context;

.field private m_currentImageId:I

.field private m_drawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private m_handler:Landroid/os/Handler;

.field private m_internalCheckOccurred:Z

.field private m_notificationManager:Landroid/app/NotificationManager;

.field m_refreshAlertSoundIcon:Ljava/lang/Runnable;

.field private m_refreshAlertSoundIconTask:Lcom/dexcom/cgm/activities/TrendActivity$HandlerIntervalTask;

.field private m_refreshCallback:Lcom/dexcom/cgm/h/c;

.field private m_stayedOnTrendScreen:Z

.field private m_tooltipTextView:Landroid/widget/TextView;

.field private now:J

.field private toolbar:Landroid/widget/Toolbar;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 59
    const/4 v0, 0x0

    sput-boolean v0, Lcom/dexcom/cgm/activities/TrendActivity;->THIS_CYCLE_LANDSCAPE:Z

    .line 60
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/dexcom/cgm/activities/TrendActivity;->TenReadingsSeconds:J

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 50
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 52
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->BACKGROUND_TRIGGER:J

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_handler:Landroid/os/Handler;

    .line 64
    iput-boolean v4, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_internalCheckOccurred:Z

    .line 65
    iput-boolean v4, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_stayedOnTrendScreen:Z

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_alertSoundIconVisible:Z

    .line 73
    new-instance v0, Lcom/dexcom/cgm/activities/TrendActivity$HandlerIntervalTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dexcom/cgm/activities/TrendActivity$HandlerIntervalTask;-><init>(Lcom/dexcom/cgm/activities/TrendActivity;Lcom/dexcom/cgm/activities/TrendActivity$1;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_refreshAlertSoundIconTask:Lcom/dexcom/cgm/activities/TrendActivity$HandlerIntervalTask;

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_currentImageId:I

    .line 76
    new-instance v0, Lcom/dexcom/cgm/activities/TrendActivity$1;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/TrendActivity$1;-><init>(Lcom/dexcom/cgm/activities/TrendActivity;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_refreshCallback:Lcom/dexcom/cgm/h/c;

    .line 694
    new-instance v0, Lcom/dexcom/cgm/activities/TrendActivity$11;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/TrendActivity$11;-><init>(Lcom/dexcom/cgm/activities/TrendActivity;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_refreshAlertSoundIcon:Ljava/lang/Runnable;

    .line 819
    new-instance v0, Lcom/dexcom/cgm/activities/TrendActivity$12;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/TrendActivity$12;-><init>(Lcom/dexcom/cgm/activities/TrendActivity;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_alertStatusListener:Landroid/view/View$OnClickListener;

    .line 830
    new-instance v0, Lcom/dexcom/cgm/activities/TrendActivity$13;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/TrendActivity$13;-><init>(Lcom/dexcom/cgm/activities/TrendActivity;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_alertStatusTooltipListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method static synthetic access$100(Lcom/dexcom/cgm/activities/TrendActivity;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendActivity;->performFlurryWork()V

    return-void
.end method

.method static synthetic access$1000(Lcom/dexcom/cgm/activities/TrendActivity;)Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_alertStatusTooltipListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dexcom/cgm/activities/TrendActivity;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendActivity;->refreshMenuList()V

    return-void
.end method

.method static synthetic access$302(Lcom/dexcom/cgm/activities/TrendActivity;Z)Z
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_stayedOnTrendScreen:Z

    return p1
.end method

.method static synthetic access$400(Lcom/dexcom/cgm/activities/TrendActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/dexcom/cgm/activities/TrendActivity;)Z
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendActivity;->checkAppCompatibilityStatus()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/dexcom/cgm/activities/TrendActivity;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendActivity;->refreshShareIcon()V

    return-void
.end method

.method static synthetic access$700(Lcom/dexcom/cgm/activities/TrendActivity;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendActivity;->refreshMeterEntryIcon()V

    return-void
.end method

.method static synthetic access$800(Lcom/dexcom/cgm/activities/TrendActivity;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendActivity;->refreshAlertSoundStatus()V

    return-void
.end method

.method static synthetic access$900(Lcom/dexcom/cgm/activities/TrendActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_alertSoundTooltipView:Landroid/view/View;

    return-object v0
.end method

.method private addDebugGestureRecognizerToView(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 602
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 603
    new-instance v1, Lcom/dexcom/cgm/activities/TrendActivity$9;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/TrendActivity$9;-><init>(Lcom/dexcom/cgm/activities/TrendActivity;)V

    .line 621
    new-instance v2, Lcom/dexcom/cgm/activities/TrendActivity$10;

    invoke-direct {v2, p0, v0, v1}, Lcom/dexcom/cgm/activities/TrendActivity$10;-><init>(Lcom/dexcom/cgm/activities/TrendActivity;Landroid/os/Handler;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 639
    return-void
.end method

.method private checkAppCompatibilityStatus()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 538
    invoke-static {}, Lcom/dexcom/cgm/k/a;->currentTimeSeconds()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 539
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v2

    .line 540
    iget-boolean v3, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_internalCheckOccurred:Z

    if-nez v3, :cond_2

    .line 542
    invoke-interface {v2}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v2

    .line 543
    invoke-virtual {v2}, Lcom/dexcom/cgm/d/e;->getNextAppCompatabilityCheck()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendActivity;->checkTime()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 545
    :cond_0
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/TrendActivity;->isNetworkAvailable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 547
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 549
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10000000

    .line 550
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 552
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendActivity;->checkTime()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 554
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 555
    const-string v3, "INTERNALCHECK"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 558
    :cond_1
    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_stayedOnTrendScreen:Z

    .line 559
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/TrendActivity;->startActivity(Landroid/content/Intent;)V

    .line 560
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/TrendActivity;->finish()V

    .line 561
    const/4 v0, 0x1

    .line 566
    :cond_2
    :goto_0
    return v0

    .line 564
    :cond_3
    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_internalCheckOccurred:Z

    goto :goto_0
.end method

.method private checkTime()Z
    .locals 4

    .prologue
    .line 648
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/dexcom/cgm/activities/TrendActivity;->now:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 649
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendActivity;->saveTime()V

    .line 650
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/dexcom/cgm/activities/TrendActivity;->BACKGROUND_TRIGGER:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_stayedOnTrendScreen:Z

    if-eqz v0, :cond_0

    .line 651
    const/4 v0, 0x1

    .line 652
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getShareIconID()I
    .locals 2

    .prologue
    .line 248
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    .line 249
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/d/e;->hasCompletedShareTutorial()Z

    move-result v0

    .line 250
    if-nez v0, :cond_0

    .line 252
    sget v0, Lcom/dexcom/cgm/activities/R$drawable;->ic_share_off:I

    .line 265
    :goto_0
    return v0

    .line 255
    :cond_0
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getShareComponent()Lcom/dexcom/cgm/share/ShareService;

    move-result-object v0

    .line 256
    invoke-interface {v0}, Lcom/dexcom/cgm/share/ShareService;->getPhoneStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 257
    invoke-interface {v0}, Lcom/dexcom/cgm/share/ShareService;->getInternetStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 258
    invoke-interface {v0}, Lcom/dexcom/cgm/share/ShareService;->getServerStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    invoke-static {}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->isDozeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 260
    :goto_1
    if-eqz v0, :cond_3

    .line 262
    sget v0, Lcom/dexcom/cgm/activities/R$drawable;->ic_share_off_badge_1:I

    goto :goto_0

    .line 259
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 265
    :cond_3
    sget v0, Lcom/dexcom/cgm/activities/R$drawable;->ic_share_color:I

    goto :goto_0
.end method

.method private getStreamVolume()I
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 801
    invoke-static {}, Lcom/dexcom/cgm/activities/TheApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 804
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    .line 805
    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    if-ne v1, v3, :cond_1

    .line 807
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 811
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    goto :goto_0
.end method

.method private performFlurryWork()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x3e8

    const/4 v0, 0x1

    const/4 v8, 0x0

    const/4 v4, -0x1

    const-wide/16 v6, 0x0

    .line 402
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v1

    .line 403
    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/e;->getFlurryOutOfRange()J

    move-result-wide v2

    cmp-long v1, v2, v6

    if-lez v1, :cond_2

    .line 405
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v1

    .line 406
    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/dexcom/cgm/i/a;->getCurrentCgmStateInformation()Lcom/dexcom/cgm/h/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/h/a/b;->getEgv()I

    move-result v1

    if-eq v1, v4, :cond_0

    .line 408
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v1

    .line 409
    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/e;->getFlurryOutOfRange()J

    move-result-wide v4

    sub-long/2addr v2, v4

    div-long/2addr v2, v10

    .line 408
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 410
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 411
    const-string v3, "Time:"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    iget-object v1, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/dexcom/cgm/activities/R$string;->flurry_evt_Res_OutOfRange:I

    .line 413
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 412
    invoke-static {v1, v2}, Lcom/flurry/android/a;->logEvent(Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/e;

    .line 415
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v1

    .line 416
    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Lcom/dexcom/cgm/d/e;->setFlurryOutOfRange(J)V

    .line 432
    :cond_0
    :goto_0
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v1

    .line 433
    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/e;->getFlurryShareBackfill()I

    move-result v1

    if-le v1, v0, :cond_1

    .line 435
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 436
    const-string v2, "Number Of EGVs:"

    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v3

    .line 437
    invoke-virtual {v3}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v3

    invoke-interface {v3}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dexcom/cgm/d/e;->getFlurryShareBackfill()I

    move-result v3

    .line 436
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    iget-object v2, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/dexcom/cgm/activities/R$string;->flurry_evt_Share_BackFill:I

    .line 439
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 438
    invoke-static {v2, v1}, Lcom/flurry/android/a;->logEvent(Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/e;

    .line 441
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v1

    .line 442
    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/dexcom/cgm/d/e;->setFlurryShareBackfill(I)V

    .line 448
    :cond_1
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v1

    .line 449
    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/e;->getFlurryAlertStartTime()J

    move-result-wide v2

    cmp-long v1, v2, v6

    if-eqz v1, :cond_4

    .line 452
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v1

    .line 453
    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/e;->getFlurryAlertStartTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    div-long/2addr v2, v10

    .line 454
    sget-wide v4, Lcom/dexcom/cgm/activities/TrendActivity;->TenReadingsSeconds:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_4

    .line 456
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v1

    .line 457
    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/e;->getFlurryAlertType()Ljava/lang/String;

    move-result-object v1

    .line 458
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v2

    .line 459
    invoke-virtual {v2}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/dexcom/cgm/d/e;->getFlurryAlertEGV(I)I

    move-result v2

    .line 461
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 462
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "EGV #0 which caused the "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 463
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 462
    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_3

    .line 466
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v1

    .line 467
    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/d/e;->getFlurryAlertEGV(I)I

    move-result v1

    .line 468
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "EGV #"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 421
    :cond_2
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v1

    .line 422
    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/dexcom/cgm/i/a;->getCurrentCgmStateInformation()Lcom/dexcom/cgm/h/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/h/a/b;->getEgv()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 424
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v1

    .line 425
    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v1

    .line 426
    invoke-interface {v1}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v1

    .line 427
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/dexcom/cgm/d/e;->setFlurryOutOfRange(J)V

    goto/16 :goto_0

    .line 470
    :cond_3
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->flurry_evt_BG_chg_after_alert:I

    .line 471
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 470
    invoke-static {v0, v3}, Lcom/flurry/android/a;->logEvent(Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/e;

    .line 473
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    .line 474
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/dexcom/cgm/d/e;->setFlurryAlertStartTime(J)V

    .line 477
    :cond_4
    return-void
.end method

.method private refreshAlertSoundStatus()V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 712
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_alertSoundIconVisible:Z

    if-nez v0, :cond_1

    .line 793
    :cond_0
    :goto_0
    return-void

    .line 718
    :cond_1
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getCurrentInterruptionFilter()I

    move-result v3

    .line 720
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    .line 721
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    .line 722
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getActiveAlertSchedule()Lcom/dexcom/cgm/model/DexAlertSchedule;

    move-result-object v4

    .line 724
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendActivity;->getStreamVolume()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 725
    :goto_1
    invoke-virtual {v4}, Lcom/dexcom/cgm/model/DexAlertSchedule;->getAlertScheduleIndex()I

    move-result v5

    if-ne v5, v1, :cond_3

    move v5, v1

    .line 726
    :goto_2
    const/4 v6, 0x3

    if-ne v3, v6, :cond_4

    .line 727
    :goto_3
    invoke-virtual {v4}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isAlwaysSoundEnabled()Z

    move-result v6

    .line 728
    sget v4, Lcom/dexcom/cgm/activities/R$drawable;->ic_alerts_sound:I

    .line 729
    sget v3, Lcom/dexcom/cgm/activities/R$string;->alert_sound:I

    .line 732
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-ne v7, v8, :cond_a

    .line 744
    :goto_4
    if-eqz v2, :cond_5

    .line 746
    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_alerts_total_silence:I

    .line 747
    sget v0, Lcom/dexcom/cgm/activities/R$string;->alert_total_silence:I

    .line 780
    :goto_5
    iget v2, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_currentImageId:I

    if-eq v1, v2, :cond_0

    .line 782
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/TrendActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 783
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 784
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/TrendActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/dexcom/cgm/activities/R$string;->alert_sound_icon_cd_suffix:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 785
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 786
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/TrendActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/dexcom/cgm/activities/R$string;->alert_sound_tooltip_cd_suffix:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 787
    iget-object v4, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_alertSoundStatusView:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 788
    iget-object v4, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_alertSoundStatusView:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 789
    iget-object v2, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_tooltipTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 790
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_tooltipTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 791
    iput v1, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_currentImageId:I

    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 724
    goto :goto_1

    :cond_3
    move v5, v2

    .line 725
    goto :goto_2

    :cond_4
    move v1, v2

    .line 726
    goto :goto_3

    .line 749
    :cond_5
    if-eqz v6, :cond_6

    .line 751
    if-eqz v5, :cond_9

    .line 753
    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_alerts_scheduled_sound:I

    .line 754
    sget v0, Lcom/dexcom/cgm/activities/R$string;->alert_scheduled_sound:I

    goto :goto_5

    .line 757
    :cond_6
    if-eqz v0, :cond_8

    .line 759
    if-eqz v5, :cond_7

    .line 761
    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_alerts_scheduled_no_sound:I

    .line 762
    sget v0, Lcom/dexcom/cgm/activities/R$string;->alert_scheduled_no_sound:I

    goto :goto_5

    .line 766
    :cond_7
    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_alerts_no_sound:I

    .line 767
    sget v0, Lcom/dexcom/cgm/activities/R$string;->alert_no_sound:I

    goto :goto_5

    .line 770
    :cond_8
    if-eqz v5, :cond_9

    .line 772
    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_alerts_scheduled_sound:I

    .line 773
    sget v0, Lcom/dexcom/cgm/activities/R$string;->alert_scheduled_sound:I

    goto :goto_5

    :cond_9
    move v0, v3

    move v1, v4

    goto :goto_5

    :cond_a
    move v2, v1

    goto/16 :goto_4
.end method

.method private refreshMenuList()V
    .locals 3

    .prologue
    .line 393
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->stop_sensor_list_item:I

    .line 394
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListNavView;

    .line 395
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v1

    .line 396
    invoke-interface {v1}, Lcom/dexcom/cgm/i/a;->getSensorInsertionTime()Lcom/dexcom/cgm/k/j;

    move-result-object v1

    sget-object v2, Lcom/dexcom/cgm/k/j;->Unknown:Lcom/dexcom/cgm/k/j;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    .line 395
    :goto_0
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexListNavView;->setDisableAttributes(Z)V

    .line 397
    return-void

    .line 396
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private refreshMeterEntryIcon()V
    .locals 3

    .prologue
    .line 571
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    .line 572
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    .line 573
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getCurrentCgmStateInformation()Lcom/dexcom/cgm/h/a/b;

    move-result-object v0

    .line 574
    invoke-virtual {v0}, Lcom/dexcom/cgm/h/a/b;->getDisplayState()Lcom/dexcom/cgm/h/a/a/b;

    move-result-object v0

    .line 576
    iget-object v1, p0, Lcom/dexcom/cgm/activities/TrendActivity;->toolbar:Landroid/widget/Toolbar;

    invoke-virtual {v1}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$id;->action_meter:I

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 578
    sget-object v2, Lcom/dexcom/cgm/h/a/a/b;->DualBloodDrop:Lcom/dexcom/cgm/h/a/a/b;

    invoke-virtual {v0, v2}, Lcom/dexcom/cgm/h/a/a/b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 580
    sget v0, Lcom/dexcom/cgm/activities/R$drawable;->ic_meter_badge_2_grey:I

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 581
    sget v0, Lcom/dexcom/cgm/activities/R$string;->notification_message_first_of_two_cals:I

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 598
    :goto_0
    return-void

    .line 583
    :cond_0
    sget-object v2, Lcom/dexcom/cgm/h/a/a/b;->OneOfTwoDrops:Lcom/dexcom/cgm/h/a/a/b;

    invoke-virtual {v0, v2}, Lcom/dexcom/cgm/h/a/a/b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 585
    sget v0, Lcom/dexcom/cgm/activities/R$drawable;->ic_meter_badge_1_grey:I

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 586
    sget v0, Lcom/dexcom/cgm/activities/R$string;->notification_message_second_of_two_cals:I

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 588
    :cond_1
    sget-object v2, Lcom/dexcom/cgm/h/a/a/b;->FingerStickRequest:Lcom/dexcom/cgm/h/a/a/b;

    invoke-virtual {v0, v2}, Lcom/dexcom/cgm/h/a/a/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 590
    sget v0, Lcom/dexcom/cgm/activities/R$drawable;->ic_meter_badge_1_grey:I

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 591
    sget v0, Lcom/dexcom/cgm/activities/R$string;->notification_message_calibration_requested:I

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 595
    :cond_2
    sget v0, Lcom/dexcom/cgm/activities/R$drawable;->ic_meter_grey:I

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 596
    sget v0, Lcom/dexcom/cgm/activities/R$string;->main_screen_text_38:I

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private refreshShareIcon()V
    .locals 3

    .prologue
    .line 223
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->toolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$id;->action_share:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 225
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendActivity;->getShareIconID()I

    move-result v1

    .line 226
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 228
    sget v2, Lcom/dexcom/cgm/activities/R$drawable;->ic_share_off:I

    if-ne v1, v2, :cond_1

    .line 230
    sget v1, Lcom/dexcom/cgm/activities/R$string;->main_screen_text_43:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    sget v2, Lcom/dexcom/cgm/activities/R$drawable;->ic_share_off_badge_1:I

    if-ne v1, v2, :cond_2

    .line 234
    sget v1, Lcom/dexcom/cgm/activities/R$string;->main_screen_text_46:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 236
    :cond_2
    sget v2, Lcom/dexcom/cgm/activities/R$drawable;->ic_share_color:I

    if-ne v1, v2, :cond_0

    .line 238
    sget v1, Lcom/dexcom/cgm/activities/R$string;->main_screen_text_44:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private saveTime()V
    .locals 2

    .prologue
    .line 643
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->now:J

    .line 644
    return-void
.end method


# virtual methods
.method public isNetworkAvailable()Z
    .locals 1

    .prologue
    .line 381
    const-string v0, "connectivity"

    .line 382
    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/TrendActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 383
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 384
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    const/4 v0, 0x1

    .line 388
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClickAlerts(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 270
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    .line 271
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_handler:Landroid/os/Handler;

    new-instance v1, Lcom/dexcom/cgm/activities/TrendActivity$4;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/TrendActivity$4;-><init>(Lcom/dexcom/cgm/activities/TrendActivity;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 280
    return-void
.end method

.method public onClickEventEntry(Landroid/view/MenuItem;)V
    .locals 2

    .prologue
    .line 343
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_stayedOnTrendScreen:Z

    .line 344
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/TrendActivity;->startActivity(Landroid/content/Intent;)V

    .line 345
    return-void
.end method

.method public onClickHelp(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 298
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    .line 299
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_handler:Landroid/os/Handler;

    new-instance v1, Lcom/dexcom/cgm/activities/TrendActivity$6;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/TrendActivity$6;-><init>(Lcom/dexcom/cgm/activities/TrendActivity;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 308
    return-void
.end method

.method public onClickHelpTipSensorInsertionVideo(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/TrendActivity;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dexcom/cgm/activities/VideoViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 368
    const-string v1, "VIDEO_URL"

    const-string v2, "https://www.dexcom.com/g5mobile/links/sensor-insertion"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 370
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_stayedOnTrendScreen:Z

    .line 371
    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/TrendActivity;->startActivity(Landroid/content/Intent;)V

    .line 377
    :goto_0
    return-void

    .line 375
    :cond_0
    new-instance v0, Lcom/dexcom/cgm/activities/ToastHelper;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/ToastHelper;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$string;->toast_no_internet:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;->showRedXToast(I)V

    goto :goto_0
.end method

.method public onClickHelpTipTwoMeterEntries(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 356
    new-instance v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$layout;->dialog_first_sensor_session_info:I

    .line 357
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentLayout(I)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 358
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setDismissButtonVisibility(Z)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_first_session_calibration_message_1:I

    .line 359
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/TrendActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 360
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->show()Landroid/app/Dialog;

    .line 361
    return-void
.end method

.method public onClickMenu(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(I)V

    .line 332
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->menu_title:I

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/TrendActivity;->addDebugGestureRecognizerToView(Landroid/view/View;)V

    .line 333
    return-void
.end method

.method public onClickMeter(Landroid/view/MenuItem;)V
    .locals 2

    .prologue
    .line 337
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_stayedOnTrendScreen:Z

    .line 338
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dexcom/cgm/activities/MeterEntryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/TrendActivity;->startActivity(Landroid/content/Intent;)V

    .line 339
    return-void
.end method

.method public onClickSettings(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 284
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    .line 285
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_handler:Landroid/os/Handler;

    new-instance v1, Lcom/dexcom/cgm/activities/TrendActivity$5;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/TrendActivity$5;-><init>(Lcom/dexcom/cgm/activities/TrendActivity;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 294
    return-void
.end method

.method public onClickShare(Landroid/view/MenuItem;)V
    .locals 2

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/TrendActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->flurry_evt_ShareUsed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/a;->logEvent(Ljava/lang/String;)Lcom/flurry/android/e;

    .line 350
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_stayedOnTrendScreen:Z

    .line 351
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/TrendActivity;->startActivity(Landroid/content/Intent;)V

    .line 352
    return-void
.end method

.method public onClickStopSensor(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 312
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    .line 313
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    .line 314
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getSensorInsertionTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/k/j;->Unknown:Lcom/dexcom/cgm/k/j;

    if-eq v0, v1, :cond_0

    .line 316
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    .line 317
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_handler:Landroid/os/Handler;

    new-instance v1, Lcom/dexcom/cgm/activities/TrendActivity$7;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/TrendActivity$7;-><init>(Lcom/dexcom/cgm/activities/TrendActivity;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 327
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/TrendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 95
    const-string v1, "INTERNALCHECK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_internalCheckOccurred:Z

    .line 97
    if-eqz p1, :cond_0

    .line 99
    const-string v0, "NOW"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->now:J

    .line 100
    const-string v0, "m_internalCheckOccurred"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_internalCheckOccurred:Z

    .line 101
    const-string v0, "m_stayedOnTrendScreen"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_stayedOnTrendScreen:Z

    .line 108
    :goto_0
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/TrendActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 110
    const/4 v0, 0x1

    sput-boolean v0, Lcom/dexcom/cgm/activities/TrendActivity;->THIS_CYCLE_LANDSCAPE:Z

    .line 111
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_landscape_trend:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/TrendActivity;->setContentView(I)V

    .line 165
    :goto_1
    return-void

    .line 105
    :cond_0
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendActivity;->saveTime()V

    goto :goto_0

    .line 115
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/dexcom/cgm/activities/TrendActivity;->THIS_CYCLE_LANDSCAPE:Z

    .line 116
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_trend:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/TrendActivity;->setContentView(I)V

    .line 117
    sget v0, Lcom/dexcom/cgm/activities/R$id;->toolbar_trend:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/TrendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->toolbar:Landroid/widget/Toolbar;

    .line 118
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->toolbar:Landroid/widget/Toolbar;

    sget v1, Lcom/dexcom/cgm/activities/R$menu;->menu_trendscreen:I

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->inflateMenu(I)V

    .line 119
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->toolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->hideOverflowMenu()Z

    .line 120
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->toolbar:Landroid/widget/Toolbar;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->main_screen_text_35:I

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setNavigationContentDescription(I)V

    .line 121
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->toolbar:Landroid/widget/Toolbar;

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_menu:I

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setNavigationIcon(I)V

    .line 122
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->toolbar:Landroid/widget/Toolbar;

    new-instance v1, Lcom/dexcom/cgm/activities/TrendActivity$2;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/TrendActivity$2;-><init>(Lcom/dexcom/cgm/activities/TrendActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    sget v0, Lcom/dexcom/cgm/activities/R$id;->drawer_layout:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/TrendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 132
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    new-instance v1, Lcom/dexcom/cgm/activities/TrendActivity$3;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/TrendActivity$3;-><init>(Lcom/dexcom/cgm/activities/TrendActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 155
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/TrendActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_context:Landroid/content/Context;

    .line 158
    sget v0, Lcom/dexcom/cgm/activities/R$id;->alertSoundStatus:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/TrendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_alertSoundStatusView:Landroid/widget/ImageView;

    .line 159
    sget v0, Lcom/dexcom/cgm/activities/R$id;->alert_sound_icon_tooltip:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/TrendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_alertSoundTooltipView:Landroid/view/View;

    .line 160
    sget v0, Lcom/dexcom/cgm/activities/R$id;->alert_sound_tooltip_text:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/TrendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_tooltipTextView:Landroid/widget/TextView;

    .line 161
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_alertSoundStatusView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_alertStatusListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/TrendActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_notificationManager:Landroid/app/NotificationManager;

    .line 163
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_alertSoundTooltipView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 209
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 211
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/TrendActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 214
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_refreshAlertSoundIconTask:Lcom/dexcom/cgm/activities/TrendActivity$HandlerIntervalTask;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/TrendActivity$HandlerIntervalTask;->stop()V

    .line 216
    :cond_0
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendActivity;->saveTime()V

    .line 217
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_refreshCallback:Lcom/dexcom/cgm/h/c;

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/i/a;->unregisterCgmDataUpdateCallback(Lcom/dexcom/cgm/h/c;)V

    .line 219
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 170
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 172
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 173
    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/TrendActivity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 174
    if-eqz v0, :cond_1

    .line 176
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dexcom/cgm/activities/PermissionCheckActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 177
    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/TrendActivity;->startActivity(Landroid/content/Intent;)V

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->startServices()V

    .line 182
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_refreshCallback:Lcom/dexcom/cgm/h/c;

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/i/a;->registerCgmDataUpdateCallback(Lcom/dexcom/cgm/h/c;)V

    .line 185
    invoke-static {}, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->shouldShowWhatsNew()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 187
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/TrendActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 191
    :cond_2
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/TrendActivity;->refreshUi()V

    .line 192
    iput-boolean v2, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_stayedOnTrendScreen:Z

    .line 194
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/TrendActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendActivity;->refreshAlertSoundStatus()V

    .line 198
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_refreshAlertSoundIconTask:Lcom/dexcom/cgm/activities/TrendActivity$HandlerIntervalTask;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/TrendActivity$HandlerIntervalTask;->hasTask()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_refreshAlertSoundIconTask:Lcom/dexcom/cgm/activities/TrendActivity$HandlerIntervalTask;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_refreshAlertSoundIcon:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/dexcom/cgm/activities/TrendActivity$HandlerIntervalTask;->repeatWithInterval(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 658
    const-string v0, "NOW"

    iget-wide v2, p0, Lcom/dexcom/cgm/activities/TrendActivity;->now:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 659
    const-string v0, "m_internalCheckOccurred"

    iget-boolean v1, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_internalCheckOccurred:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 660
    const-string v0, "m_stayedOnTrendScreen"

    iget-boolean v1, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_stayedOnTrendScreen:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 661
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 662
    return-void
.end method

.method public refreshAlertSoundVisibility()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 485
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    .line 486
    invoke-interface {v0}, Lcom/dexcom/cgm/h/a;->getCurrentCgmStateInformation()Lcom/dexcom/cgm/h/a/b;

    move-result-object v0

    .line 487
    invoke-virtual {v0}, Lcom/dexcom/cgm/h/a/b;->getDisplayState()Lcom/dexcom/cgm/h/a/a/b;

    move-result-object v0

    .line 490
    sget-object v1, Lcom/dexcom/cgm/h/a/a/b;->None:Lcom/dexcom/cgm/h/a/a/b;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/dexcom/cgm/h/a/a/b;->PairNewTransmitter:Lcom/dexcom/cgm/h/a/a/b;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/dexcom/cgm/h/a/a/b;->TransmitterPairing:Lcom/dexcom/cgm/h/a/a/b;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/dexcom/cgm/h/a/a/b;->TransmitterNotFound:Lcom/dexcom/cgm/h/a/a/b;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/dexcom/cgm/h/a/a/b;->TransmitterFailed:Lcom/dexcom/cgm/h/a/a/b;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/dexcom/cgm/h/a/a/b;->SensorRemoved:Lcom/dexcom/cgm/h/a/a/b;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/dexcom/cgm/h/a/a/b;->StartUpPeriod:Lcom/dexcom/cgm/h/a/a/b;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/dexcom/cgm/h/a/a/b;->AberrationDetected:Lcom/dexcom/cgm/h/a/a/b;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/dexcom/cgm/h/a/a/b;->CountsAberration:Lcom/dexcom/cgm/h/a/a/b;

    if-ne v0, v1, :cond_1

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_alertSoundStatusView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 502
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_alertSoundTooltipView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 503
    iput-boolean v2, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_alertSoundIconVisible:Z

    .line 511
    :goto_0
    return-void

    .line 508
    :cond_1
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_alertSoundStatusView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 509
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;->m_alertSoundIconVisible:Z

    goto :goto_0
.end method

.method public refreshUi()V
    .locals 1

    .prologue
    .line 515
    sget-boolean v0, Lcom/dexcom/cgm/activities/TrendActivity;->THIS_CYCLE_LANDSCAPE:Z

    if-nez v0, :cond_0

    .line 517
    new-instance v0, Lcom/dexcom/cgm/activities/TrendActivity$8;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/TrendActivity$8;-><init>(Lcom/dexcom/cgm/activities/TrendActivity;)V

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/TrendActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 530
    :cond_0
    return-void
.end method
