.class public Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;
.super Landroid/app/Activity;
.source "HealthEntryActivity.java"


# instance fields
.field private m_alcohol:Z

.field private m_cycle:Z

.field private m_feelHigh:Z

.field private m_feelLow:Z

.field private m_illness:Z

.field private m_issueId:I

.field private m_stress:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 20
    iput v0, p0, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->m_issueId:I

    .line 21
    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->m_illness:Z

    .line 22
    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->m_stress:Z

    .line 23
    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->m_feelHigh:Z

    .line 24
    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->m_feelLow:Z

    .line 25
    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->m_cycle:Z

    .line 26
    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->m_alcohol:Z

    return-void
.end method

.method private setNavEndImage(II)V
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListNavView;

    .line 187
    invoke-virtual {v0, p2}, Lcom/dexcom/cgm/activities/DexListNavView;->setEndImage(I)V

    .line 188
    return-void
.end method


# virtual methods
.method public onClickCancel(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->setResult(I)V

    .line 195
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->finish()V

    .line 196
    return-void
.end method

.method public onClickNavigate(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 62
    sget v3, Lcom/dexcom/cgm/activities/R$id;->health_illness:I

    if-ne v3, v2, :cond_3

    .line 64
    iget v2, p0, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->m_issueId:I

    sget v3, Lcom/dexcom/cgm/activities/R$id;->health_illness:I

    if-eq v2, v3, :cond_1

    .line 66
    sget v2, Lcom/dexcom/cgm/activities/R$id;->health_illness:I

    iput v2, p0, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->m_issueId:I

    .line 67
    sget v2, Lcom/dexcom/cgm/activities/R$id;->health_illness:I

    sget v3, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_checked:I

    invoke-direct {p0, v2, v3}, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->setNavEndImage(II)V

    .line 74
    :goto_0
    iget-boolean v2, p0, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->m_illness:Z

    if-nez v2, :cond_2

    :goto_1
    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->m_illness:Z

    .line 76
    sget v0, Lcom/dexcom/cgm/activities/R$id;->health_stress:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_unchecked:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->setNavEndImage(II)V

    .line 77
    sget v0, Lcom/dexcom/cgm/activities/R$id;->health_feel_high:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_unchecked:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->setNavEndImage(II)V

    .line 78
    sget v0, Lcom/dexcom/cgm/activities/R$id;->health_feel_low:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_unchecked:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->setNavEndImage(II)V

    .line 79
    sget v0, Lcom/dexcom/cgm/activities/R$id;->health_cycle:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_unchecked:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->setNavEndImage(II)V

    .line 80
    sget v0, Lcom/dexcom/cgm/activities/R$id;->health_alcohol:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_unchecked:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->setNavEndImage(II)V

    .line 182
    :cond_0
    :goto_2
    return-void

    .line 71
    :cond_1
    iput v1, p0, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->m_issueId:I

    .line 72
    sget v2, Lcom/dexcom/cgm/activities/R$id;->health_illness:I

    sget v3, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_unchecked:I

    invoke-direct {p0, v2, v3}, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->setNavEndImage(II)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 74
    goto :goto_1

    .line 82
    :cond_3
    sget v3, Lcom/dexcom/cgm/activities/R$id;->health_stress:I

    if-ne v2, v3, :cond_6

    .line 84
    iget v2, p0, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->m_issueId:I

    sget v3, Lcom/dexcom/cgm/activities/R$id;->health_stress:I

    if-eq v2, v3, :cond_4

    .line 86
    sget v2, Lcom/dexcom/cgm/activities/R$id;->health_stress:I

    iput v2, p0, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->m_issueId:I

    .line 87
    sget v2, Lcom/dexcom/cgm/activities/R$id;->health_stress:I

    sget v3, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_checked:I

    invoke-direct {p0, v2, v3}, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->setNavEndImage(II)V

    .line 94
    :goto_3
    iget-boolean v2, p0, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->m_stress:Z

    if-nez v2, :cond_5

    :goto_4
    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->m_stress:Z

    .line 96
    sget v0, Lcom/dexcom/cgm/activities/R$id;->health_illness:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_unchecked:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->setNavEndImage(II)V

    .line 97
    sget v0, Lcom/dexcom/cgm/activities/R$id;->health_feel_high:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_unchecked:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->setNavEndImage(II)V

    .line 98
    sget v0, Lcom/dexcom/cgm/activities/R$id;->health_feel_low:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_unchecked:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->setNavEndImage(II)V

    .line 99
    sget v0, Lcom/dexcom/cgm/activities/R$id;->health_cycle:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_unchecked:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->setNavEndImage(II)V

    .line 100
    sget v0, Lcom/dexcom/cgm/activities/R$id;->health_alcohol:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_unchecked:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->setNavEndImage(II)V

    goto :goto_2

    .line 91
    :cond_4
    iput v1, p0, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->m_issueId:I

    .line 92
    sget v2, Lcom/dexcom/cgm/activities/R$id;->health_stress:I

    sget v3, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_unchecked:I

    invoke-direct {p0, v2, v3}, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->setNavEndImage(II)V

    goto :goto_3

    :cond_5
    move v0, v1

    .line 94
    goto :goto_4

    .line 102
    :cond_6
    sget v3, Lcom/dexcom/cgm/activities/R$id;->health_feel_high:I

    if-ne v2, v3, :cond_9

    .line 104
    iget v2, p0, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->m_issueId:I

    sget v3, Lcom/dexcom/cgm/activities/R$id;->health_feel_high:I

    if-eq v2, v3, :cond_7

    .line 106
    sget v2, Lcom/dexcom/cgm/activities/R$id;->health_feel_high:I

    iput v2, p0, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->m_issueId:I

    .line 107
    sget v2, Lcom/dexcom/cgm/activities/R$id;->health_feel_high:I

    sget v3, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_checked:I

    invoke-direct {p0, v2, v3}, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->setNavEndImage(II)V

    .line 114
    :goto_5
    iget-boolean v2, p0, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->m_feelHigh:Z

    if-nez v2, :cond_8

    :goto_6
    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->m_feelHigh:Z

    .line 116
    sget v0, Lcom/dexcom/cgm/activities/R$id;->health_illness:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_unchecked:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->setNavEndImage(II)V

    .line 117
    sget v0, Lcom/dexcom/cgm/activities/R$id;->health_stress:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_unchecked:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->setNavEndImage(II)V

    .line 118
    sget v0, Lcom/dexcom/cgm/activities/R$id;->health_feel_low:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_unchecked:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->setNavEndImage(II)V

    .line 119
    sget v0, Lcom/dexcom/cgm/activities/R$id;->health_cycle:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_unchecked:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->setNavEndImage(II)V

    .line 120
    sget v0, Lcom/dexcom/cgm/activities/R$id;->health_alcohol:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_unchecked:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->setNavEndImage(II)V

    goto/16 :goto_2

    .line 111
    :cond_7
    iput v1, p0, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->m_issueId:I

    .line 112
    sget v2, Lcom/dexcom/cgm/activities/R$id;->health_feel_high:I

    sget v3, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_unchecked:I

    invoke-direct {p0, v2, v3}, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->setNavEndImage(II)V

    goto :goto_5

    :cond_8
    move v0, v1

    .line 114
    goto :goto_6

    .line 122
    :cond_9
    sget v3, Lcom/dexcom/cgm/activities/R$id;->health_feel_low:I

    if-ne v2, v3, :cond_c

    .line 124
    iget v2, p0, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->m_issueId:I

    sget v3, Lcom/dexcom/cgm/activities/R$id;->health_feel_low:I

    if-eq v2, v3, :cond_a

    .line 126
    sget v2, Lcom/dexcom/cgm/activities/R$id;->health_feel_low:I

    iput v2, p0, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->m_issueId:I

    .line 127
    sget v2, Lcom/dexcom/cgm/activities/R$id;->health_feel_low:I

    sget v3, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_checked:I

    invoke-direct {p0, v2, v3}, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->setNavEndImage(II)V

    .line 134
    :goto_7
    iget-boolean v2, p0, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->m_feelLow:Z

    if-nez v2, :cond_b

    :goto_8
    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->m_feelLow:Z

    .line 136
    sget v0, Lcom/dexcom/cgm/activities/R$id;->health_illness:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_unchecked:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->setNavEndImage(II)V

    .line 137
    sget v0, Lcom/dexcom/cgm/activities/R$id;->health_stress:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_unchecked:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->setNavEndImage(II)V

    .line 138
    sget v0, Lcom/dexcom/cgm/activities/R$id;->health_feel_high:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_unchecked:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->setNavEndImage(II)V

    .line 139
    sget v0, Lcom/dexcom/cgm/activities/R$id;->health_cycle:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_unchecked:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->setNavEndImage(II)V

    .line 140
    sget v0, Lcom/dexcom/cgm/activities/R$id;->health_alcohol:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_unchecked:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->setNavEndImage(II)V

    goto/16 :goto_2

    .line 131
    :cond_a
    iput v1, p0, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->m_issueId:I

    .line 132
    sget v2, Lcom/dexcom/cgm/activities/R$id;->health_feel_low:I

    sget v3, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_unchecked:I

    invoke-direct {p0, v2, v3}, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->setNavEndImage(II)V

    goto :goto_7

    :cond_b
    move v0, v1

    .line 134
    goto :goto_8

    .line 142
    :cond_c
    sget v3, Lcom/dexcom/cgm/activities/R$id;->health_cycle:I

    if-ne v2, v3, :cond_f

    .line 144
    iget v2, p0, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->m_issueId:I

    sget v3, Lcom/dexcom/cgm/activities/R$id;->health_cycle:I

    if-eq v2, v3, :cond_d

    .line 146
    sget v2, Lcom/dexcom/cgm/activities/R$id;->health_cycle:I

    iput v2, p0, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->m_issueId:I

    .line 147
    sget v2, Lcom/dexcom/cgm/activities/R$id;->health_cycle:I

    sget v3, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_checked:I

    invoke-direct {p0, v2, v3}, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->setNavEndImage(II)V

    .line 154
    :goto_9
    iget-boolean v2, p0, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->m_cycle:Z

    if-nez v2, :cond_e

    :goto_a
    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->m_cycle:Z

    .line 156
    sget v0, Lcom/dexcom/cgm/activities/R$id;->health_illness:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_unchecked:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->setNavEndImage(II)V

    .line 157
    sget v0, Lcom/dexcom/cgm/activities/R$id;->health_stress:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_unchecked:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->setNavEndImage(II)V

    .line 158
    sget v0, Lcom/dexcom/cgm/activities/R$id;->health_feel_high:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_unchecked:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->setNavEndImage(II)V

    .line 159
    sget v0, Lcom/dexcom/cgm/activities/R$id;->health_feel_low:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_unchecked:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->setNavEndImage(II)V

    .line 160
    sget v0, Lcom/dexcom/cgm/activities/R$id;->health_alcohol:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_unchecked:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->setNavEndImage(II)V

    goto/16 :goto_2

    .line 151
    :cond_d
    iput v1, p0, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->m_issueId:I

    .line 152
    sget v2, Lcom/dexcom/cgm/activities/R$id;->health_cycle:I

    sget v3, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_unchecked:I

    invoke-direct {p0, v2, v3}, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->setNavEndImage(II)V

    goto :goto_9

    :cond_e
    move v0, v1

    .line 154
    goto :goto_a

    .line 162
    :cond_f
    sget v3, Lcom/dexcom/cgm/activities/R$id;->health_alcohol:I

    if-ne v2, v3, :cond_0

    .line 164
    iget v2, p0, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->m_issueId:I

    sget v3, Lcom/dexcom/cgm/activities/R$id;->health_alcohol:I

    if-eq v2, v3, :cond_10

    .line 166
    sget v2, Lcom/dexcom/cgm/activities/R$id;->health_alcohol:I

    iput v2, p0, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->m_issueId:I

    .line 167
    sget v2, Lcom/dexcom/cgm/activities/R$id;->health_alcohol:I

    sget v3, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_checked:I

    invoke-direct {p0, v2, v3}, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->setNavEndImage(II)V

    .line 174
    :goto_b
    iget-boolean v2, p0, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->m_alcohol:Z

    if-nez v2, :cond_11

    :goto_c
    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->m_alcohol:Z

    .line 176
    sget v0, Lcom/dexcom/cgm/activities/R$id;->health_illness:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_unchecked:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->setNavEndImage(II)V

    .line 177
    sget v0, Lcom/dexcom/cgm/activities/R$id;->health_stress:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_unchecked:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->setNavEndImage(II)V

    .line 178
    sget v0, Lcom/dexcom/cgm/activities/R$id;->health_feel_high:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_unchecked:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->setNavEndImage(II)V

    .line 179
    sget v0, Lcom/dexcom/cgm/activities/R$id;->health_feel_low:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_unchecked:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->setNavEndImage(II)V

    .line 180
    sget v0, Lcom/dexcom/cgm/activities/R$id;->health_cycle:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_unchecked:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->setNavEndImage(II)V

    goto/16 :goto_2

    .line 171
    :cond_10
    iput v1, p0, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->m_issueId:I

    .line 172
    sget v2, Lcom/dexcom/cgm/activities/R$id;->health_alcohol:I

    sget v3, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_unchecked:I

    invoke-direct {p0, v2, v3}, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->setNavEndImage(II)V

    goto :goto_b

    :cond_11
    move v0, v1

    .line 174
    goto :goto_c
.end method

.method public onClickSave(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 201
    iget v0, p0, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->m_issueId:I

    if-ne v0, v3, :cond_0

    .line 203
    const/4 v0, 0x0

    iput v0, p0, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->m_issueId:I

    .line 205
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "issueId"

    iget v2, p0, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->m_issueId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 206
    invoke-virtual {p0, v3, v0}, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->setResult(ILandroid/content/Intent;)V

    .line 207
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->finish()V

    .line 208
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_health_entry:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->setContentView(I)V

    .line 33
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 38
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 40
    sget v0, Lcom/dexcom/cgm/activities/R$id;->health_illness:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_unchecked:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->setNavEndImage(II)V

    .line 41
    sget v0, Lcom/dexcom/cgm/activities/R$id;->health_stress:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_unchecked:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->setNavEndImage(II)V

    .line 42
    sget v0, Lcom/dexcom/cgm/activities/R$id;->health_feel_high:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_unchecked:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->setNavEndImage(II)V

    .line 43
    sget v0, Lcom/dexcom/cgm/activities/R$id;->health_feel_low:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_unchecked:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->setNavEndImage(II)V

    .line 44
    sget v0, Lcom/dexcom/cgm/activities/R$id;->health_cycle:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_unchecked:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->setNavEndImage(II)V

    .line 45
    sget v0, Lcom/dexcom/cgm/activities/R$id;->health_alcohol:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_unchecked:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->setNavEndImage(II)V

    .line 47
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "issueId"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->m_issueId:I

    .line 52
    :cond_0
    iget v0, p0, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->m_issueId:I

    if-lez v0, :cond_1

    .line 54
    iget v0, p0, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->m_issueId:I

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_check_box_checked:I

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/event_entry/HealthEntryActivity;->setNavEndImage(II)V

    .line 56
    :cond_1
    return-void
.end method
