.class Lcom/dexcom/cgm/activities/event_entry/InsulinEntryDecimalTextWatcher;
.super Ljava/lang/Object;
.source "InsulinEntryActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private m_CursorPosition:I

.field private m_DigitsAfterZero:I

.field private m_EditText:Landroid/widget/EditText;

.field private m_PreviousValue:Ljava/lang/String;

.field private m_RestoringPreviousValueFlag:Z


# direct methods
.method public constructor <init>(Landroid/widget/EditText;I)V
    .locals 1

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput p2, p0, Lcom/dexcom/cgm/activities/event_entry/InsulinEntryDecimalTextWatcher;->m_DigitsAfterZero:I

    .line 137
    iput-object p1, p0, Lcom/dexcom/cgm/activities/event_entry/InsulinEntryDecimalTextWatcher;->m_EditText:Landroid/widget/EditText;

    .line 138
    const-string v0, ""

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/InsulinEntryDecimalTextWatcher;->m_PreviousValue:Ljava/lang/String;

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/event_entry/InsulinEntryDecimalTextWatcher;->m_RestoringPreviousValueFlag:Z

    .line 140
    return-void
.end method

.method private isNumberInRange(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 182
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x437a0000    # 250.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValid(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[0-9]*(\\.[0-9]{0,"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/dexcom/cgm/activities/event_entry/InsulinEntryDecimalTextWatcher;->m_DigitsAfterZero:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "})?||(\\.)?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[0-9]*(,[0-9]{0,"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/dexcom/cgm/activities/event_entry/InsulinEntryDecimalTextWatcher;->m_DigitsAfterZero:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "})?||(,)?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 214
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 215
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 217
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private restorePreviousValue()V
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 188
    .line 189
    new-array v3, v6, [Ljava/lang/String;

    const-string v2, "/"

    aput-object v2, v3, v1

    const-string v2, ";"

    aput-object v2, v3, v0

    const/4 v2, 0x2

    const-string v4, ":"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    const-string v4, "\\"

    aput-object v4, v3, v2

    const/4 v2, 0x4

    const-string v4, "*"

    aput-object v4, v3, v2

    const/4 v2, 0x5

    const-string v4, "#"

    aput-object v4, v3, v2

    const/4 v2, 0x6

    const-string v4, "\""

    aput-object v4, v3, v2

    const/4 v2, 0x7

    const-string v4, ">"

    aput-object v4, v3, v2

    const/16 v2, 0x8

    const-string v4, "/*"

    aput-object v4, v3, v2

    const/16 v2, 0x9

    const-string v4, "-"

    aput-object v4, v3, v2

    move v2, v1

    .line 190
    :goto_0
    if-ge v2, v6, :cond_2

    .line 192
    iget-object v4, p0, Lcom/dexcom/cgm/activities/event_entry/InsulinEntryDecimalTextWatcher;->m_EditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v3, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 199
    :goto_1
    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/InsulinEntryDecimalTextWatcher;->m_EditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/event_entry/InsulinEntryDecimalTextWatcher;->m_PreviousValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/InsulinEntryDecimalTextWatcher;->m_EditText:Landroid/widget/EditText;

    iget v1, p0, Lcom/dexcom/cgm/activities/event_entry/InsulinEntryDecimalTextWatcher;->m_CursorPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 204
    :cond_0
    return-void

    .line 190
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 160
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/event_entry/InsulinEntryDecimalTextWatcher;->m_RestoringPreviousValueFlag:Z

    if-nez v0, :cond_2

    .line 162
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/event_entry/InsulinEntryDecimalTextWatcher;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iput-boolean v1, p0, Lcom/dexcom/cgm/activities/event_entry/InsulinEntryDecimalTextWatcher;->m_RestoringPreviousValueFlag:Z

    .line 165
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/event_entry/InsulinEntryDecimalTextWatcher;->restorePreviousValue()V

    .line 168
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/event_entry/InsulinEntryDecimalTextWatcher;->isNumberInRange(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 170
    iput-boolean v1, p0, Lcom/dexcom/cgm/activities/event_entry/InsulinEntryDecimalTextWatcher;->m_RestoringPreviousValueFlag:Z

    .line 171
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/event_entry/InsulinEntryDecimalTextWatcher;->restorePreviousValue()V

    .line 178
    :cond_1
    :goto_0
    return-void

    .line 176
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/event_entry/InsulinEntryDecimalTextWatcher;->m_RestoringPreviousValueFlag:Z

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/event_entry/InsulinEntryDecimalTextWatcher;->m_RestoringPreviousValueFlag:Z

    if-nez v0, :cond_0

    .line 147
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/InsulinEntryDecimalTextWatcher;->m_PreviousValue:Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/InsulinEntryDecimalTextWatcher;->m_EditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/event_entry/InsulinEntryDecimalTextWatcher;->m_CursorPosition:I

    .line 150
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 155
    return-void
.end method
