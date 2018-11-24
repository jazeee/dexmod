.class public Lcom/dexcom/cgm/activities/SettingsGraphHeightActivity;
.super Landroid/app/Activity;
.source "SettingsGraphHeightActivity.java"


# static fields
.field private static final GRAPH_HEIGHT_300:I = 0x12c

.field private static final GRAPH_HEIGHT_400:I = 0x190


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private refreshTheQuickGlanceNotification()V
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;-><init>(Landroid/content/Context;)V

    .line 91
    return-void
.end method

.method private updateImages()V
    .locals 4

    .prologue
    .line 51
    sget v0, Lcom/dexcom/cgm/activities/R$id;->settings_graph_height_300_mgdl:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/SettingsGraphHeightActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListNavView;

    .line 52
    sget v1, Lcom/dexcom/cgm/activities/R$id;->settings_graph_height_400_mgdl:I

    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/SettingsGraphHeightActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/dexcom/cgm/activities/DexListNavView;

    .line 54
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v2

    .line 55
    invoke-interface {v2}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/d/e;->getGraphHeight()I

    move-result v2

    const/16 v3, 0x12c

    if-ne v2, v3, :cond_0

    .line 57
    sget v2, Lcom/dexcom/cgm/activities/R$drawable;->ic_radio_button_checked:I

    invoke-virtual {v0, v2}, Lcom/dexcom/cgm/activities/DexListNavView;->setStartImage(I)V

    .line 58
    sget v0, Lcom/dexcom/cgm/activities/R$drawable;->ic_radio_button_unchecked:I

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/activities/DexListNavView;->setStartImage(I)V

    .line 65
    :goto_0
    return-void

    .line 62
    :cond_0
    sget v2, Lcom/dexcom/cgm/activities/R$drawable;->ic_radio_button_unchecked:I

    invoke-virtual {v0, v2}, Lcom/dexcom/cgm/activities/DexListNavView;->setStartImage(I)V

    .line 63
    sget v0, Lcom/dexcom/cgm/activities/R$drawable;->ic_radio_button_checked:I

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/activities/DexListNavView;->setStartImage(I)V

    goto :goto_0
.end method


# virtual methods
.method public onClickSetGraphHeight(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 69
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 72
    sget v2, Lcom/dexcom/cgm/activities/R$id;->settings_graph_height_300_mgdl:I

    if-ne v1, v2, :cond_1

    .line 74
    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/d/e;->setGraphHeight(I)V

    .line 82
    :cond_0
    :goto_0
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getShareComponent()Lcom/dexcom/cgm/share/ShareService;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/share/ShareService;->saveGraphHeightSetting()V

    .line 83
    invoke-static {}, Lcom/dexcom/cgm/activities/SettingsUpdatedEventHandler;->onSettingsUpdated()V

    .line 84
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/SettingsGraphHeightActivity;->updateImages()V

    .line 85
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/SettingsGraphHeightActivity;->refreshTheQuickGlanceNotification()V

    .line 86
    return-void

    .line 76
    :cond_1
    sget v2, Lcom/dexcom/cgm/activities/R$id;->settings_graph_height_400_mgdl:I

    if-ne v1, v2, :cond_0

    .line 78
    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/d/e;->setGraphHeight(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    sget v0, Lcom/dexcom/cgm/activities/R$string;->mgdl_unit_of_measurement:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/SettingsGraphHeightActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 31
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_settings_graph_height:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/SettingsGraphHeightActivity;->setContentView(I)V

    .line 32
    sget v0, Lcom/dexcom/cgm/activities/R$id;->settings_graph_height_300_mgdl:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/SettingsGraphHeightActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListNavView;

    .line 33
    sget v1, Lcom/dexcom/cgm/activities/R$id;->settings_graph_height_400_mgdl:I

    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/SettingsGraphHeightActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/dexcom/cgm/activities/DexListNavView;

    .line 34
    sget v3, Lcom/dexcom/cgm/activities/R$id;->dex_list_title:I

    invoke-virtual {v0, v3}, Lcom/dexcom/cgm/activities/DexListNavView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 35
    sget v3, Lcom/dexcom/cgm/activities/R$id;->dex_list_title:I

    invoke-virtual {v1, v3}, Lcom/dexcom/cgm/activities/DexListNavView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 36
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 37
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 38
    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "300"

    aput-object v6, v5, v7

    aput-object v2, v5, v8

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    new-array v0, v9, [Ljava/lang/Object;

    const-string v3, "400"

    aput-object v3, v0, v7

    aput-object v2, v0, v8

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 45
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 46
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/SettingsGraphHeightActivity;->updateImages()V

    .line 47
    return-void
.end method
