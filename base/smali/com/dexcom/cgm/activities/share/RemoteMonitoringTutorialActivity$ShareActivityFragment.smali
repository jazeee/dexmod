.class public Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity$ShareActivityFragment;
.super Lcom/dexcom/cgm/activities/BaseFragment;
.source "RemoteMonitoringTutorialActivity.java"


# instance fields
.field private m_layout:I

.field private m_view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/BaseFragment;-><init>()V

    .line 240
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 247
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity$ShareActivityFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 248
    const-string v1, "LAYOUT"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity$ShareActivityFragment;->m_layout:I

    .line 249
    iget v0, p0, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity$ShareActivityFragment;->m_layout:I

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity$ShareActivityFragment;->m_view:Landroid/view/View;

    .line 250
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/RemoteMonitoringTutorialActivity$ShareActivityFragment;->m_view:Landroid/view/View;

    return-object v0
.end method
