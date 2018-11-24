.class public Lcom/dexcom/cgm/activities/BaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseFragment.java"


# instance fields
.field m_fragmentResumeTime:Lcom/dexcom/cgm/k/j;

.field m_screenName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 26
    const-string v1, "SCREEN_NAME"

    const-string v2, "NAME_NOT_SET"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/BaseFragment;->m_screenName:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 42
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 43
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/BaseFragment;->m_fragmentResumeTime:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/k/j;->subtract(Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/k/k;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/dexcom/cgm/activities/BaseFragment;->m_screenName:Ljava/lang/String;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/BaseFragment;->m_screenName:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->logScreenDisappearing(Ljava/lang/String;Ljava/lang/String;Lcom/dexcom/cgm/k/k;)V

    .line 45
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 32
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 33
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/BaseFragment;->m_fragmentResumeTime:Lcom/dexcom/cgm/k/j;

    .line 36
    iget-object v0, p0, Lcom/dexcom/cgm/activities/BaseFragment;->m_screenName:Ljava/lang/String;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/BaseFragment;->m_screenName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->logScreenAppearing(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method
