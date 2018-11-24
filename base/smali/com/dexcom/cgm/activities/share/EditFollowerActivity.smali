.class public Lcom/dexcom/cgm/activities/share/EditFollowerActivity;
.super Landroid/app/Activity;
.source "EditFollowerActivity.java"


# instance fields
.field private linearLayout:Landroid/widget/LinearLayout;

.field private m_follower:Lcom/dexcom/cgm/model/Follower;

.field private m_shareService:Lcom/dexcom/cgm/share/ShareService;

.field private progressBar:Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getShareComponent()Lcom/dexcom/cgm/share/ShareService;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->m_shareService:Lcom/dexcom/cgm/share/ShareService;

    return-void
.end method

.method static synthetic access$000(Lcom/dexcom/cgm/activities/share/EditFollowerActivity;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->setupToolbar()V

    return-void
.end method

.method static synthetic access$100(Lcom/dexcom/cgm/activities/share/EditFollowerActivity;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->setupNicknameField()V

    return-void
.end method

.method static synthetic access$1000(Lcom/dexcom/cgm/activities/share/EditFollowerActivity;Z)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->saveTrendGraphAccess(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/dexcom/cgm/activities/share/EditFollowerActivity;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->removeFollower()V

    return-void
.end method

.method static synthetic access$1200(Lcom/dexcom/cgm/activities/share/EditFollowerActivity;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->toggleFollowerSharing()V

    return-void
.end method

.method static synthetic access$200(Lcom/dexcom/cgm/activities/share/EditFollowerActivity;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->setupSubText()V

    return-void
.end method

.method static synthetic access$300(Lcom/dexcom/cgm/activities/share/EditFollowerActivity;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->setupTrendGraphSwitch()V

    return-void
.end method

.method static synthetic access$400(Lcom/dexcom/cgm/activities/share/EditFollowerActivity;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->setupSharingToggleButton()V

    return-void
.end method

.method static synthetic access$500(Lcom/dexcom/cgm/activities/share/EditFollowerActivity;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->setupSettingsList()V

    return-void
.end method

.method static synthetic access$600(Lcom/dexcom/cgm/activities/share/EditFollowerActivity;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->saveNicknameOnServer(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/dexcom/cgm/activities/share/EditFollowerActivity;)Lcom/dexcom/cgm/model/Follower;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->m_follower:Lcom/dexcom/cgm/model/Follower;

    return-object v0
.end method

.method static synthetic access$800(Lcom/dexcom/cgm/activities/share/EditFollowerActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->linearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/dexcom/cgm/activities/share/EditFollowerActivity;)Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->progressBar:Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;

    return-object v0
.end method

.method private getFollower(Ljava/util/UUID;)Lcom/dexcom/cgm/model/Follower;
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->m_shareService:Lcom/dexcom/cgm/share/ShareService;

    invoke-interface {v0}, Lcom/dexcom/cgm/share/ShareService;->listFollowers()Ljava/util/List;

    move-result-object v0

    .line 83
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/Follower;

    .line 85
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Follower;->getSubscriptionID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readFollowerFromDatabase(Ljava/util/UUID;)V
    .locals 3

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->getFollower(Ljava/util/UUID;)Lcom/dexcom/cgm/model/Follower;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->m_follower:Lcom/dexcom/cgm/model/Follower;

    .line 72
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->m_follower:Lcom/dexcom/cgm/model/Follower;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Developer error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 75
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was given a subscriptionID ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") that was not present in the database\'s list of Followers. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    return-void
.end method

.method private refreshFollowerInfo()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->m_shareService:Lcom/dexcom/cgm/share/ShareService;

    invoke-interface {v0}, Lcom/dexcom/cgm/share/ShareService;->listFollowersFromServer()Ljava/util/List;

    .line 101
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->m_follower:Lcom/dexcom/cgm/model/Follower;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Follower;->getSubscriptionID()Ljava/util/UUID;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->readFollowerFromDatabase(Ljava/util/UUID;)V

    .line 102
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->refreshUI()V

    .line 103
    return-void
.end method

.method private refreshUI()V
    .locals 1

    .prologue
    .line 111
    new-instance v0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$1;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$1;-><init>(Lcom/dexcom/cgm/activities/share/EditFollowerActivity;)V

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 124
    return-void
.end method

.method private removeFollower()V
    .locals 3

    .prologue
    .line 436
    new-instance v0, Lcom/dexcom/cgm/activities/ToastHelper;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/ToastHelper;-><init>(Landroid/app/Activity;)V

    .line 440
    :try_start_0
    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->m_shareService:Lcom/dexcom/cgm/share/ShareService;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->m_follower:Lcom/dexcom/cgm/model/Follower;

    invoke-virtual {v2}, Lcom/dexcom/cgm/model/Follower;->getContactID()Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/dexcom/cgm/share/ShareService;->removeFollower(Ljava/util/UUID;)V

    .line 442
    sget v1, Lcom/dexcom/cgm/activities/R$string;->toast_removing_follower:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;->showGreenCheckToast(I)V

    .line 444
    new-instance v1, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$11;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$11;-><init>(Lcom/dexcom/cgm/activities/share/EditFollowerActivity;)V

    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/ServerUnreachableWSException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/ServiceUnavailableWSException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/ContactAlreadyDeletedWSException; {:try_start_0 .. :try_end_0} :catch_2

    .line 477
    :goto_0
    return-void

    .line 463
    :catch_0
    move-exception v1

    sget v1, Lcom/dexcom/cgm/activities/R$string;->toast_no_internet:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;->showRedXToast(I)V

    goto :goto_0

    .line 467
    :catch_1
    move-exception v1

    :goto_1
    sget v1, Lcom/dexcom/cgm/activities/R$string;->toast_server_error:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;->showRedXToast(I)V

    goto :goto_0

    .line 475
    :catch_2
    move-exception v1

    sget v1, Lcom/dexcom/cgm/activities/R$string;->toast_follower_already_removed:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;->showRedXToast(I)V

    goto :goto_0

    .line 467
    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method private saveNicknameOnServer(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 322
    new-instance v1, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$7;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$7;-><init>(Lcom/dexcom/cgm/activities/share/EditFollowerActivity;)V

    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 334
    new-instance v1, Lcom/dexcom/cgm/activities/ToastHelper;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/ToastHelper;-><init>(Landroid/app/Activity;)V

    .line 338
    :try_start_0
    iget-object v2, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->m_shareService:Lcom/dexcom/cgm/share/ShareService;

    invoke-interface {v2, p1}, Lcom/dexcom/cgm/share/ShareService;->doesFollowerExistByName(Ljava/lang/String;)Z

    move-result v2

    .line 339
    if-eqz v2, :cond_0

    .line 341
    sget v2, Lcom/dexcom/cgm/activities/R$string;->toast_follower_already_exists:I

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/activities/ToastHelper;->showRedXToast(I)V
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/ServerUnreachableWSException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/ServiceUnavailableWSException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException; {:try_start_0 .. :try_end_0} :catch_2

    .line 368
    :goto_0
    new-instance v1, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$8;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$8;-><init>(Lcom/dexcom/cgm/activities/share/EditFollowerActivity;)V

    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 377
    return v0

    .line 346
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->m_shareService:Lcom/dexcom/cgm/share/ShareService;

    iget-object v3, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->m_follower:Lcom/dexcom/cgm/model/Follower;

    invoke-virtual {v3}, Lcom/dexcom/cgm/model/Follower;->getContactID()Ljava/util/UUID;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/dexcom/cgm/share/ShareService;->updateFollowerName(Ljava/util/UUID;Ljava/lang/String;)V

    .line 350
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->refreshFollowerInfo()V

    .line 352
    sget v2, Lcom/dexcom/cgm/activities/R$string;->toast_updating_follower:I

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/activities/ToastHelper;->showGreenCheckToast(I)V
    :try_end_1
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/ServerUnreachableWSException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/ServiceUnavailableWSException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException; {:try_start_1 .. :try_end_1} :catch_2

    .line 354
    const/4 v0, 0x1

    goto :goto_0

    .line 359
    :catch_0
    move-exception v2

    sget v2, Lcom/dexcom/cgm/activities/R$string;->toast_no_internet:I

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/activities/ToastHelper;->showRedXToast(I)V

    goto :goto_0

    .line 364
    :catch_1
    move-exception v2

    :goto_1
    sget v2, Lcom/dexcom/cgm/activities/R$string;->toast_server_error:I

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/activities/ToastHelper;->showRedXToast(I)V

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_1
.end method

.method private saveTrendGraphAccess(Z)V
    .locals 3

    .prologue
    .line 284
    new-instance v0, Lcom/dexcom/cgm/activities/ToastHelper;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/ToastHelper;-><init>(Landroid/app/Activity;)V

    .line 288
    :try_start_0
    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->m_shareService:Lcom/dexcom/cgm/share/ShareService;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->m_follower:Lcom/dexcom/cgm/model/Follower;

    .line 289
    invoke-virtual {v2}, Lcom/dexcom/cgm/model/Follower;->getSubscriptionID()Ljava/util/UUID;

    move-result-object v2

    .line 288
    invoke-interface {v1, v2, p1}, Lcom/dexcom/cgm/share/ShareService;->updateFollowerTrendGraphPermission(Ljava/util/UUID;Z)V

    .line 291
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->refreshFollowerInfo()V

    .line 293
    sget v1, Lcom/dexcom/cgm/activities/R$string;->toast_updating_follower:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;->showGreenCheckToast(I)V
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/ServerUnreachableWSException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/ServiceUnavailableWSException; {:try_start_0 .. :try_end_0} :catch_1

    .line 316
    :goto_0
    return-void

    .line 298
    :catch_0
    move-exception v1

    sget v1, Lcom/dexcom/cgm/activities/R$string;->toast_no_internet:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;->showRedXToast(I)V

    .line 306
    :goto_1
    new-instance v0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$6;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$6;-><init>(Lcom/dexcom/cgm/activities/share/EditFollowerActivity;)V

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 302
    :catch_1
    move-exception v1

    :goto_2
    sget v1, Lcom/dexcom/cgm/activities/R$string;->toast_server_error:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;->showRedXToast(I)V

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_2
.end method

.method private setupNicknameField()V
    .locals 2

    .prologue
    .line 142
    sget v0, Lcom/dexcom/cgm/activities/R$id;->nickname_edit_text:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    .line 145
    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->m_follower:Lcom/dexcom/cgm/model/Follower;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/Follower;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->setText(Ljava/lang/String;)V

    .line 147
    new-instance v1, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$3;

    invoke-direct {v1, p0, v0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$3;-><init>(Lcom/dexcom/cgm/activities/share/EditFollowerActivity;Lcom/dexcom/cgm/activities/controls/DexListEditTextView;)V

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->setOnSave(Lcom/dexcom/cgm/activities/controls/DexListEditTextView$OnSaveListener;)V

    .line 190
    return-void
.end method

.method private setupSettingsList()V
    .locals 2

    .prologue
    .line 275
    sget v0, Lcom/dexcom/cgm/activities/R$id;->follower_settings_list:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/controls/DexFollowerSettingsList;

    .line 277
    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->m_follower:Lcom/dexcom/cgm/model/Follower;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/controls/DexFollowerSettingsList;->setFollower(Lcom/dexcom/cgm/model/Follower;)V

    .line 278
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/controls/DexFollowerSettingsList;->setTrendAccessViewVisible(Z)V

    .line 279
    return-void
.end method

.method private setupSharingToggleButton()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 255
    sget v0, Lcom/dexcom/cgm/activities/R$id;->toggle_sharing_button:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 257
    sget-object v1, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$13;->$SwitchMap$com$dexcom$cgm$model$enums$FollowerState:[I

    iget-object v2, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->m_follower:Lcom/dexcom/cgm/model/Follower;

    invoke-virtual {v2}, Lcom/dexcom/cgm/model/Follower;->getState()Lcom/dexcom/cgm/model/enums/FollowerState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/model/enums/FollowerState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 268
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 271
    :goto_0
    return-void

    .line 260
    :pswitch_0
    sget v1, Lcom/dexcom/cgm/activities/R$string;->share_screen_text_64:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 261
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 264
    :pswitch_1
    sget v1, Lcom/dexcom/cgm/activities/R$string;->share_screen_text_65:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 265
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 257
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setupSubText()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 194
    sget v0, Lcom/dexcom/cgm/activities/R$id;->follower_email:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->m_follower:Lcom/dexcom/cgm/model/Follower;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/Follower;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    sget v0, Lcom/dexcom/cgm/activities/R$string;->share_screen_text_71:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->m_follower:Lcom/dexcom/cgm/model/Follower;

    .line 197
    invoke-virtual {v2}, Lcom/dexcom/cgm/model/Follower;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 196
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 198
    sget v0, Lcom/dexcom/cgm/activities/R$id;->trend_graph_denial:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    sget v0, Lcom/dexcom/cgm/activities/R$string;->share_screen_text_72:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->m_follower:Lcom/dexcom/cgm/model/Follower;

    .line 201
    invoke-virtual {v2}, Lcom/dexcom/cgm/model/Follower;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 200
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 202
    sget v0, Lcom/dexcom/cgm/activities/R$id;->follower_controls_notification_settings:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    return-void
.end method

.method private setupToolbar()V
    .locals 2

    .prologue
    .line 128
    sget v0, Lcom/dexcom/cgm/activities/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar;

    .line 129
    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->m_follower:Lcom/dexcom/cgm/model/Follower;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/Follower;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 130
    new-instance v1, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$2;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$2;-><init>(Lcom/dexcom/cgm/activities/share/EditFollowerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    return-void
.end method

.method private setupTrendGraphSwitch()V
    .locals 3

    .prologue
    .line 208
    sget v0, Lcom/dexcom/cgm/activities/R$id;->trend_graph_access_switch:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 209
    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->m_follower:Lcom/dexcom/cgm/model/Follower;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/Follower;->hasTrendPermission()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 211
    new-instance v1, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$4;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$4;-><init>(Lcom/dexcom/cgm/activities/share/EditFollowerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 243
    sget v1, Lcom/dexcom/cgm/activities/R$id;->allow_trend_view_row:I

    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$5;

    invoke-direct {v2, p0, v0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$5;-><init>(Lcom/dexcom/cgm/activities/share/EditFollowerActivity;Landroid/widget/Switch;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    return-void
.end method

.method private showConfirmationPrompt(Ljava/lang/String;ILjava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 530
    new-instance v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    .line 531
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setCancelable(Ljava/lang/Boolean;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    .line 532
    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    .line 533
    sget v1, Lcom/dexcom/cgm/activities/R$string;->button_text_cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setNegativeButton(ILandroid/view/View$OnClickListener;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    .line 534
    new-instance v1, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$12;

    invoke-direct {v1, p0, p3}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$12;-><init>(Lcom/dexcom/cgm/activities/share/EditFollowerActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p2, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->toast_updating_follower:I

    .line 553
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 554
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->show()Landroid/app/Dialog;

    .line 555
    return-void
.end method

.method private toggleFollowerSharing()V
    .locals 4

    .prologue
    .line 481
    new-instance v0, Lcom/dexcom/cgm/activities/ToastHelper;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/ToastHelper;-><init>(Landroid/app/Activity;)V

    .line 485
    :try_start_0
    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->m_follower:Lcom/dexcom/cgm/model/Follower;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/Follower;->getState()Lcom/dexcom/cgm/model/enums/FollowerState;

    move-result-object v1

    sget-object v2, Lcom/dexcom/cgm/model/enums/FollowerState;->Active:Lcom/dexcom/cgm/model/enums/FollowerState;

    if-ne v1, v2, :cond_0

    .line 487
    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->m_shareService:Lcom/dexcom/cgm/share/ShareService;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->m_follower:Lcom/dexcom/cgm/model/Follower;

    invoke-virtual {v2}, Lcom/dexcom/cgm/model/Follower;->getSubscriptionID()Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/dexcom/cgm/share/ShareService;->pauseFollower(Ljava/util/UUID;)V

    .line 488
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->refreshFollowerInfo()V

    .line 489
    sget v1, Lcom/dexcom/cgm/activities/R$string;->toast_stopping_sharing:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;->showGreenCheckToast(I)V

    .line 523
    :goto_0
    return-void

    .line 491
    :cond_0
    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->m_follower:Lcom/dexcom/cgm/model/Follower;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/Follower;->getState()Lcom/dexcom/cgm/model/enums/FollowerState;

    move-result-object v1

    sget-object v2, Lcom/dexcom/cgm/model/enums/FollowerState;->PausedByPublisher:Lcom/dexcom/cgm/model/enums/FollowerState;

    if-ne v1, v2, :cond_1

    .line 493
    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->m_shareService:Lcom/dexcom/cgm/share/ShareService;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->m_follower:Lcom/dexcom/cgm/model/Follower;

    invoke-virtual {v2}, Lcom/dexcom/cgm/model/Follower;->getSubscriptionID()Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/dexcom/cgm/share/ShareService;->resumeFollower(Ljava/util/UUID;)V

    .line 494
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->refreshFollowerInfo()V

    .line 495
    sget v1, Lcom/dexcom/cgm/activities/R$string;->toast_starting_sharing:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;->showGreenCheckToast(I)V
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/ServerUnreachableWSException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/ServiceUnavailableWSException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/SubscriptionNotPausableStateWSException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/SubscriptionNotPausedWSException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 509
    :catch_0
    move-exception v1

    sget v1, Lcom/dexcom/cgm/activities/R$string;->toast_no_internet:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;->showRedXToast(I)V

    goto :goto_0

    .line 499
    :cond_1
    :try_start_1
    const-string v1, "SHARE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Developer Error: Toggle Sharing button was visible even though we were not in a toggleable state. The state was: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->m_follower:Lcom/dexcom/cgm/model/Follower;

    .line 503
    invoke-virtual {v3}, Lcom/dexcom/cgm/model/Follower;->getState()Lcom/dexcom/cgm/model/enums/FollowerState;

    move-result-object v3

    .line 504
    invoke-virtual {v3}, Lcom/dexcom/cgm/model/enums/FollowerState;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 499
    invoke-static {v1, v2}, Lcom/dexcom/cgm/f/b;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/ServerUnreachableWSException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/ServiceUnavailableWSException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/SubscriptionNotPausableStateWSException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/SubscriptionNotPausedWSException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 513
    :catch_1
    move-exception v1

    :goto_1
    sget v1, Lcom/dexcom/cgm/activities/R$string;->toast_server_error:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;->showRedXToast(I)V

    goto :goto_0

    .line 517
    :catch_2
    move-exception v1

    sget v1, Lcom/dexcom/cgm/activities/R$string;->toast_stop_sharing_error:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;->showRedXToast(I)V

    goto :goto_0

    .line 521
    :catch_3
    move-exception v1

    sget v1, Lcom/dexcom/cgm/activities/R$string;->toast_start_sharing_error:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;->showRedXToast(I)V

    goto :goto_0

    .line 513
    :catch_4
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public onClickRemoveFollower(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 384
    :try_start_0
    sget v0, Lcom/dexcom/cgm/activities/R$string;->dex_share_remove_question:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->m_follower:Lcom/dexcom/cgm/model/Follower;

    .line 385
    invoke-virtual {v3}, Lcom/dexcom/cgm/model/Follower;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 384
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 386
    sget v1, Lcom/dexcom/cgm/activities/R$string;->share_screen_text_66:I

    new-instance v2, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$9;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$9;-><init>(Lcom/dexcom/cgm/activities/share/EditFollowerActivity;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->showConfirmationPrompt(Ljava/lang/String;ILjava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/FormatFlagsConversionMismatchException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    :goto_0
    return-void

    .line 395
    :catch_0
    move-exception v0

    .line 397
    const-class v1, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failure from follower name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->m_follower:Lcom/dexcom/cgm/model/Follower;

    .line 398
    invoke-virtual {v3}, Lcom/dexcom/cgm/model/Follower;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/FormatFlagsConversionMismatchException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 397
    invoke-static {v1, v0}, Lcom/dexcom/cgm/f/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onClickToggleSharing(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 406
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->m_follower:Lcom/dexcom/cgm/model/Follower;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Follower;->getState()Lcom/dexcom/cgm/model/enums/FollowerState;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/model/enums/FollowerState;->Active:Lcom/dexcom/cgm/model/enums/FollowerState;

    if-ne v0, v1, :cond_1

    .line 408
    sget v0, Lcom/dexcom/cgm/activities/R$string;->share_screen_text_64:I

    .line 409
    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_share_pause_question:I

    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->m_follower:Lcom/dexcom/cgm/model/Follower;

    .line 410
    invoke-virtual {v3}, Lcom/dexcom/cgm/model/Follower;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 409
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 424
    :goto_0
    new-instance v2, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$10;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$10;-><init>(Lcom/dexcom/cgm/activities/share/EditFollowerActivity;)V

    invoke-direct {p0, v1, v0, v2}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->showConfirmationPrompt(Ljava/lang/String;ILjava/lang/Runnable;)V

    .line 432
    :cond_0
    return-void

    .line 412
    :cond_1
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->m_follower:Lcom/dexcom/cgm/model/Follower;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Follower;->getState()Lcom/dexcom/cgm/model/enums/FollowerState;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/model/enums/FollowerState;->PausedByPublisher:Lcom/dexcom/cgm/model/enums/FollowerState;

    if-ne v0, v1, :cond_0

    .line 414
    sget v0, Lcom/dexcom/cgm/activities/R$string;->share_screen_text_65:I

    .line 415
    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_share_resume_question:I

    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->m_follower:Lcom/dexcom/cgm/model/Follower;

    .line 416
    invoke-virtual {v3}, Lcom/dexcom/cgm/model/Follower;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 415
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_share_edit_follower:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->setContentView(I)V

    .line 58
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "subscriptionID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 60
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->readFollowerFromDatabase(Ljava/util/UUID;)V

    .line 62
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->refreshUI()V

    .line 64
    sget v0, Lcom/dexcom/cgm/activities/R$id;->foreground:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->linearLayout:Landroid/widget/LinearLayout;

    .line 65
    sget v0, Lcom/dexcom/cgm/activities/R$id;->progressBar:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->progressBar:Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;

    .line 66
    return-void
.end method
