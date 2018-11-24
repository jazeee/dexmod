.class public Lcom/dexcom/cgm/activities/support/BillingActivity;
.super Lcom/dexcom/cgm/activities/support/SupportBaseActivity;
.source "BillingActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/support/SupportBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getEmailAddress()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 29
    const-string v0, "reimbursement@dexcom.com"

    return-object v0
.end method

.method protected getFaxNavEndID()I
    .locals 1

    .prologue
    .line 23
    sget v0, Lcom/dexcom/cgm/activities/R$id;->fax_billing:I

    return v0
.end method

.method protected getFaxNumber()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 36
    const-string v0, "1-877-633-9266"

    return-object v0
.end method

.method protected getLayoutID()I
    .locals 1

    .prologue
    .line 18
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_billing_reimbursement:I

    return v0
.end method
