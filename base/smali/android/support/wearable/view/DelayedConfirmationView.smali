.class public Landroid/support/wearable/view/DelayedConfirmationView;
.super Landroid/support/wearable/view/CircledImageView;
.source "DelayedConfirmationView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x14
.end annotation


# static fields
.field private static final DEFAULT_UPDATE_INTERVAL_MS:I = 0x21


# instance fields
.field private mCurrentTimeMs:J

.field private mListener:Landroid/support/wearable/view/DelayedConfirmationView$DelayedConfirmationListener;

.field private mStartTimeMs:J

.field private mTimerHandler:Landroid/os/Handler;

.field private mTotalTimeMs:J

.field private mUpdateIntervalMs:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/wearable/view/DelayedConfirmationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/wearable/view/DelayedConfirmationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/support/wearable/view/CircledImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/support/wearable/view/DelayedConfirmationView;->mUpdateIntervalMs:J

    .line 38
    new-instance v0, Landroid/support/wearable/view/DelayedConfirmationView$1;

    invoke-direct {v0, p0}, Landroid/support/wearable/view/DelayedConfirmationView$1;-><init>(Landroid/support/wearable/view/DelayedConfirmationView;)V

    iput-object v0, p0, Landroid/support/wearable/view/DelayedConfirmationView;->mTimerHandler:Landroid/os/Handler;

    .line 79
    sget-object v0, Landroid/support/wearable/R$styleable;->DelayedConfirmationView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 82
    sget v1, Landroid/support/wearable/R$styleable;->DelayedConfirmationView_update_interval:I

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Landroid/support/wearable/view/DelayedConfirmationView;->mUpdateIntervalMs:J

    .line 84
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/wearable/view/DelayedConfirmationView;->setProgress(F)V

    .line 85
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    return-void
.end method

.method static synthetic access$000(Landroid/support/wearable/view/DelayedConfirmationView;)J
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Landroid/support/wearable/view/DelayedConfirmationView;->mCurrentTimeMs:J

    return-wide v0
.end method

.method static synthetic access$002(Landroid/support/wearable/view/DelayedConfirmationView;J)J
    .locals 1

    .prologue
    .line 27
    iput-wide p1, p0, Landroid/support/wearable/view/DelayedConfirmationView;->mCurrentTimeMs:J

    return-wide p1
.end method

.method static synthetic access$100(Landroid/support/wearable/view/DelayedConfirmationView;)J
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Landroid/support/wearable/view/DelayedConfirmationView;->mStartTimeMs:J

    return-wide v0
.end method

.method static synthetic access$200(Landroid/support/wearable/view/DelayedConfirmationView;)J
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Landroid/support/wearable/view/DelayedConfirmationView;->mTotalTimeMs:J

    return-wide v0
.end method

.method static synthetic access$300(Landroid/support/wearable/view/DelayedConfirmationView;)J
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Landroid/support/wearable/view/DelayedConfirmationView;->mUpdateIntervalMs:J

    return-wide v0
.end method

.method static synthetic access$400(Landroid/support/wearable/view/DelayedConfirmationView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Landroid/support/wearable/view/DelayedConfirmationView;->mTimerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Landroid/support/wearable/view/DelayedConfirmationView;)Landroid/support/wearable/view/DelayedConfirmationView$DelayedConfirmationListener;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Landroid/support/wearable/view/DelayedConfirmationView;->mListener:Landroid/support/wearable/view/DelayedConfirmationView$DelayedConfirmationListener;

    return-object v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 140
    iget-wide v0, p0, Landroid/support/wearable/view/DelayedConfirmationView;->mStartTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 141
    iget-wide v0, p0, Landroid/support/wearable/view/DelayedConfirmationView;->mCurrentTimeMs:J

    iget-wide v2, p0, Landroid/support/wearable/view/DelayedConfirmationView;->mStartTimeMs:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget-wide v2, p0, Landroid/support/wearable/view/DelayedConfirmationView;->mTotalTimeMs:J

    long-to-float v1, v2

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/support/wearable/view/DelayedConfirmationView;->setProgress(F)V

    .line 143
    :cond_0
    invoke-super {p0, p1}, Landroid/support/wearable/view/CircledImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 144
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 149
    packed-switch v0, :pswitch_data_0

    .line 159
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 153
    :pswitch_1
    iget-object v0, p0, Landroid/support/wearable/view/DelayedConfirmationView;->mListener:Landroid/support/wearable/view/DelayedConfirmationView$DelayedConfirmationListener;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Landroid/support/wearable/view/DelayedConfirmationView;->mListener:Landroid/support/wearable/view/DelayedConfirmationView$DelayedConfirmationListener;

    invoke-interface {v0, p0}, Landroid/support/wearable/view/DelayedConfirmationView$DelayedConfirmationListener;->onTimerSelected(Landroid/view/View;)V

    goto :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 133
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/support/wearable/view/DelayedConfirmationView;->mStartTimeMs:J

    .line 134
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/wearable/view/DelayedConfirmationView;->setProgress(F)V

    .line 135
    invoke-virtual {p0}, Landroid/support/wearable/view/DelayedConfirmationView;->invalidate()V

    .line 136
    return-void
.end method

.method public setListener(Landroid/support/wearable/view/DelayedConfirmationView$DelayedConfirmationListener;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Landroid/support/wearable/view/DelayedConfirmationView;->mListener:Landroid/support/wearable/view/DelayedConfirmationView$DelayedConfirmationListener;

    .line 118
    return-void
.end method

.method public setStartTimeMs(J)V
    .locals 1

    .prologue
    .line 95
    iput-wide p1, p0, Landroid/support/wearable/view/DelayedConfirmationView;->mStartTimeMs:J

    .line 96
    invoke-virtual {p0}, Landroid/support/wearable/view/DelayedConfirmationView;->invalidate()V

    .line 97
    return-void
.end method

.method public setTotalTimeMs(J)V
    .locals 1

    .prologue
    .line 107
    iput-wide p1, p0, Landroid/support/wearable/view/DelayedConfirmationView;->mTotalTimeMs:J

    .line 108
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 124
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/wearable/view/DelayedConfirmationView;->mStartTimeMs:J

    .line 125
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/wearable/view/DelayedConfirmationView;->mCurrentTimeMs:J

    .line 126
    iget-object v0, p0, Landroid/support/wearable/view/DelayedConfirmationView;->mTimerHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    iget-wide v2, p0, Landroid/support/wearable/view/DelayedConfirmationView;->mUpdateIntervalMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 127
    return-void
.end method
