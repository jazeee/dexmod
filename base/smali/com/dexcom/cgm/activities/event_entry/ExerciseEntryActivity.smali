.class public Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;
.super Landroid/app/Activity;
.source "ExerciseEntryActivity.java"


# instance fields
.field private m_durationDescriptor:Landroid/widget/TextView;

.field private m_exerciseDuration:I

.field private m_heavyIntensity:Z

.field private m_hourValues:[I

.field private m_intensityId:I

.field private m_lightIntensity:Z

.field private m_mediumIntensity:Z

.field private m_minuteValues:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    iput v1, p0, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->m_intensityId:I

    .line 25
    iput v1, p0, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->m_exerciseDuration:I

    .line 26
    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->m_lightIntensity:Z

    .line 27
    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->m_mediumIntensity:Z

    .line 28
    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->m_heavyIntensity:Z

    return-void
.end method

.method static synthetic access$000(Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;)[I
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->m_hourValues:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;)[I
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->m_minuteValues:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;II)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->updateExerciseDuration(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->m_durationDescriptor:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->m_durationDescriptor:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->m_exerciseDuration:I

    return v0
.end method

.method static synthetic access$402(Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;I)I
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->m_exerciseDuration:I

    return p1
.end method

.method private setNavEndImage(II)V
    .locals 1

    .prologue
    .line 242
    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListNavView;

    .line 243
    invoke-virtual {v0, p2}, Lcom/dexcom/cgm/activities/DexListNavView;->setEndImage(I)V

    .line 244
    return-void
.end method

.method private updateExerciseDuration(II)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 194
    const-string v2, ""

    .line 195
    const-string v1, ""

    .line 196
    const-string v0, ""

    .line 198
    if-lez p1, :cond_5

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 202
    if-le p1, v4, :cond_1

    .line 204
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/dexcom/cgm/activities/R$string;->share_screen_text_50:I

    invoke-virtual {p0, v3}, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 212
    :goto_0
    if-lez p2, :cond_4

    .line 214
    if-lez p1, :cond_0

    .line 216
    const-string v0, ", "

    .line 219
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 220
    if-le p2, v4, :cond_2

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$string;->share_screen_text_48:I

    invoke-virtual {p0, v2}, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    move-object v0, v1

    .line 230
    :goto_1
    if-nez p1, :cond_3

    if-nez p2, :cond_3

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/dexcom/cgm/activities/R$string;->share_screen_text_48:I

    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 235
    :goto_2
    sget v0, Lcom/dexcom/cgm/activities/R$id;->exercise_duration:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListNavView;

    .line 236
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexListNavView;->setEndText(Ljava/lang/String;)V

    .line 237
    mul-int/lit8 v0, p1, 0x3c

    add-int/2addr v0, p2

    iput v0, p0, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->m_exerciseDuration:I

    .line 238
    return-void

    .line 208
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/dexcom/cgm/activities/R$string;->share_screen_text_49:I

    invoke-virtual {p0, v3}, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_0

    .line 226
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$string;->share_screen_text_51:I

    invoke-virtual {p0, v2}, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto :goto_2

    :cond_4
    move-object v2, v0

    move-object v0, v1

    goto :goto_1

    :cond_5
    move-object v3, v2

    goto/16 :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 276
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 277
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 249
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 250
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->finish()V

    .line 251
    return-void
.end method

.method public onClickCancel(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->setResult(I)V

    .line 257
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->finish()V

    .line 258
    return-void
.end method

.method public onClickNavigate(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 68
    sget v3, Lcom/dexcom/cgm/activities/R$id;->exercise_intensity_light:I

    if-ne v3, v2, :cond_3

    .line 70
    iget v2, p0, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->m_intensityId:I

    sget v3, Lcom/dexcom/cgm/activities/R$id;->exercise_intensity_light:I

    if-eq v2, v3, :cond_1

    .line 72
    sget v2, Lcom/dexcom/cgm/activities/R$id;->exercise_intensity_light:I

    iput v2, p0, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->m_intensityId:I

    .line 73
    sget v2, Lcom/dexcom/cgm/activities/R$id;->exercise_intensity_light:I

    sget v3, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_checked:I

    invoke-direct {p0, v2, v3}, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->setNavEndImage(II)V

    .line 80
    :goto_0
    iget-boolean v2, p0, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->m_lightIntensity:Z

    if-nez v2, :cond_2

    :goto_1
    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->m_lightIntensity:Z

    .line 82
    sget v0, Lcom/dexcom/cgm/activities/R$id;->exercise_intensity_medium:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_unchecked:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->setNavEndImage(II)V

    .line 83
    sget v0, Lcom/dexcom/cgm/activities/R$id;->exercise_intensity_heavy:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_unchecked:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->setNavEndImage(II)V

    .line 190
    :cond_0
    :goto_2
    return-void

    .line 77
    :cond_1
    iput v4, p0, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->m_intensityId:I

    .line 78
    sget v2, Lcom/dexcom/cgm/activities/R$id;->exercise_intensity_light:I

    sget v3, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_unchecked:I

    invoke-direct {p0, v2, v3}, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->setNavEndImage(II)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 80
    goto :goto_1

    .line 85
    :cond_3
    sget v3, Lcom/dexcom/cgm/activities/R$id;->exercise_intensity_medium:I

    if-ne v2, v3, :cond_6

    .line 87
    iget v2, p0, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->m_intensityId:I

    sget v3, Lcom/dexcom/cgm/activities/R$id;->exercise_intensity_medium:I

    if-eq v2, v3, :cond_4

    .line 89
    sget v2, Lcom/dexcom/cgm/activities/R$id;->exercise_intensity_medium:I

    iput v2, p0, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->m_intensityId:I

    .line 90
    sget v2, Lcom/dexcom/cgm/activities/R$id;->exercise_intensity_medium:I

    sget v3, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_checked:I

    invoke-direct {p0, v2, v3}, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->setNavEndImage(II)V

    .line 97
    :goto_3
    iget-boolean v2, p0, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->m_mediumIntensity:Z

    if-nez v2, :cond_5

    :goto_4
    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->m_mediumIntensity:Z

    .line 99
    sget v0, Lcom/dexcom/cgm/activities/R$id;->exercise_intensity_light:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_unchecked:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->setNavEndImage(II)V

    .line 100
    sget v0, Lcom/dexcom/cgm/activities/R$id;->exercise_intensity_heavy:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_unchecked:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->setNavEndImage(II)V

    goto :goto_2

    .line 94
    :cond_4
    iput v4, p0, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->m_intensityId:I

    .line 95
    sget v2, Lcom/dexcom/cgm/activities/R$id;->exercise_intensity_medium:I

    sget v3, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_unchecked:I

    invoke-direct {p0, v2, v3}, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->setNavEndImage(II)V

    goto :goto_3

    :cond_5
    move v0, v1

    .line 97
    goto :goto_4

    .line 102
    :cond_6
    sget v3, Lcom/dexcom/cgm/activities/R$id;->exercise_intensity_heavy:I

    if-ne v2, v3, :cond_9

    .line 104
    iget v2, p0, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->m_intensityId:I

    sget v3, Lcom/dexcom/cgm/activities/R$id;->exercise_intensity_heavy:I

    if-eq v2, v3, :cond_7

    .line 106
    sget v2, Lcom/dexcom/cgm/activities/R$id;->exercise_intensity_heavy:I

    iput v2, p0, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->m_intensityId:I

    .line 107
    sget v2, Lcom/dexcom/cgm/activities/R$id;->exercise_intensity_heavy:I

    sget v3, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_checked:I

    invoke-direct {p0, v2, v3}, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->setNavEndImage(II)V

    .line 114
    :goto_5
    iget-boolean v2, p0, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->m_heavyIntensity:Z

    if-nez v2, :cond_8

    :goto_6
    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->m_heavyIntensity:Z

    .line 116
    sget v0, Lcom/dexcom/cgm/activities/R$id;->exercise_intensity_light:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_unchecked:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->setNavEndImage(II)V

    .line 117
    sget v0, Lcom/dexcom/cgm/activities/R$id;->exercise_intensity_medium:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_unchecked:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->setNavEndImage(II)V

    goto :goto_2

    .line 111
    :cond_7
    iput v4, p0, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->m_intensityId:I

    .line 112
    sget v2, Lcom/dexcom/cgm/activities/R$id;->exercise_intensity_heavy:I

    sget v3, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_unchecked:I

    invoke-direct {p0, v2, v3}, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->setNavEndImage(II)V

    goto :goto_5

    :cond_8
    move v0, v1

    .line 114
    goto :goto_6

    .line 119
    :cond_9
    sget v0, Lcom/dexcom/cgm/activities/R$id;->exercise_duration:I

    if-ne v2, v0, :cond_0

    .line 121
    new-instance v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$layout;->dialog_time_duration:I

    new-instance v2, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity$3;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity$3;-><init>(Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;)V

    .line 122
    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentLayout(ILcom/dexcom/cgm/activities/DexDialogBuilder$OnCustomLayout;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->button_text_save:I

    .line 162
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity$2;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity$2;-><init>(Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->button_text_cancel:I

    .line 179
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity$1;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity$1;-><init>(Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_event_entry_exercise_title:I

    .line 187
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->show()Landroid/app/Dialog;

    goto/16 :goto_2
.end method

.method public onClickSave(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 263
    iget v0, p0, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->m_intensityId:I

    if-ne v0, v3, :cond_0

    .line 265
    const/4 v0, 0x0

    iput v0, p0, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->m_intensityId:I

    .line 267
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "intensityId"

    iget v2, p0, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->m_intensityId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 268
    const-string v1, "exerciseDuration"

    iget v2, p0, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->m_exerciseDuration:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 269
    invoke-virtual {p0, v3, v0}, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->setResult(ILandroid/content/Intent;)V

    .line 270
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->finish()V

    .line 271
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_exercise_entry:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->setContentView(I)V

    .line 40
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->m_hourValues:[I

    .line 41
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$array;->time_duration_minute_values:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->m_minuteValues:[I

    .line 42
    return-void

    .line 40
    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 47
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 49
    sget v0, Lcom/dexcom/cgm/activities/R$id;->exercise_intensity_light:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_unchecked:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->setNavEndImage(II)V

    .line 50
    sget v0, Lcom/dexcom/cgm/activities/R$id;->exercise_intensity_medium:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_unchecked:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->setNavEndImage(II)V

    .line 51
    sget v0, Lcom/dexcom/cgm/activities/R$id;->exercise_intensity_heavy:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_unchecked:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->setNavEndImage(II)V

    .line 53
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intensityId"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->m_intensityId:I

    .line 58
    :cond_0
    iget v0, p0, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->m_intensityId:I

    if-lez v0, :cond_1

    .line 60
    iget v0, p0, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->m_intensityId:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_checked:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->setNavEndImage(II)V

    .line 62
    :cond_1
    return-void
.end method
