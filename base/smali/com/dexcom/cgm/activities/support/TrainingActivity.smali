.class public Lcom/dexcom/cgm/activities/support/TrainingActivity;
.super Lcom/dexcom/cgm/activities/support/SupportBaseActivity;
.source "TrainingActivity.java"


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
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFaxNavEndID()I
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method protected getFaxNumber()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getLayoutID()I
    .locals 1

    .prologue
    .line 18
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_training_education:I

    return v0
.end method
