.class public Lcom/dexcom/cgm/activities/share/ShareMainActivity;
.super Landroid/app/Activity;
.source "ShareMainActivity.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# instance fields
.field private final REQUEST_IGNORE_OPTIMIZATIONS:I

.field private m_followerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Follower;",
            ">;"
        }
    .end annotation
.end field

.field private m_followerListAdapter:Lcom/dexcom/cgm/activities/share/ShareMainActivity$FollowerListAdapter;

.field private m_shareService:Lcom/dexcom/cgm/share/ShareService;

.field private m_swipeContainer:Landroid/support/v4/widget/SwipeRefreshLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getShareComponent()Lcom/dexcom/cgm/share/ShareService;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->m_shareService:Lcom/dexcom/cgm/share/ShareService;

    .line 58
    new-instance v0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$FollowerListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dexcom/cgm/activities/share/ShareMainActivity$FollowerListAdapter;-><init>(Lcom/dexcom/cgm/activities/share/ShareMainActivity;Lcom/dexcom/cgm/activities/share/ShareMainActivity$1;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->m_followerListAdapter:Lcom/dexcom/cgm/activities/share/ShareMainActivity$FollowerListAdapter;

    .line 522
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->m_followerList:Ljava/util/List;

    .line 681
    const/16 v0, 0x63

    iput v0, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->REQUEST_IGNORE_OPTIMIZATIONS:I

    return-void
.end method

.method static synthetic access$100(Lcom/dexcom/cgm/activities/share/ShareMainActivity;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->m_swipeContainer:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/dexcom/cgm/activities/share/ShareMainActivity;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->refreshScreen()V

    return-void
.end method

.method static synthetic access$1100(Lcom/dexcom/cgm/activities/share/ShareMainActivity;)Lcom/dexcom/cgm/activities/share/ShareMainActivity$FollowerListAdapter;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->m_followerListAdapter:Lcom/dexcom/cgm/activities/share/ShareMainActivity$FollowerListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dexcom/cgm/activities/share/ShareMainActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->m_followerList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lcom/dexcom/cgm/activities/share/ShareMainActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->m_followerList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/dexcom/cgm/activities/share/ShareMainActivity;I)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->showErrorMessage(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/dexcom/cgm/activities/share/ShareMainActivity;)Lcom/dexcom/cgm/share/ShareService;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->m_shareService:Lcom/dexcom/cgm/share/ShareService;

    return-object v0
.end method

.method static synthetic access$500(Lcom/dexcom/cgm/activities/share/ShareMainActivity;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->fireOptimizationsIntent()V

    return-void
.end method

.method static synthetic access$600(Lcom/dexcom/cgm/activities/share/ShareMainActivity;Z)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->setRefreshing(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/dexcom/cgm/activities/share/ShareMainActivity;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->refreshSharingStatus()V

    return-void
.end method

.method static synthetic access$800(Lcom/dexcom/cgm/activities/share/ShareMainActivity;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->loadShareSetting()V

    return-void
.end method

.method static synthetic access$900(ZZZ)I
    .locals 1

    .prologue
    .line 54
    invoke-static {p0, p1, p2}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->getDrawableForShareStatus(ZZZ)I

    move-result v0

    return v0
.end method

.method private fireOptimizationsIntent()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 686
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 687
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 688
    const-string v2, "android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 689
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

    .line 690
    const/16 v1, 0x63

    invoke-virtual {p0, v0, v1}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 691
    return-void
.end method

.method private static getDrawableForShareStatus(ZZZ)I
    .locals 1

    .prologue
    .line 387
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 389
    sget v0, Lcom/dexcom/cgm/activities/R$drawable;->share_status_1_all_good:I

    .line 417
    :goto_0
    return v0

    .line 391
    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    .line 393
    sget v0, Lcom/dexcom/cgm/activities/R$drawable;->share_status_2_server_problem:I

    goto :goto_0

    .line 395
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    .line 397
    sget v0, Lcom/dexcom/cgm/activities/R$drawable;->share_status_3_internet_problem:I

    goto :goto_0

    .line 399
    :cond_2
    if-eqz p0, :cond_3

    if-nez p1, :cond_3

    if-nez p2, :cond_3

    .line 401
    sget v0, Lcom/dexcom/cgm/activities/R$drawable;->share_status_4_internet_and_server:I

    goto :goto_0

    .line 403
    :cond_3
    if-nez p0, :cond_4

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 405
    sget v0, Lcom/dexcom/cgm/activities/R$drawable;->share_status_5_phone_problem:I

    goto :goto_0

    .line 407
    :cond_4
    if-nez p0, :cond_5

    if-eqz p1, :cond_5

    if-nez p2, :cond_5

    .line 409
    sget v0, Lcom/dexcom/cgm/activities/R$drawable;->share_status_6_phone_and_server_problem:I

    goto :goto_0

    .line 411
    :cond_5
    if-nez p0, :cond_6

    if-nez p1, :cond_6

    if-eqz p2, :cond_6

    .line 413
    sget v0, Lcom/dexcom/cgm/activities/R$drawable;->share_status_7_phone_and_internet_problem:I

    goto :goto_0

    .line 417
    :cond_6
    sget v0, Lcom/dexcom/cgm/activities/R$drawable;->share_status_8_everything_is_broken:I

    goto :goto_0
.end method

.method public static isDozeEnabled()Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 221
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    move v0, v1

    .line 227
    :goto_0
    return v0

    .line 224
    :cond_0
    invoke-static {}, Lcom/dexcom/cgm/activities/TheApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 226
    const-string v0, "power"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 227
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private loadShareSetting()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->m_shareService:Lcom/dexcom/cgm/share/ShareService;

    invoke-interface {v0}, Lcom/dexcom/cgm/share/ShareService;->isShareEnabled()Z

    move-result v0

    .line 287
    new-instance v1, Lcom/dexcom/cgm/activities/share/ShareMainActivity$7;

    invoke-direct {v1, p0, v0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity$7;-><init>(Lcom/dexcom/cgm/activities/share/ShareMainActivity;Z)V

    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 295
    return-void
.end method

.method private refreshFromServer()V
    .locals 2

    .prologue
    .line 454
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/dexcom/cgm/activities/share/ShareMainActivity$10;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity$10;-><init>(Lcom/dexcom/cgm/activities/share/ShareMainActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 480
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 481
    return-void
.end method

.method private refreshScreen()V
    .locals 1

    .prologue
    .line 488
    new-instance v0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$11;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity$11;-><init>(Lcom/dexcom/cgm/activities/share/ShareMainActivity;)V

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 520
    return-void
.end method

.method private refreshSharingStatus()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 351
    iget-object v2, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->m_shareService:Lcom/dexcom/cgm/share/ShareService;

    invoke-interface {v2}, Lcom/dexcom/cgm/share/ShareService;->getPhoneStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->isDozeEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    move v3, v0

    .line 352
    :goto_0
    iget-object v2, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->m_shareService:Lcom/dexcom/cgm/share/ShareService;

    invoke-interface {v2}, Lcom/dexcom/cgm/share/ShareService;->getInternetStatus()Z

    move-result v4

    .line 353
    iget-object v2, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->m_shareService:Lcom/dexcom/cgm/share/ShareService;

    invoke-interface {v2}, Lcom/dexcom/cgm/share/ShareService;->getServerStatus()Z

    move-result v5

    .line 354
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    move v2, v0

    .line 356
    :goto_1
    new-instance v0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$9;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/dexcom/cgm/activities/share/ShareMainActivity$9;-><init>(Lcom/dexcom/cgm/activities/share/ShareMainActivity;ZZZZ)V

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 377
    return-void

    :cond_0
    move v3, v1

    .line 351
    goto :goto_0

    :cond_1
    move v2, v1

    .line 354
    goto :goto_1
.end method

.method private setRefreshing(Z)V
    .locals 1

    .prologue
    .line 247
    new-instance v0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$6;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/cgm/activities/share/ShareMainActivity$6;-><init>(Lcom/dexcom/cgm/activities/share/ShareMainActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 271
    return-void
.end method

.method private setupAddFollowerButton()V
    .locals 2

    .prologue
    .line 144
    sget v0, Lcom/dexcom/cgm/activities/R$id;->add_follower_button:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/dexcom/cgm/activities/share/ShareMainActivity$4;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity$4;-><init>(Lcom/dexcom/cgm/activities/share/ShareMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    return-void
.end method

.method private setupFollowerListView()V
    .locals 2

    .prologue
    .line 110
    sget v0, Lcom/dexcom/cgm/activities/R$id;->followers_list:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 111
    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->m_followerListAdapter:Lcom/dexcom/cgm/activities/share/ShareMainActivity$FollowerListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 113
    new-instance v1, Lcom/dexcom/cgm/activities/share/ShareMainActivity$3;

    invoke-direct {v1, p0, v0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity$3;-><init>(Lcom/dexcom/cgm/activities/share/ShareMainActivity;Landroid/widget/ListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 140
    return-void
.end method

.method private setupHelpTip()V
    .locals 2

    .prologue
    .line 171
    sget v0, Lcom/dexcom/cgm/activities/R$id;->help_tip_text:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_share_troubleshooting:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 172
    sget v0, Lcom/dexcom/cgm/activities/R$id;->help_tip_icon:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 173
    new-instance v1, Lcom/dexcom/cgm/activities/share/ShareMainActivity$5;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity$5;-><init>(Lcom/dexcom/cgm/activities/share/ShareMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    return-void
.end method

.method private setupPullToRefresh()V
    .locals 4

    .prologue
    .line 79
    sget v0, Lcom/dexcom/cgm/activities/R$id;->share_pull_to_refresh:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->m_swipeContainer:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 81
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->m_swipeContainer:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 82
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->m_swipeContainer:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    sget v3, Lcom/dexcom/cgm/activities/R$color;->dex_green:I

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 83
    return-void
.end method

.method private setupSharingToggleSwitch()V
    .locals 3

    .prologue
    .line 87
    sget v0, Lcom/dexcom/cgm/activities/R$id;->share_toggle:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 89
    new-instance v1, Lcom/dexcom/cgm/activities/share/ShareMainActivity$1;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity$1;-><init>(Lcom/dexcom/cgm/activities/share/ShareMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 98
    sget v1, Lcom/dexcom/cgm/activities/R$id;->sharing_toggle_view_row:I

    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/dexcom/cgm/activities/share/ShareMainActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity$2;-><init>(Lcom/dexcom/cgm/activities/share/ShareMainActivity;Landroid/widget/Switch;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    return-void
.end method

.method private showErrorMessage(I)V
    .locals 1

    .prologue
    .line 232
    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->showErrorMessage(Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method private showErrorMessage(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 237
    new-instance v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    .line 238
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setCancelable(Ljava/lang/Boolean;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 239
    invoke-virtual {v0, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setDismissButtonVisibility(Z)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 240
    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->main_screen_text_40:I

    .line 241
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->show()Landroid/app/Dialog;

    .line 243
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 430
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->m_swipeContainer:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    const/4 v0, 0x1

    .line 435
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 675
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dexcom/cgm/activities/TrendActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 676
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 677
    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 678
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->finish()V

    .line 679
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_share_main:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->setContentView(I)V

    .line 68
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->loadShareSetting()V

    .line 70
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->setupSharingToggleSwitch()V

    .line 71
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->setupPullToRefresh()V

    .line 72
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->setupFollowerListView()V

    .line 73
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->setupAddFollowerButton()V

    .line 74
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->setupHelpTip()V

    .line 75
    return-void
.end method

.method public onRefresh()V
    .locals 1

    .prologue
    .line 445
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->setRefreshing(Z)V

    .line 446
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->refreshFromServer()V

    .line 447
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 276
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 277
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->onRefresh()V

    .line 279
    return-void
.end method

.method public onShareSwitchToggled()V
    .locals 3

    .prologue
    .line 299
    sget v0, Lcom/dexcom/cgm/activities/R$id;->share_toggle:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 300
    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    .line 301
    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->m_shareService:Lcom/dexcom/cgm/share/ShareService;

    invoke-interface {v1}, Lcom/dexcom/cgm/share/ShareService;->isShareEnabled()Z

    move-result v1

    .line 303
    if-ne v0, v1, :cond_0

    .line 341
    :goto_0
    return-void

    .line 306
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/dexcom/cgm/activities/share/ShareMainActivity$8;

    invoke-direct {v2, p0, v0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity$8;-><init>(Lcom/dexcom/cgm/activities/share/ShareMainActivity;Z)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 340
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method reportAnyChangesToFlurry()V
    .locals 3

    .prologue
    .line 657
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->m_followerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v1

    .line 658
    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/e;->getNumberOfFollowers()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 660
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 661
    const-string v1, "Number Of Followers:"

    iget-object v2, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->m_followerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$string;->flurry_evt_Share_NumFollower:I

    .line 664
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 663
    invoke-static {v1, v0}, Lcom/flurry/android/a;->logEvent(Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/e;

    .line 666
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    .line 667
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->m_followerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/d/e;->setNumberOfFollowers(I)V

    .line 669
    :cond_0
    return-void
.end method
