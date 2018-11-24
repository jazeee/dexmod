.class public Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;
.super Ljava/lang/Object;
.source "EventsNumberPickerUtil.java"


# instance fields
.field private m_limitedSlave:Z

.field private m_masterMaxValue:I

.field private m_masterPickerValue:I

.field private m_slavePicker:Landroid/widget/NumberPicker;

.field private m_slavePickerValue:I

.field private m_slaveValues:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->m_limitedSlave:Z

    .line 24
    iput v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->m_masterMaxValue:I

    .line 27
    iput v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->m_masterPickerValue:I

    .line 28
    iput v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->m_slavePickerValue:I

    return-void
.end method

.method static synthetic access$002(Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;I)I
    .locals 0

    .prologue
    .line 21
    iput p1, p0, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->m_masterPickerValue:I

    return p1
.end method

.method static synthetic access$100(Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;)Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->m_limitedSlave:Z

    return v0
.end method

.method static synthetic access$200(Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->m_masterMaxValue:I

    return v0
.end method

.method static synthetic access$300(Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;Z)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->configureSlavePicker(Z)V

    return-void
.end method

.method private configureSlavePicker(Z)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 75
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->m_slavePicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 76
    :goto_0
    iget-object v3, p0, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->m_slavePicker:Landroid/widget/NumberPicker;

    invoke-virtual {v3, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 77
    if-eqz p1, :cond_2

    .line 79
    iget-object v3, p0, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->m_slavePicker:Landroid/widget/NumberPicker;

    iget-object v4, p0, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->m_slaveValues:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 85
    :goto_1
    iget-object v3, p0, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->m_slavePicker:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v2}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 86
    iget-object v3, p0, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->m_slavePicker:Landroid/widget/NumberPicker;

    const/high16 v4, 0x60000

    invoke-virtual {v3, v4}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    .line 88
    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->m_slavePicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 91
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->m_slavePicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 93
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 75
    goto :goto_0

    .line 83
    :cond_2
    iget-object v3, p0, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->m_slavePicker:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_1
.end method

.method private static getDividerField()Ljava/lang/reflect/Field;
    .locals 2

    .prologue
    .line 114
    const-class v0, Landroid/widget/NumberPicker;

    const-string v1, "mSelectionDivider"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 115
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 116
    return-object v0
.end method

.method public static setDividerColor(Landroid/widget/NumberPicker;I)V
    .locals 3

    .prologue
    .line 99
    :try_start_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 100
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 101
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 102
    invoke-static {}, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->getDividerField()Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 108
    :goto_1
    const-string v1, "UserInterface"

    const-string v2, "Error changing number picker color"

    invoke-static {v1, v2, v0}, Lcom/dexcom/cgm/f/b;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 104
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public configureMaster(Landroid/view/View;I[II)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 32
    iput p4, p0, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->m_masterPickerValue:I

    .line 33
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    .line 34
    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 35
    array-length v1, p3

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 37
    array-length v1, p3

    new-array v3, v1, [Ljava/lang/String;

    move v1, v2

    .line 38
    :goto_0
    array-length v4, p3

    if-ge v1, v4, :cond_1

    .line 40
    aget v4, p3, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 41
    aget v4, p3, v1

    iget v5, p0, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->m_masterPickerValue:I

    if-ne v4, v5, :cond_0

    move p4, v1

    .line 38
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 48
    const/high16 v1, 0x60000

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    .line 49
    invoke-virtual {v0, p4}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 50
    new-instance v1, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil$1;

    invoke-direct {v1, p0, p3}, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil$1;-><init>(Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;[I)V

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 70
    sget v1, Lcom/dexcom/cgm/activities/R$color;->dex_green:I

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->setDividerColor(Landroid/widget/NumberPicker;I)V

    .line 71
    return-void
.end method

.method public configureSlave(Landroid/view/View;I[ILjava/lang/Boolean;II)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 127
    const/16 v0, 0x3c

    if-lt p6, v0, :cond_2

    .line 129
    rem-int/lit8 v0, p6, 0x3c

    iput v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->m_slavePickerValue:I

    .line 136
    :goto_0
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->m_limitedSlave:Z

    .line 137
    iput p5, p0, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->m_masterMaxValue:I

    .line 138
    iput-object p3, p0, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->m_slaveValues:[I

    .line 140
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->m_slavePicker:Landroid/widget/NumberPicker;

    .line 141
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->m_slavePicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 142
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->m_slavePicker:Landroid/widget/NumberPicker;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->m_slaveValues:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 144
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->m_slaveValues:[I

    array-length v0, v0

    new-array v2, v0, [Ljava/lang/String;

    move v0, v1

    .line 145
    :goto_1
    iget-object v3, p0, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->m_slaveValues:[I

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 147
    iget-object v3, p0, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->m_slaveValues:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 148
    iget-object v3, p0, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->m_slaveValues:[I

    aget v3, v3, v0

    iget v4, p0, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->m_slavePickerValue:I

    if-ne v3, v4, :cond_1

    .line 150
    iget v3, p0, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->m_masterPickerValue:I

    iget v4, p0, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->m_masterMaxValue:I

    if-ne v3, v4, :cond_0

    .line 152
    invoke-direct {p0, v1}, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->configureSlavePicker(Z)V

    :cond_0
    move p6, v0

    .line 145
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 133
    :cond_2
    iput p6, p0, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->m_slavePickerValue:I

    goto :goto_0

    .line 158
    :cond_3
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->m_slavePicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p6}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 159
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->m_slavePicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->m_slavePicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 161
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->m_slavePicker:Landroid/widget/NumberPicker;

    const/high16 v2, 0x60000

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    .line 163
    iget v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->m_masterPickerValue:I

    iget v2, p0, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->m_masterMaxValue:I

    if-ne v0, v2, :cond_4

    .line 165
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->m_slavePicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 166
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->m_slavePicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 173
    :goto_2
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->m_slavePicker:Landroid/widget/NumberPicker;

    sget v1, Lcom/dexcom/cgm/activities/R$color;->dex_green:I

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->setDividerColor(Landroid/widget/NumberPicker;I)V

    .line 174
    return-void

    .line 170
    :cond_4
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->m_slavePicker:Landroid/widget/NumberPicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 171
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->m_slavePicker:Landroid/widget/NumberPicker;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->m_slaveValues:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_2
.end method
