.class public Lcom/dexcom/cgm/activities/WhatsNewFragment;
.super Lcom/dexcom/cgm/activities/BaseFragment;
.source "WhatsNewFragment.java"


# instance fields
.field private m_layout:I

.field private m_view:Landroid/view/View;

.field private whatsNewActivity:Lcom/dexcom/cgm/activities/WhatsNewFragment$WhatsNewFragmentHolder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/BaseFragment;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-super {p0, p1, p2, p3}, Lcom/dexcom/cgm/activities/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 40
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/WhatsNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/WhatsNewFragment$WhatsNewFragmentHolder;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/WhatsNewFragment;->whatsNewActivity:Lcom/dexcom/cgm/activities/WhatsNewFragment$WhatsNewFragmentHolder;

    .line 41
    iget-object v0, p0, Lcom/dexcom/cgm/activities/WhatsNewFragment;->whatsNewActivity:Lcom/dexcom/cgm/activities/WhatsNewFragment$WhatsNewFragmentHolder;

    invoke-interface {v0, p0}, Lcom/dexcom/cgm/activities/WhatsNewFragment$WhatsNewFragmentHolder;->setCurrentFragment(Landroid/support/v4/app/Fragment;)V

    .line 42
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/WhatsNewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 43
    const-string v1, "LAYOUT"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/WhatsNewFragment;->m_layout:I

    .line 44
    iget v0, p0, Lcom/dexcom/cgm/activities/WhatsNewFragment;->m_layout:I

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/WhatsNewFragment;->m_view:Landroid/view/View;

    .line 47
    iget-object v0, p0, Lcom/dexcom/cgm/activities/WhatsNewFragment;->m_view:Landroid/view/View;

    return-object v0
.end method
