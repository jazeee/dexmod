.class public Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;
.super Ljava/lang/Object;
.source "AlertsNumberPickerUtil.java"


# instance fields
.field private m_alternateIndicator:I

.field private m_limitedSlave:Z

.field private m_masterMaxValue:I

.field private m_masterPickerValue:I

.field private m_slaveAlternateValues:[I

.field private m_slavePicker:Landroid/widget/NumberPicker;

.field private m_slavePicker2:Landroid/widget/NumberPicker;

.field private m_slavePickerValue:I

.field private m_slaveValues:[I

.field private m_usingAlternates:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_limitedSlave:Z

    .line 24
    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_usingAlternates:Z

    .line 25
    iput v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_masterMaxValue:I

    .line 30
    iput v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_alternateIndicator:I

    .line 31
    iput v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_masterPickerValue:I

    .line 32
    iput v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slavePickerValue:I

    return-void
.end method

.method static synthetic access$002(Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;I)I
    .locals 0

    .prologue
    .line 21
    iput p1, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_masterPickerValue:I

    return p1
.end method

.method static synthetic access$100(Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;)Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_limitedSlave:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;I)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->syncSlaveValues(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_masterMaxValue:I

    return v0
.end method

.method static synthetic access$300(Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;Z)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->configureSlavePicker(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_alternateIndicator:I

    return v0
.end method

.method static synthetic access$500(Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;)Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_usingAlternates:Z

    return v0
.end method

.method static synthetic access$502(Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;Z)Z
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_usingAlternates:Z

    return p1
.end method

.method static synthetic access$600(Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;)Landroid/widget/NumberPicker;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slavePicker:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$700(Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;)Landroid/widget/NumberPicker;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slavePicker2:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$800(Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;)[I
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slaveValues:[I

    return-object v0
.end method

.method static synthetic access$900(Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;)[I
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slaveAlternateValues:[I

    return-object v0
.end method

.method private configureSlavePicker(Z)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 108
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slavePicker2:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 109
    :goto_0
    iget-object v3, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slavePicker2:Landroid/widget/NumberPicker;

    invoke-virtual {v3, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 110
    if-eqz p1, :cond_2

    .line 112
    iget-object v3, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slavePicker2:Landroid/widget/NumberPicker;

    iget-object v4, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slaveAlternateValues:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 118
    :goto_1
    iget-object v3, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slavePicker2:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v2}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 119
    iget-object v3, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slavePicker2:Landroid/widget/NumberPicker;

    const/high16 v4, 0x60000

    invoke-virtual {v3, v4}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    .line 121
    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slavePicker2:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 124
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slavePicker2:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 125
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slavePicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 127
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 108
    goto :goto_0

    .line 116
    :cond_2
    iget-object v3, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slavePicker2:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_1
.end method

.method private static getDividerField()Ljava/lang/reflect/Field;
    .locals 2

    .prologue
    .line 148
    const-class v0, Landroid/widget/NumberPicker;

    const-string v1, "mSelectionDivider"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 149
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 150
    return-object v0
.end method

.method public static setDividerColor(Landroid/widget/NumberPicker;I)V
    .locals 3

    .prologue
    .line 133
    :try_start_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 134
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 135
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 136
    invoke-static {}, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->getDividerField()Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 142
    :goto_1
    const-string v1, "UserInterface"

    const-string v2, "Error changing number picker color"

    invoke-static {v1, v2, v0}, Lcom/dexcom/cgm/f/b;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 138
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

.method private syncSlaveValues(I)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 317
    iget v1, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_masterPickerValue:I

    if-nez v1, :cond_2

    .line 319
    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slaveValues:[I

    aget v1, v1, p1

    iput v1, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slavePickerValue:I

    .line 320
    if-nez p1, :cond_1

    .line 321
    :goto_0
    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slavePicker2:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 332
    :cond_0
    :goto_1
    return-void

    .line 320
    :cond_1
    add-int/lit8 v0, p1, 0x2

    goto :goto_0

    .line 325
    :cond_2
    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slaveAlternateValues:[I

    array-length v1, v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 327
    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slaveAlternateValues:[I

    aget v1, v1, p1

    iput v1, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slavePickerValue:I

    .line 328
    const/4 v1, 0x2

    if-gt p1, v1, :cond_3

    .line 329
    :goto_2
    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slavePicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    goto :goto_1

    .line 328
    :cond_3
    add-int/lit8 v0, p1, -0x2

    goto :goto_2
.end method


# virtual methods
.method public configureMaster(Landroid/view/View;I[I)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    .line 43
    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 44
    array-length v1, p3

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 47
    array-length v1, p3

    new-array v4, v1, [Ljava/lang/String;

    move v1, v2

    move v3, v2

    .line 48
    :goto_0
    array-length v5, p3

    if-ge v1, v5, :cond_1

    .line 50
    aget v5, p3, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 51
    aget v5, p3, v1

    iget v6, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_masterPickerValue:I

    if-ne v5, v6, :cond_0

    move v3, v1

    .line 48
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {v0, v4}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 58
    const/high16 v1, 0x60000

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    .line 59
    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 60
    new-instance v1, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil$1;

    invoke-direct {v1, p0, p3}, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil$1;-><init>(Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;[I)V

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 103
    sget v1, Lcom/dexcom/cgm/activities/R$color;->dex_green:I

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->setDividerColor(Landroid/widget/NumberPicker;I)V

    .line 104
    return-void
.end method

.method public configureMaster(Landroid/view/View;I[II)V
    .locals 0

    .prologue
    .line 36
    iput p4, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_masterPickerValue:I

    .line 37
    invoke-virtual {p0, p1, p2, p3}, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->configureMaster(Landroid/view/View;I[I)V

    .line 38
    return-void
.end method

.method public configureSlave(Landroid/view/View;II[ILjava/lang/Boolean;III[I)V
    .locals 9

    .prologue
    .line 164
    const/16 v1, 0x3c

    move/from16 v0, p7

    if-lt v0, v1, :cond_0

    .line 166
    rem-int/lit8 v1, p7, 0x3c

    iput v1, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slavePickerValue:I

    .line 173
    :goto_0
    iput-object p4, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slaveValues:[I

    .line 174
    move/from16 v0, p8

    iput v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_alternateIndicator:I

    .line 175
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slaveAlternateValues:[I

    .line 177
    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v8}, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->configureSlave(Landroid/view/View;II[ILjava/lang/Boolean;IZ)V

    .line 184
    return-void

    .line 170
    :cond_0
    move/from16 v0, p7

    iput v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slavePickerValue:I

    goto :goto_0
.end method

.method public configureSlave(Landroid/view/View;II[ILjava/lang/Boolean;IZ)V
    .locals 7

    .prologue
    .line 195
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_limitedSlave:Z

    .line 196
    iput p6, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_masterMaxValue:I

    .line 198
    iget v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_masterPickerValue:I

    if-nez v0, :cond_3

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_usingAlternates:Z

    .line 207
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slavePicker:Landroid/widget/NumberPicker;

    .line 208
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slavePicker:Landroid/widget/NumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 209
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slavePicker:Landroid/widget/NumberPicker;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slaveValues:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 211
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slavePicker2:Landroid/widget/NumberPicker;

    .line 212
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slavePicker2:Landroid/widget/NumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 213
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slavePicker2:Landroid/widget/NumberPicker;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slaveAlternateValues:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 215
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_usingAlternates:Z

    if-eqz v0, :cond_4

    .line 217
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slavePicker:Landroid/widget/NumberPicker;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slavePicker2:Landroid/widget/NumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setVisibility(I)V

    .line 226
    :goto_1
    const/4 v1, 0x0

    .line 227
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slaveValues:[I

    array-length v0, v0

    new-array v3, v0, [Ljava/lang/String;

    .line 228
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slaveValues:[I

    array-length v2, v2

    if-ge v0, v2, :cond_7

    .line 230
    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slaveValues:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    .line 231
    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slaveValues:[I

    aget v2, v2, v0

    iget v4, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slavePickerValue:I

    if-ne v2, v4, :cond_2

    .line 233
    iget-boolean v1, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_usingAlternates:Z

    if-nez v1, :cond_0

    if-eqz p7, :cond_5

    .line 235
    :cond_0
    iget v1, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_masterPickerValue:I

    iget v2, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_masterMaxValue:I

    if-ne v1, v2, :cond_1

    .line 237
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->configureSlavePicker(Z)V

    :cond_1
    move v1, v0

    .line 228
    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 204
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_usingAlternates:Z

    goto :goto_0

    .line 222
    :cond_4
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slavePicker:Landroid/widget/NumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slavePicker2:Landroid/widget/NumberPicker;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setVisibility(I)V

    goto :goto_1

    .line 243
    :cond_5
    if-nez v0, :cond_6

    const/4 v1, 0x0

    goto :goto_3

    :cond_6
    add-int/lit8 v1, v0, -0x2

    goto :goto_3

    .line 248
    :cond_7
    const/4 v2, 0x0

    .line 249
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slaveAlternateValues:[I

    array-length v0, v0

    new-array v4, v0, [Ljava/lang/String;

    .line 250
    const/4 v0, 0x0

    :goto_4
    iget-object v5, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slaveAlternateValues:[I

    array-length v5, v5

    if-ge v0, v5, :cond_c

    .line 252
    iget-object v5, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slaveAlternateValues:[I

    aget v5, v5, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 253
    iget-object v5, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slaveAlternateValues:[I

    aget v5, v5, v0

    iget v6, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slavePickerValue:I

    if-ne v5, v6, :cond_9

    .line 255
    iget-boolean v2, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_usingAlternates:Z

    if-nez v2, :cond_8

    if-eqz p7, :cond_a

    :cond_8
    move v2, v0

    .line 250
    :cond_9
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 261
    :cond_a
    if-nez v0, :cond_b

    const/4 v2, 0x0

    goto :goto_5

    :cond_b
    add-int/lit8 v2, v0, 0x2

    goto :goto_5

    .line 266
    :cond_c
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slavePicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 267
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slavePicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slavePicker:Landroid/widget/NumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 269
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slavePicker:Landroid/widget/NumberPicker;

    const/high16 v1, 0x60000

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    .line 270
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slavePicker:Landroid/widget/NumberPicker;

    new-instance v1, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil$2;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil$2;-><init>(Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;)V

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 282
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slavePicker2:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 283
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slavePicker2:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v4}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slavePicker2:Landroid/widget/NumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 285
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slavePicker2:Landroid/widget/NumberPicker;

    const/high16 v1, 0x60000

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    .line 286
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slavePicker2:Landroid/widget/NumberPicker;

    new-instance v1, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil$3;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil$3;-><init>(Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;)V

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 298
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slaveValues:[I

    array-length v0, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slaveAlternateValues:[I

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 300
    :cond_d
    iget v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_masterPickerValue:I

    iget v1, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_masterMaxValue:I

    if-ne v0, v1, :cond_f

    .line 302
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slavePicker:Landroid/widget/NumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 303
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slavePicker:Landroid/widget/NumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 311
    :cond_e
    :goto_6
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slavePicker:Landroid/widget/NumberPicker;

    sget v1, Lcom/dexcom/cgm/activities/R$color;->dex_green:I

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->setDividerColor(Landroid/widget/NumberPicker;I)V

    .line 312
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slavePicker2:Landroid/widget/NumberPicker;

    sget v1, Lcom/dexcom/cgm/activities/R$color;->dex_green:I

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->setDividerColor(Landroid/widget/NumberPicker;I)V

    .line 313
    return-void

    .line 307
    :cond_f
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slavePicker:Landroid/widget/NumberPicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 308
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slavePicker:Landroid/widget/NumberPicker;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->m_slaveValues:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_6
.end method
