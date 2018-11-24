.class public Lcom/dexcom/cgm/activities/controls/ConsistentNumberPicker;
.super Landroid/widget/NumberPicker;
.source "ConsistentNumberPicker.java"


# static fields
.field private static final NUMBER_PICKER_TEXT_COLOR:I

.field private static final NUMBER_PICKER_TEXT_SIZE:I = 0x12


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    sget v0, Lcom/dexcom/cgm/activities/R$color;->cgm_base_text_color:I

    sput v0, Lcom/dexcom/cgm/activities/controls/ConsistentNumberPicker;->NUMBER_PICKER_TEXT_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method private updateView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 55
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 57
    check-cast v0, Landroid/widget/EditText;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 58
    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/controls/ConsistentNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/controls/ConsistentNumberPicker;->NUMBER_PICKER_TEXT_COLOR:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 60
    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/widget/NumberPicker;->addView(Landroid/view/View;)V

    .line 36
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/controls/ConsistentNumberPicker;->updateView(Landroid/view/View;)V

    .line 37
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0, p1, p2, p3}, Landroid/widget/NumberPicker;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 43
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/controls/ConsistentNumberPicker;->updateView(Landroid/view/View;)V

    .line 44
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Landroid/widget/NumberPicker;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/controls/ConsistentNumberPicker;->updateView(Landroid/view/View;)V

    .line 51
    return-void
.end method
