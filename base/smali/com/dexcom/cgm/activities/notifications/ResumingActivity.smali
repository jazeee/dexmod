.class public Lcom/dexcom/cgm/activities/notifications/ResumingActivity;
.super Landroid/app/Activity;
.source "ResumingActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private finishWithoutAnimation()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/notifications/ResumingActivity;->finish()V

    .line 32
    invoke-virtual {p0, v0, v0}, Lcom/dexcom/cgm/activities/notifications/ResumingActivity;->overridePendingTransition(II)V

    .line 33
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/notifications/ResumingActivity;->finishWithoutAnimation()V

    .line 26
    return-void
.end method
