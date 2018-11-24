.class public Lcom/dexcom/cgm/activities/controls/LandscapeTimeButton;
.super Landroid/widget/Button;
.source "LandscapeTimeButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 41
    return-void
.end method


# virtual methods
.method public deselect()V
    .locals 2

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/controls/LandscapeTimeButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$color;->dex_dark_gray:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/controls/LandscapeTimeButton;->setTextColor(I)V

    .line 54
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/dexcom/cgm/activities/controls/LandscapeTimeButton;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 55
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/controls/LandscapeTimeButton;->setClickable(Z)V

    .line 56
    return-void
.end method

.method public select()V
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/controls/LandscapeTimeButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$color;->dex_orange:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/controls/LandscapeTimeButton;->setTextColor(I)V

    .line 47
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/dexcom/cgm/activities/controls/LandscapeTimeButton;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 48
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/controls/LandscapeTimeButton;->setClickable(Z)V

    .line 49
    return-void
.end method
