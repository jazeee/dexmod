.class public Lcom/dexcom/cgm/activities/SettingsActivity;
.super Landroid/app/Activity;
.source "SettingsActivity.java"


# instance fields
.field private final ACQUIRED:I

.field private final NOT_ACQUIRED:I

.field private final NOT_INSTALLED:I

.field private m_navViewHealth:Lcom/dexcom/cgm/activities/DexListNavView;

.field private m_sHealthConnectionAdapter:Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;

.field private m_sHealthStatus:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lcom/dexcom/cgm/activities/SettingsActivity;->ACQUIRED:I

    .line 24
    iput v1, p0, Lcom/dexcom/cgm/activities/SettingsActivity;->NOT_ACQUIRED:I

    .line 25
    const/4 v0, 0x3

    iput v0, p0, Lcom/dexcom/cgm/activities/SettingsActivity;->NOT_INSTALLED:I

    .line 26
    iput v1, p0, Lcom/dexcom/cgm/activities/SettingsActivity;->m_sHealthStatus:I

    return-void
.end method

.method static synthetic access$002(Lcom/dexcom/cgm/activities/SettingsActivity;I)I
    .locals 0

    .prologue
    .line 19
    iput p1, p0, Lcom/dexcom/cgm/activities/SettingsActivity;->m_sHealthStatus:I

    return p1
.end method

.method static synthetic access$100(Lcom/dexcom/cgm/activities/SettingsActivity;)Lcom/dexcom/cgm/activities/DexListNavView;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SettingsActivity;->m_navViewHealth:Lcom/dexcom/cgm/activities/DexListNavView;

    return-object v0
.end method


# virtual methods
.method public onClickNavigate(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 83
    sget v1, Lcom/dexcom/cgm/activities/R$id;->settings_transmitter:I

    if-ne v1, v0, :cond_1

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dexcom/cgm/activities/SettingsTransmitterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    sget v1, Lcom/dexcom/cgm/activities/R$id;->settings_device_info:I

    if-ne v1, v0, :cond_2

    .line 89
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dexcom/cgm/activities/SettingsDeviceInfo;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 91
    :cond_2
    sget v1, Lcom/dexcom/cgm/activities/R$id;->settings_health:I

    if-ne v1, v0, :cond_3

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dexcom/cgm/activities/SHealthActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    const-string v1, "SHEALTH_STATUS"

    iget v2, p0, Lcom/dexcom/cgm/activities/SettingsActivity;->m_sHealthStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 97
    :cond_3
    sget v1, Lcom/dexcom/cgm/activities/R$id;->settings_graph_height:I

    if-ne v1, v0, :cond_4

    .line 99
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dexcom/cgm/activities/SettingsGraphHeightActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 101
    :cond_4
    sget v1, Lcom/dexcom/cgm/activities/R$id;->settings_dexcom_account:I

    if-ne v1, v0, :cond_0

    .line 103
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dexcom/cgm/activities/AccountEditActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_settings:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/SettingsActivity;->setContentView(I)V

    .line 33
    sget v0, Lcom/dexcom/cgm/activities/R$id;->settings_health:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListNavView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/SettingsActivity;->m_navViewHealth:Lcom/dexcom/cgm/activities/DexListNavView;

    .line 34
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 39
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 41
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    .line 42
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/d/e;->getGraphHeight()I

    move-result v1

    .line 44
    sget v0, Lcom/dexcom/cgm/activities/R$id;->settings_graph_height:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListNavView;

    .line 45
    sget v2, Lcom/dexcom/cgm/activities/R$string;->share_mgdl:I

    invoke-virtual {p0, v2}, Lcom/dexcom/cgm/activities/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 46
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    sget v4, Lcom/dexcom/cgm/activities/R$string;->mgdl_unit_of_measurement:I

    .line 47
    invoke-virtual {p0, v4}, Lcom/dexcom/cgm/activities/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 46
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexListNavView;->setEndText(Ljava/lang/String;)V

    .line 49
    new-instance v0, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/SettingsActivity;->m_sHealthConnectionAdapter:Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;

    .line 50
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SettingsActivity;->m_sHealthConnectionAdapter:Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;

    new-instance v1, Lcom/dexcom/cgm/activities/SettingsActivity$1;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/SettingsActivity$1;-><init>(Lcom/dexcom/cgm/activities/SettingsActivity;)V

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/shealth/SHealthAdapter;->checkPermissions(Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$SHealthCallback;)V

    .line 77
    return-void
.end method
