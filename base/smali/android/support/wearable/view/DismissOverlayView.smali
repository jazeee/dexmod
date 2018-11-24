.class public Landroid/support/wearable/view/DismissOverlayView;
.super Landroid/widget/FrameLayout;
.source "DismissOverlayView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x14
.end annotation


# static fields
.field private static final KEY_FIRST_RUN:Ljava/lang/String; = "first_run"

.field private static final PREF_NAME:Ljava/lang/String; = "android.support.wearable.DismissOverlay"


# instance fields
.field private mDismissButton:Landroid/view/View;

.field private mFirstRun:Z

.field private mFirstRunText:Landroid/widget/TextView;

.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 41
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/support/wearable/view/DismissOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/wearable/view/DismissOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    iput-boolean v2, p0, Landroid/support/wearable/view/DismissOverlayView;->mFirstRun:Z

    .line 51
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/wearable/R$layout;->dismiss_overlay:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 52
    sget v0, Landroid/support/wearable/R$color;->dismiss_overlay_bg:I

    invoke-virtual {p0, v0}, Landroid/support/wearable/view/DismissOverlayView;->setBackgroundResource(I)V

    .line 53
    invoke-virtual {p0, v2}, Landroid/support/wearable/view/DismissOverlayView;->setClickable(Z)V

    .line 54
    invoke-virtual {p0}, Landroid/support/wearable/view/DismissOverlayView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    const-string v0, "android.support.wearable.DismissOverlay"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Landroid/support/wearable/view/DismissOverlayView;->mPrefs:Landroid/content/SharedPreferences;

    .line 56
    iget-object v0, p0, Landroid/support/wearable/view/DismissOverlayView;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "first_run"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/wearable/view/DismissOverlayView;->mFirstRun:Z

    .line 59
    :cond_0
    sget v0, Landroid/support/wearable/R$id;->dismiss_overlay_explain:I

    invoke-virtual {p0, v0}, Landroid/support/wearable/view/DismissOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/wearable/view/DismissOverlayView;->mFirstRunText:Landroid/widget/TextView;

    .line 60
    sget v0, Landroid/support/wearable/R$id;->dismiss_overlay_button:I

    invoke-virtual {p0, v0}, Landroid/support/wearable/view/DismissOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/wearable/view/DismissOverlayView;->mDismissButton:Landroid/view/View;

    .line 61
    iget-object v0, p0, Landroid/support/wearable/view/DismissOverlayView;->mDismissButton:Landroid/view/View;

    new-instance v1, Landroid/support/wearable/view/DismissOverlayView$1;

    invoke-direct {v1, p0, p1}, Landroid/support/wearable/view/DismissOverlayView$1;-><init>(Landroid/support/wearable/view/DismissOverlayView;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/support/wearable/view/DismissOverlayView;->setVisibility(I)V

    .line 71
    return-void
.end method

.method static synthetic access$000(Landroid/support/wearable/view/DismissOverlayView;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/wearable/view/DismissOverlayView;->hide()V

    return-void
.end method

.method private hide()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 137
    invoke-virtual {p0}, Landroid/support/wearable/view/DismissOverlayView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/support/wearable/view/DismissOverlayView$3;

    invoke-direct {v1, p0}, Landroid/support/wearable/view/DismissOverlayView$3;-><init>(Landroid/support/wearable/view/DismissOverlayView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 145
    iget-boolean v0, p0, Landroid/support/wearable/view/DismissOverlayView;->mFirstRun:Z

    if-eqz v0, :cond_0

    .line 146
    iput-boolean v4, p0, Landroid/support/wearable/view/DismissOverlayView;->mFirstRun:Z

    .line 147
    iget-object v0, p0, Landroid/support/wearable/view/DismissOverlayView;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "first_run"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 149
    :cond_0
    return-void
.end method

.method static resetPrefs(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 120
    const-string v0, "android.support.wearable.DismissOverlay"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 121
    return-void
.end method


# virtual methods
.method public performClick()Z
    .locals 1

    .prologue
    .line 153
    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    .line 154
    invoke-direct {p0}, Landroid/support/wearable/view/DismissOverlayView;->hide()V

    .line 155
    const/4 v0, 0x1

    return v0
.end method

.method public setIntroText(I)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Landroid/support/wearable/view/DismissOverlayView;->mFirstRunText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 91
    return-void
.end method

.method public setIntroText(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Landroid/support/wearable/view/DismissOverlayView;->mFirstRunText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/wearable/view/DismissOverlayView;->setAlpha(F)V

    .line 130
    iget-object v0, p0, Landroid/support/wearable/view/DismissOverlayView;->mFirstRunText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Landroid/support/wearable/view/DismissOverlayView;->mDismissButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 132
    invoke-virtual {p0, v2}, Landroid/support/wearable/view/DismissOverlayView;->setVisibility(I)V

    .line 133
    invoke-virtual {p0}, Landroid/support/wearable/view/DismissOverlayView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 134
    return-void
.end method

.method public showIntroIfNecessary()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 100
    iget-boolean v0, p0, Landroid/support/wearable/view/DismissOverlayView;->mFirstRun:Z

    if-nez v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Landroid/support/wearable/view/DismissOverlayView;->mFirstRunText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    iput-boolean v2, p0, Landroid/support/wearable/view/DismissOverlayView;->mFirstRun:Z

    goto :goto_0

    .line 107
    :cond_1
    iget-object v0, p0, Landroid/support/wearable/view/DismissOverlayView;->mFirstRunText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Landroid/support/wearable/view/DismissOverlayView;->mDismissButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 109
    invoke-virtual {p0, v2}, Landroid/support/wearable/view/DismissOverlayView;->setVisibility(I)V

    .line 111
    new-instance v0, Landroid/support/wearable/view/DismissOverlayView$2;

    invoke-direct {v0, p0}, Landroid/support/wearable/view/DismissOverlayView$2;-><init>(Landroid/support/wearable/view/DismissOverlayView;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v0, v2, v3}, Landroid/support/wearable/view/DismissOverlayView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
