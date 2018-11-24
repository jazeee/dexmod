.class public Lcom/dexcom/cgm/activities/ToastHelper;
.super Ljava/lang/Object;
.source "ToastHelper.java"


# static fields
.field private static final DURATION_CHECK_DELAY_IN_MILLIS:J = 0x1f4L

.field private static final GREEN_CHECK_TOAST_DURATION_IN_MILLIS:J = 0x5dcL

.field private static final RED_X_TOAST_DURATION_IN_MILLIS:J = 0x5dcL

.field private static final TEXTLESS_GREEN_CHECK_TOAST_DURATION_IN_MILLIS:J = 0x3e8L


# instance fields
.field private m_activity:Landroid/app/Activity;

.field private m_onToastDisappeared:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/dexcom/cgm/activities/ToastHelper;->m_activity:Landroid/app/Activity;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/dexcom/cgm/activities/ToastHelper;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/dexcom/cgm/activities/ToastHelper;->m_activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dexcom/cgm/activities/ToastHelper;Landroid/widget/Toast;J)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/dexcom/cgm/activities/ToastHelper;->showToastWithDuration(Landroid/widget/Toast;J)V

    return-void
.end method

.method static synthetic access$200(Lcom/dexcom/cgm/activities/ToastHelper;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/dexcom/cgm/activities/ToastHelper;->m_onToastDisappeared:Ljava/lang/Runnable;

    return-object v0
.end method

.method private showToast(ILjava/lang/Integer;J)V
    .locals 7
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 51
    iget-object v6, p0, Lcom/dexcom/cgm/activities/ToastHelper;->m_activity:Landroid/app/Activity;

    new-instance v0, Lcom/dexcom/cgm/activities/ToastHelper$1;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/dexcom/cgm/activities/ToastHelper$1;-><init>(Lcom/dexcom/cgm/activities/ToastHelper;ILjava/lang/Integer;J)V

    invoke-virtual {v6, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 94
    return-void
.end method

.method private showToastWithDuration(Landroid/widget/Toast;J)V
    .locals 8

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 108
    new-instance v0, Lcom/dexcom/cgm/activities/ToastHelper$2;

    const-wide/16 v4, 0x1f4

    move-object v1, p0

    move-wide v2, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/dexcom/cgm/activities/ToastHelper$2;-><init>(Lcom/dexcom/cgm/activities/ToastHelper;JJLandroid/widget/Toast;)V

    .line 123
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ToastHelper$2;->start()Landroid/os/CountDownTimer;

    .line 124
    return-void
.end method


# virtual methods
.method public setOnToastDisappeared(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/dexcom/cgm/activities/ToastHelper;->m_onToastDisappeared:Ljava/lang/Runnable;

    .line 44
    return-void
.end method

.method public showGreenCheckToast()V
    .locals 4

    .prologue
    .line 155
    sget v0, Lcom/dexcom/cgm/activities/R$drawable;->ic_green_check:I

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/dexcom/cgm/activities/ToastHelper;->showToast(ILjava/lang/Integer;J)V

    .line 156
    return-void
.end method

.method public showGreenCheckToast(I)V
    .locals 4

    .prologue
    .line 145
    sget v0, Lcom/dexcom/cgm/activities/R$drawable;->ic_green_check:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-wide/16 v2, 0x5dc

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/dexcom/cgm/activities/ToastHelper;->showToast(ILjava/lang/Integer;J)V

    .line 146
    return-void
.end method

.method public showRedXToast(I)V
    .locals 4

    .prologue
    .line 135
    sget v0, Lcom/dexcom/cgm/activities/R$drawable;->ic_red_x:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-wide/16 v2, 0x5dc

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/dexcom/cgm/activities/ToastHelper;->showToast(ILjava/lang/Integer;J)V

    .line 136
    return-void
.end method
