.class public Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "WhatsNewFragmentActivity.java"

# interfaces
.implements Lcom/dexcom/cgm/activities/WhatsNewFragment$WhatsNewFragmentHolder;


# static fields
.field private static final WHATS_NEW_INTERNAL_VERSION:I = 0x1


# instance fields
.field private final MIN_MOVEMENT_VALUE:I

.field private m_circleArray:Lcom/dexcom/cgm/activities/CircleArray;

.field m_currentScreen:Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;

.field m_currentWhatsNewFragment:Landroid/support/v4/app/Fragment;

.field private m_rightToLeftSwipe:Z

.field private m_toolbar:Landroid/widget/Toolbar;

.field private secondsSpent:I

.field private timerStart:J

.field vPager:Landroid/support/v4/view/ViewPager;

.field private x1:F

.field private x2:F

.field private y1:F

.field private y2:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 39
    const/16 v0, 0x64

    iput v0, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->MIN_MOVEMENT_VALUE:I

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->timerStart:J

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->secondsSpent:I

    return-void
.end method

.method static synthetic access$000(Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->completeWhatsNew()V

    return-void
.end method

.method private completeWhatsNew()V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->markWhatsNewAsCompleted()V

    .line 155
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->finish()V

    .line 156
    return-void
.end method

.method private static isFreshInstall()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 287
    invoke-static {}, Lcom/dexcom/cgm/activities/TheApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 290
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-wide v2, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 291
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-wide v4, v1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 296
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private markWhatsNewAsCompleted()V
    .locals 2

    .prologue
    .line 160
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/d/e;->setWhatsNewVersionCompleted(I)V

    .line 161
    return-void
.end method

.method public static shouldShowWhatsNew()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 303
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/dexcom/cgm/i/a;->getCurrentCgmStateInformation()Lcom/dexcom/cgm/h/a/b;

    move-result-object v2

    .line 304
    invoke-virtual {v2}, Lcom/dexcom/cgm/h/a/b;->getEgv()I

    move-result v3

    .line 309
    invoke-static {}, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->isFreshInstall()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 311
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/d/e;->getWhatsNewVersionCompleted()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 313
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/dexcom/cgm/d/e;->setWhatsNewVersionCompleted(I)V

    .line 349
    :cond_0
    :goto_0
    return v0

    .line 319
    :cond_1
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v4

    invoke-interface {v4}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dexcom/cgm/d/e;->getWhatsNewVersionCompleted()I

    move-result v4

    if-gtz v4, :cond_0

    .line 326
    invoke-virtual {v2}, Lcom/dexcom/cgm/h/a/b;->getDisplayState()Lcom/dexcom/cgm/h/a/a/b;

    move-result-object v4

    sget-object v5, Lcom/dexcom/cgm/h/a/a/b;->DualBloodDrop:Lcom/dexcom/cgm/h/a/a/b;

    invoke-virtual {v4, v5}, Lcom/dexcom/cgm/h/a/a/b;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 327
    invoke-virtual {v2}, Lcom/dexcom/cgm/h/a/b;->getDisplayState()Lcom/dexcom/cgm/h/a/a/b;

    move-result-object v4

    sget-object v5, Lcom/dexcom/cgm/h/a/a/b;->OneOfTwoDrops:Lcom/dexcom/cgm/h/a/a/b;

    invoke-virtual {v4, v5}, Lcom/dexcom/cgm/h/a/a/b;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 335
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v4

    invoke-interface {v4}, Lcom/dexcom/cgm/i/a;->getActiveAlertSettings()Lcom/dexcom/cgm/i/a/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dexcom/cgm/i/a/a;->getUrgentLow()Lcom/dexcom/cgm/i/a/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dexcom/cgm/i/a/b;->getThreshold()I

    move-result v4

    if-gt v3, v4, :cond_2

    .line 336
    invoke-virtual {v2}, Lcom/dexcom/cgm/h/a/b;->getDisplayState()Lcom/dexcom/cgm/h/a/a/b;

    move-result-object v4

    sget-object v5, Lcom/dexcom/cgm/h/a/a/b;->EGVAvailable:Lcom/dexcom/cgm/h/a/a/b;

    if-eq v4, v5, :cond_0

    .line 341
    :cond_2
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v4

    invoke-interface {v4}, Lcom/dexcom/cgm/i/a;->getActiveAlertSettings()Lcom/dexcom/cgm/i/a/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dexcom/cgm/i/a/a;->getUserLow()Lcom/dexcom/cgm/i/a/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dexcom/cgm/i/a/b;->getThreshold()I

    move-result v4

    if-gt v3, v4, :cond_3

    .line 342
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v3

    invoke-interface {v3}, Lcom/dexcom/cgm/i/a;->getActiveAlertSettings()Lcom/dexcom/cgm/i/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dexcom/cgm/i/a/a;->getUserLow()Lcom/dexcom/cgm/i/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dexcom/cgm/i/a/b;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 343
    invoke-virtual {v2}, Lcom/dexcom/cgm/h/a/b;->getDisplayState()Lcom/dexcom/cgm/h/a/a/b;

    move-result-object v2

    sget-object v3, Lcom/dexcom/cgm/h/a/a/b;->EGVAvailable:Lcom/dexcom/cgm/h/a/a/b;

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    .line 349
    goto :goto_0
.end method


# virtual methods
.method protected animateTransition()V
    .locals 2

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->m_rightToLeftSwipe:Z

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;->ordinal()I

    move-result v0

    invoke-static {}, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;->getNumberOfScreens()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->getNextFragment()V

    .line 150
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->completeWhatsNew()V

    goto :goto_0

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;->ordinal()I

    move-result v0

    if-lez v0, :cond_2

    .line 143
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 147
    :cond_2
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->completeWhatsNew()V

    goto :goto_0
.end method

.method public changeFragment()V
    .locals 5

    .prologue
    .line 204
    new-instance v0, Lcom/dexcom/cgm/activities/WhatsNewFragment;

    invoke-direct {v0}, Lcom/dexcom/cgm/activities/WhatsNewFragment;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->m_currentWhatsNewFragment:Landroid/support/v4/app/Fragment;

    .line 205
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 206
    sget-object v1, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$2;->$SwitchMap$com$dexcom$cgm$activities$WhatsNewFragmentActivity$WhatsNewScreenNames:[I

    iget-object v2, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;

    invoke-virtual {v2}, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 226
    :goto_0
    const-string v1, "SCREEN_NAME"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WhatsNew."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;

    invoke-virtual {v3}, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->m_currentWhatsNewFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 229
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 230
    sget v1, Lcom/dexcom/cgm/activities/R$anim;->slide_in_right:I

    .line 231
    sget v2, Lcom/dexcom/cgm/activities/R$anim;->slide_out_left:I

    .line 232
    sget v3, Lcom/dexcom/cgm/activities/R$anim;->slide_in_left:I

    sget v4, Lcom/dexcom/cgm/activities/R$anim;->slide_out_right:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 237
    sget v1, Lcom/dexcom/cgm/activities/R$id;->whats_new_fragment_container:I

    iget-object v2, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->m_currentWhatsNewFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 238
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 239
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 241
    return-void

    .line 209
    :pswitch_0
    const-string v1, "LAYOUT"

    sget v2, Lcom/dexcom/cgm/activities/R$layout;->fragment_whats_new_important_notice:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 210
    iget-object v1, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->m_toolbar:Landroid/widget/Toolbar;

    sget v2, Lcom/dexcom/cgm/activities/R$string;->whats_new_important_notice_title:I

    invoke-virtual {v1, v2}, Landroid/widget/Toolbar;->setTitle(I)V

    goto :goto_0

    .line 213
    :pswitch_1
    const-string v1, "LAYOUT"

    sget v2, Lcom/dexcom/cgm/activities/R$layout;->fragment_whats_new_critical_alerts:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 214
    iget-object v1, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->m_toolbar:Landroid/widget/Toolbar;

    sget v2, Lcom/dexcom/cgm/activities/R$string;->whats_new_title:I

    invoke-virtual {v1, v2}, Landroid/widget/Toolbar;->setTitle(I)V

    goto :goto_0

    .line 217
    :pswitch_2
    const-string v1, "LAYOUT"

    sget v2, Lcom/dexcom/cgm/activities/R$layout;->fragment_whats_new_alert_schedule:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 218
    iget-object v1, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->m_toolbar:Landroid/widget/Toolbar;

    sget v2, Lcom/dexcom/cgm/activities/R$string;->whats_new_title:I

    invoke-virtual {v1, v2}, Landroid/widget/Toolbar;->setTitle(I)V

    goto :goto_0

    .line 221
    :pswitch_3
    const-string v1, "LAYOUT"

    sget v2, Lcom/dexcom/cgm/activities/R$layout;->fragment_whats_new_sound_icons:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 222
    iget-object v1, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->m_toolbar:Landroid/widget/Toolbar;

    sget v2, Lcom/dexcom/cgm/activities/R$string;->whats_new_title:I

    invoke-virtual {v1, v2}, Landroid/widget/Toolbar;->setTitle(I)V

    goto :goto_0

    .line 206
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getNextFragment()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;->getNext()Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;

    .line 247
    iget-object v0, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->m_circleArray:Lcom/dexcom/cgm/activities/CircleArray;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/CircleArray;->increment()V

    .line 248
    iget-object v1, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->m_toolbar:Landroid/widget/Toolbar;

    iget-object v0, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;->ordinal()I

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/dexcom/cgm/activities/R$string;->whats_new_important_notice_title:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Toolbar;->setTitle(I)V

    .line 249
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->changeFragment()V

    .line 250
    return-void

    .line 248
    :cond_0
    sget v0, Lcom/dexcom/cgm/activities/R$string;->whats_new_title:I

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;->ordinal()I

    move-result v0

    if-nez v0, :cond_0

    .line 257
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->completeWhatsNew()V

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;->getPrevious()Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;

    .line 260
    iget-object v0, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->m_circleArray:Lcom/dexcom/cgm/activities/CircleArray;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/CircleArray;->decrement()V

    .line 261
    iget-object v1, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->m_toolbar:Landroid/widget/Toolbar;

    iget-object v0, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;->ordinal()I

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/dexcom/cgm/activities/R$string;->whats_new_important_notice_title:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Toolbar;->setTitle(I)V

    .line 262
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 263
    return-void

    .line 261
    :cond_1
    sget v0, Lcom/dexcom/cgm/activities/R$string;->whats_new_title:I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 167
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_whats_new:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->setContentView(I)V

    .line 168
    sget v0, Lcom/dexcom/cgm/activities/R$id;->toolbar_whats_new:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->m_toolbar:Landroid/widget/Toolbar;

    .line 169
    iget-object v0, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->m_toolbar:Landroid/widget/Toolbar;

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_close:I

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setNavigationIcon(I)V

    .line 170
    iget-object v0, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->m_toolbar:Landroid/widget/Toolbar;

    new-instance v1, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$1;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$1;-><init>(Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v0, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->m_toolbar:Landroid/widget/Toolbar;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->whats_new_close_content_desc:I

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setNavigationContentDescription(I)V

    .line 180
    new-instance v0, Landroid/support/v4/view/ViewPager;

    invoke-direct {v0, p0}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->vPager:Landroid/support/v4/view/ViewPager;

    .line 181
    iget-object v0, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->vPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 183
    if-eqz p1, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 188
    :cond_0
    sget-object v0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;->IMPORTANT_NOTICE:Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;

    .line 189
    new-instance v0, Lcom/dexcom/cgm/activities/WhatsNewFragment;

    invoke-direct {v0}, Lcom/dexcom/cgm/activities/WhatsNewFragment;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->m_currentWhatsNewFragment:Landroid/support/v4/app/Fragment;

    .line 190
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 191
    const-string v1, "LAYOUT"

    sget v2, Lcom/dexcom/cgm/activities/R$layout;->fragment_whats_new_important_notice:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 192
    const-string v1, "SCREEN_NAME"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ImportantMessage."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;

    invoke-virtual {v3}, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->m_currentWhatsNewFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 194
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$id;->whats_new_fragment_container:I

    iget-object v2, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->m_currentWhatsNewFragment:Landroid/support/v4/app/Fragment;

    .line 195
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 197
    sget v0, Lcom/dexcom/cgm/activities/R$id;->circleArray:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/CircleArray;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->m_circleArray:Lcom/dexcom/cgm/activities/CircleArray;

    .line 198
    iget-object v0, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->m_circleArray:Lcom/dexcom/cgm/activities/CircleArray;

    invoke-static {}, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;->getNumberOfScreens()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/CircleArray;->setNumCircles(I)V

    .line 200
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-wide v2, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->timerStart:J

    sub-long/2addr v0, v2

    .line 91
    iget v2, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->secondsSpent:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->secondsSpent:I

    .line 92
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    .line 93
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->secondsSpent:I

    .line 94
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/d/e;->setWhatsNewTimeSpent(I)V

    .line 95
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 96
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 280
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 282
    invoke-static {}, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;->values()[Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;

    move-result-object v0

    const-string v1, "screen_num"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;

    .line 283
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 82
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->timerStart:J

    .line 84
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/dexcom/cgm/d/e;->whatsNewTimeSpent()I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->secondsSpent:I

    .line 86
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 274
    const-string v0, "screen_num"

    iget-object v1, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity$WhatsNewScreenNames;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 275
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/high16 v3, 0x42c80000    # 100.0f

    .line 102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 123
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_1
    return v1

    .line 105
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->x1:F

    .line 106
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->y1:F

    goto :goto_0

    .line 109
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->x2:F

    .line 110
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->y2:F

    .line 111
    iget v0, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->x1:F

    iget v2, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->x2:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    .line 113
    iget v0, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->x1:F

    iget v2, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->x2:F

    sub-float/2addr v0, v2

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->m_rightToLeftSwipe:Z

    .line 114
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->animateTransition()V

    .line 117
    :cond_1
    iget v0, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->y1:F

    iget v2, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->y2:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    goto :goto_1

    :cond_2
    move v0, v1

    .line 113
    goto :goto_2

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCurrentFragment(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/dexcom/cgm/activities/WhatsNewFragmentActivity;->m_currentWhatsNewFragment:Landroid/support/v4/app/Fragment;

    .line 269
    return-void
.end method
