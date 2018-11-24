.class public Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "RemoteMonitoringTutorialActivity.java"


# instance fields
.field private final REQUEST_IGNORE_OPTIMIZATIONS:I

.field private m_handler:Landroid/os/Handler;

.field private m_hasCompletedShareTutorial:Z

.field private m_permissionsButtonFree:Z

.field private m_positiveButtonClickRunnable:Ljava/lang/Runnable;

.field private m_screenNum:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 34
    iput v1, p0, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity;->m_screenNum:I

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity;->m_hasCompletedShareTutorial:Z

    .line 36
    const/16 v0, 0x63

    iput v0, p0, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity;->REQUEST_IGNORE_OPTIMIZATIONS:I

    .line 37
    iput-boolean v1, p0, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity;->m_permissionsButtonFree:Z

    .line 38
    new-instance v0, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity$1;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity$1;-><init>(Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity;->m_positiveButtonClickRunnable:Ljava/lang/Runnable;

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity;->m_handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity;Z)Z
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity;->m_permissionsButtonFree:Z

    return p1
.end method

.method private fireOptimizationsIntent()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 256
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 257
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 258
    const-string v2, "android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "package:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 260
    const/16 v1, 0x63

    invoke-virtual {p0, v0, v1}, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 261
    return-void
.end method

.method private onCompletion()V
    .locals 3

    .prologue
    .line 81
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getShareComponent()Lcom/dexcom/cgm/share/ShareService;

    move-result-object v0

    .line 83
    invoke-interface {v0}, Lcom/dexcom/cgm/share/ShareService;->listFollowers()Ljava/util/List;

    move-result-object v0

    .line 84
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 85
    :goto_0
    if-nez v0, :cond_1

    .line 87
    const-class v0, Lcom/dexcom/cgm/activities/share/InviteFollowersActivity;

    .line 95
    :goto_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    const/high16 v0, 0x4000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const/high16 v2, 0x10000000

    .line 97
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 98
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity;->startActivity(Landroid/content/Intent;)V

    .line 99
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity;->finish()V

    .line 100
    return-void

    .line 84
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 91
    :cond_1
    const-class v0, Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    goto :goto_1
.end method


# virtual methods
.method public changeFragment()V
    .locals 6

    .prologue
    .line 104
    new-instance v0, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity$ShareActivityFragment;

    invoke-direct {v0}, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity$ShareActivityFragment;-><init>()V

    .line 105
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 107
    iget v2, p0, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity;->m_screenNum:I

    packed-switch v2, :pswitch_data_0

    .line 131
    :goto_0
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity$ShareActivityFragment;->setArguments(Landroid/os/Bundle;)V

    .line 132
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 133
    sget v2, Lcom/dexcom/cgm/activities/R$anim;->slide_in_right:I

    sget v3, Lcom/dexcom/cgm/activities/R$anim;->slide_out_left:I

    sget v4, Lcom/dexcom/cgm/activities/R$anim;->slide_in_left:I

    sget v5, Lcom/dexcom/cgm/activities/R$anim;->slide_out_right:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 137
    sget v2, Lcom/dexcom/cgm/activities/R$id;->shareFragmentContainer:I

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 138
    iget v0, p0, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity;->m_screenNum:I

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 140
    const-string v0, ""

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 142
    :cond_0
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 143
    return-void

    .line 110
    :pswitch_0
    const-string v2, "LAYOUT"

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->remote_monitoring_tutorial_1:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 111
    const-string v2, "SCREEN_NAME"

    const-string v3, "ShareTutorialWelcome"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :pswitch_1
    const-string v2, "LAYOUT"

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->remote_monitoring_tutorial_2:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 115
    const-string v2, "SCREEN_NAME"

    const-string v3, "ShareTutorialInternet"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :pswitch_2
    const-string v2, "LAYOUT"

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->remote_monitoring_share_and_doze:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 119
    const-string v2, "SCREEN_NAME"

    const-string v3, "ShareTutorialDoze"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :pswitch_3
    const-string v2, "LAYOUT"

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->remote_monitoring_tutorial_3:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 123
    const-string v2, "SCREEN_NAME"

    const-string v3, "ShareTutorialSharing"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :pswitch_4
    const-string v2, "LAYOUT"

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->remote_monitoring_tutorial_4:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 127
    const-string v2, "SCREEN_NAME"

    const-string v3, "ShareTutorialThingsHappen"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x5dc

    .line 209
    packed-switch p1, :pswitch_data_0

    .line 226
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 229
    :goto_0
    return-void

    .line 212
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 214
    new-instance v0, Lcom/dexcom/cgm/activities/ToastHelper;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/ToastHelper;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$string;->optimizations_permission_enabled:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;->showGreenCheckToast(I)V

    .line 216
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity;->m_handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity;->m_positiveButtonClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 220
    :cond_0
    new-instance v0, Lcom/dexcom/cgm/activities/ToastHelper;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/ToastHelper;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$string;->optimizations_permission_denied:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;->showRedXToast(I)V

    .line 222
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity;->m_handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity;->m_positiveButtonClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 209
    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 198
    iget v0, p0, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity;->m_screenNum:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity;->m_permissionsButtonFree:Z

    .line 200
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity;->m_handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity;->m_positiveButtonClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 202
    :cond_0
    iget v0, p0, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity;->m_screenNum:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity;->m_screenNum:I

    .line 203
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 204
    return-void
.end method

.method public onClickCancel(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity;->finish()V

    .line 194
    return-void
.end method

.method public onClickIgnoreOptimizations(Landroid/view/View;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity;->m_permissionsButtonFree:Z

    if-eqz v0, :cond_0

    .line 151
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 152
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity;->m_permissionsButtonFree:Z

    .line 155
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity;->fireOptimizationsIntent()V

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity;->onClickPositive(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onClickLetsGetStarted(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity;->m_hasCompletedShareTutorial:Z

    if-nez v0, :cond_0

    .line 183
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    .line 184
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/d/e;->setCompletedShareTutorial(Z)V

    .line 186
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity;->onCompletion()V

    .line 188
    :cond_0
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity;->finish()V

    .line 189
    return-void
.end method

.method public onClickPositive(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 166
    iget v0, p0, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity;->m_screenNum:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 168
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 171
    iget v0, p0, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity;->m_screenNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity;->m_screenNum:I

    .line 174
    :cond_0
    iget v0, p0, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity;->m_screenNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity;->m_screenNum:I

    .line 175
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity;->changeFragment()V

    .line 176
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 52
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_share_tutorial:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity;->setContentView(I)V

    .line 54
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    .line 55
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/d/e;->hasCompletedShareTutorial()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity;->m_hasCompletedShareTutorial:Z

    .line 57
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity;->m_hasCompletedShareTutorial:Z

    if-eqz v0, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity;->onCompletion()V

    .line 76
    :goto_0
    return-void

    .line 63
    :cond_0
    new-instance v0, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity$ShareActivityFragment;

    invoke-direct {v0}, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity$ShareActivityFragment;-><init>()V

    .line 64
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 65
    const-string v2, "LAYOUT"

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->remote_monitoring_tutorial_1:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 66
    const-string v2, "SCREEN_NAME"

    const-string v3, "ShareTutorialWelcome"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity$ShareActivityFragment;->setArguments(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 69
    sget v2, Lcom/dexcom/cgm/activities/R$anim;->slide_in_left:I

    sget v3, Lcom/dexcom/cgm/activities/R$anim;->slide_out_right:I

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 73
    sget v2, Lcom/dexcom/cgm/activities/R$id;->shareFragmentContainer:I

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 74
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method
