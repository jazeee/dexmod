.class public abstract Lcom/dexcom/cgm/activities/support/SupportBaseActivity;
.super Landroid/app/Activity;
.source "SupportBaseActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getEmailAddress()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method protected abstract getFaxNavEndID()I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method protected abstract getFaxNumber()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method protected abstract getLayoutID()I
.end method

.method public onClickCall(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 43
    invoke-static {p0}, Lcom/dexcom/cgm/activities/support/TechSupportHelper;->callTechSupport(Landroid/app/Activity;)V

    .line 44
    return-void
.end method

.method public onClickEmail(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/support/SupportBaseActivity;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/dexcom/cgm/activities/support/TechSupportHelper;->emailSupport(Landroid/app/Activity;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/support/SupportBaseActivity;->getLayoutID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/support/SupportBaseActivity;->setContentView(I)V

    .line 24
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/support/SupportBaseActivity;->getLayoutID()I

    move-result v0

    sget v1, Lcom/dexcom/cgm/activities/R$layout;->activity_billing_reimbursement:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/support/SupportBaseActivity;->getLayoutID()I

    move-result v0

    sget v1, Lcom/dexcom/cgm/activities/R$layout;->activity_sales_support:I

    if-ne v0, v1, :cond_1

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/support/SupportBaseActivity;->getFaxNavEndID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/support/SupportBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListNavView;

    .line 27
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/support/SupportBaseActivity;->getFaxNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexListNavView;->setEndText(Ljava/lang/String;)V

    .line 29
    :cond_1
    return-void
.end method
