.class public abstract Lcom/dexcom/cgm/activities/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"

# interfaces
.implements Lcom/dexcom/cgm/g/b;


# instance fields
.field m_activityResumeTime:Lcom/dexcom/cgm/k/j;

.field m_screenName:Ljava/lang/String;

.field private timeScreenWasDisplayed:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getDisplayNameForLogger()Ljava/lang/String;
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 40
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 33
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 34
    return-void
.end method
