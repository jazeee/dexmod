.class Landroid/support/wearable/view/Func;
.super Ljava/lang/Object;
.source "Func.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x14
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clamp(FII)F
    .locals 1

    .prologue
    .line 17
    int-to-float v0, p1

    cmpg-float v0, p0, v0

    if-gez v0, :cond_1

    .line 18
    int-to-float p0, p1

    .line 22
    :cond_0
    :goto_0
    return p0

    .line 19
    :cond_1
    int-to-float v0, p2

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    .line 20
    int-to-float p0, p2

    goto :goto_0
.end method

.method static clamp(III)I
    .locals 0

    .prologue
    .line 26
    if-ge p0, p1, :cond_0

    .line 31
    :goto_0
    return p1

    .line 28
    :cond_0
    if-le p0, p2, :cond_1

    move p1, p2

    .line 29
    goto :goto_0

    :cond_1
    move p1, p0

    .line 31
    goto :goto_0
.end method

.method static getWindowOverscan(Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 37
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 38
    check-cast v0, Landroid/app/Activity;

    .line 39
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 40
    const/high16 v2, 0x2000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 42
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 40
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
