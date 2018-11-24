.class public Lcom/dexcom/cgm/activities/CustomViewUtil;
.super Ljava/lang/Object;
.source "CustomViewUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assignOnClick(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The app:*onClick attribute cannot be used within a restricted context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    if-eqz p2, :cond_1

    .line 112
    invoke-static {p0, p1, p2}, Lcom/dexcom/cgm/activities/CustomViewUtil;->setupDowork(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 114
    :cond_1
    return-void
.end method

.method public static createHyperlink(Landroid/widget/TextView;Landroid/text/style/ClickableSpan;)V
    .locals 6

    .prologue
    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 216
    const-string v2, "]"

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 219
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 222
    add-int/lit8 v2, v2, -0x1

    .line 224
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 225
    const/4 v0, 0x0

    invoke-virtual {v3, p1, v1, v2, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 227
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    .line 228
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/dexcom/cgm/activities/R$color;->dex_green:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v0, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v4, 0x21

    .line 227
    invoke-virtual {v3, v0, v1, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 234
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 235
    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 236
    return-void
.end method

.method public static formatAlertRepeatValue(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x3c

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 119
    .line 121
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    .line 126
    :goto_0
    if-nez p1, :cond_0

    .line 128
    sget v0, Lcom/dexcom/cgm/activities/R$string;->alert_settings_text_never:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 202
    :goto_1
    return-object v0

    .line 130
    :cond_0
    if-lez p1, :cond_2

    if-ge p1, v5, :cond_2

    .line 132
    if-eqz v0, :cond_1

    .line 134
    sget v0, Lcom/dexcom/cgm/activities/R$string;->dex_alerts_signal_loss_minutes_value:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 140
    :goto_2
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 138
    :cond_1
    sget v0, Lcom/dexcom/cgm/activities/R$string;->dex_alerts_repeat_minutes_value:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 144
    :cond_2
    div-int/lit8 v3, p1, 0x3c

    .line 145
    rem-int/lit8 v4, p1, 0x3c

    .line 147
    if-lt p1, v5, :cond_6

    const/16 v5, 0x78

    if-ge p1, v5, :cond_6

    .line 149
    if-nez v4, :cond_4

    .line 151
    if-eqz v0, :cond_3

    .line 153
    sget v0, Lcom/dexcom/cgm/activities/R$string;->dex_alerts_signal_loss_hour_value:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 202
    :goto_3
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 157
    :cond_3
    sget v0, Lcom/dexcom/cgm/activities/R$string;->dex_alerts_repeat_hour_value:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 162
    :cond_4
    if-eqz v0, :cond_5

    .line 164
    sget v0, Lcom/dexcom/cgm/activities/R$string;->dex_alerts_signal_loss_hour_and_minutes_value:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 169
    :cond_5
    sget v0, Lcom/dexcom/cgm/activities/R$string;->dex_alerts_repeat_hour_and_minutes_value:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 177
    :cond_6
    if-nez v4, :cond_8

    .line 179
    if-eqz v0, :cond_7

    .line 181
    sget v0, Lcom/dexcom/cgm/activities/R$string;->dex_alerts_signal_loss_hours_value:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 185
    :cond_7
    sget v0, Lcom/dexcom/cgm/activities/R$string;->dex_alerts_repeat_hours_value:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 190
    :cond_8
    if-eqz v0, :cond_9

    .line 192
    sget v0, Lcom/dexcom/cgm/activities/R$string;->dex_alerts_signal_loss_hours_and_minutes_value:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 197
    :cond_9
    sget v0, Lcom/dexcom/cgm/activities/R$string;->dex_alerts_repeat_hours_and_minutes_value:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_a
    move v0, v2

    goto/16 :goto_0
.end method

.method static setupDebounce(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 33
    new-instance v0, Lcom/dexcom/cgm/activities/CustomViewUtil$1;

    invoke-direct {v0}, Lcom/dexcom/cgm/activities/CustomViewUtil$1;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 42
    new-instance v1, Lcom/dexcom/cgm/activities/CustomViewUtil$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/dexcom/cgm/activities/CustomViewUtil$2;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50
    return-void
.end method

.method static setupDowork(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/dexcom/cgm/activities/CustomViewUtil$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/dexcom/cgm/activities/CustomViewUtil$3;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-void
.end method
