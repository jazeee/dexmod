.class public Lcom/dexcom/cgm/activities/support/ContactDexcomActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "ContactDexcomActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickNavigate(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 31
    sget v1, Lcom/dexcom/cgm/activities/R$id;->contact_dexcom_sales:I

    if-ne v1, v0, :cond_1

    .line 33
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dexcom/cgm/activities/support/SalesSupportActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/support/ContactDexcomActivity;->startActivity(Landroid/content/Intent;)V

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    sget v1, Lcom/dexcom/cgm/activities/R$id;->contact_dexcom_technical:I

    if-ne v1, v0, :cond_2

    .line 37
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dexcom/cgm/activities/support/TechnicalSupportActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/support/ContactDexcomActivity;->startActivity(Landroid/content/Intent;)V

    .line 38
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getBulkDataService()Lcom/dexcom/cgm/bulkdata/BulkDataService;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/bulkdata/BulkDataService;->onContactTechSupport()V

    goto :goto_0

    .line 40
    :cond_2
    sget v1, Lcom/dexcom/cgm/activities/R$id;->contact_dexcom_training:I

    if-ne v1, v0, :cond_3

    .line 42
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dexcom/cgm/activities/support/TrainingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/support/ContactDexcomActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 44
    :cond_3
    sget v1, Lcom/dexcom/cgm/activities/R$id;->contact_dexcom_billing:I

    if-ne v1, v0, :cond_0

    .line 46
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dexcom/cgm/activities/support/BillingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/support/ContactDexcomActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_contact_dexcom:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/support/ContactDexcomActivity;->setContentView(I)V

    .line 26
    return-void
.end method
