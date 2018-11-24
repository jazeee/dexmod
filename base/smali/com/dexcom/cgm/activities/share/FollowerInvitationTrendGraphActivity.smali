.class public Lcom/dexcom/cgm/activities/share/FollowerInvitationTrendGraphActivity;
.super Lcom/dexcom/cgm/activities/share/FollowerInvitationBaseActivity;
.source "FollowerInvitationTrendGraphActivity.java"


# instance fields
.field private m_trendGraphAccessSwitch:Lcom/dexcom/cgm/activities/DexListSwitchView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/dexcom/cgm/activities/share/FollowerInvitationTrendGraphActivity;)Lcom/dexcom/cgm/activities/DexListSwitchView;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationTrendGraphActivity;->m_trendGraphAccessSwitch:Lcom/dexcom/cgm/activities/DexListSwitchView;

    return-object v0
.end method


# virtual methods
.method protected getCircleArrayIndex()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method protected getContentViewID()I
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_follower_invitation_trend_graph:I

    return v0
.end method

.method public onClickNext(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 56
    invoke-static {}, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->getInstance()Lcom/dexcom/cgm/activities/share/FollowerInvitationData;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationTrendGraphActivity;->m_trendGraphAccessSwitch:Lcom/dexcom/cgm/activities/DexListSwitchView;

    .line 57
    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/DexListSwitchView;->isSwitchChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->setTrendGraphAccess(Z)V

    .line 58
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationTrendGraphActivity;->startActivity(Landroid/content/Intent;)V

    .line 59
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    sget v0, Lcom/dexcom/cgm/activities/R$id;->trend_graph_access:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationTrendGraphActivity;->insertNameForField(I)V

    .line 27
    sget v0, Lcom/dexcom/cgm/activities/R$id;->trend_graph_denial:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationTrendGraphActivity;->insertNameForField(I)V

    .line 28
    sget v0, Lcom/dexcom/cgm/activities/R$id;->trend_graph_access_switch:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationTrendGraphActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListSwitchView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationTrendGraphActivity;->m_trendGraphAccessSwitch:Lcom/dexcom/cgm/activities/DexListSwitchView;

    .line 29
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationTrendGraphActivity;->m_trendGraphAccessSwitch:Lcom/dexcom/cgm/activities/DexListSwitchView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexListSwitchView;->setSwitchChecked(Z)V

    .line 30
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationTrendGraphActivity;->m_trendGraphAccessSwitch:Lcom/dexcom/cgm/activities/DexListSwitchView;

    new-instance v1, Lcom/dexcom/cgm/activities/share/FollowerInvitationTrendGraphActivity$1;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationTrendGraphActivity$1;-><init>(Lcom/dexcom/cgm/activities/share/FollowerInvitationTrendGraphActivity;)V

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexListSwitchView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    return-void
.end method
