.class public abstract Lcom/dexcom/cgm/activities/share/FollowerInvitationBaseActivity;
.super Landroid/app/Activity;
.source "FollowerInvitationBaseActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getCircleArrayIndex()I
.end method

.method protected abstract getContentViewID()I
.end method

.method protected insertNameForField(I)V
    .locals 4

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 37
    invoke-static {}, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->getInstance()Lcom/dexcom/cgm/activities/share/FollowerInvitationData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 36
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationBaseActivity;->getContentViewID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationBaseActivity;->setContentView(I)V

    .line 25
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationBaseActivity;->getCircleArrayIndex()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 26
    sget v0, Lcom/dexcom/cgm/activities/R$id;->circleArray:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/CircleArray;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/CircleArray;->increment()V

    .line 25
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method
