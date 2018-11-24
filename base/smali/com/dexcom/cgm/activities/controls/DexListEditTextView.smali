.class public Lcom/dexcom/cgm/activities/controls/DexListEditTextView;
.super Landroid/widget/LinearLayout;
.source "DexListEditTextView.java"


# instance fields
.field public editButton:Landroid/widget/ImageView;

.field m_context:Landroid/content/Context;

.field private m_editText:Lcom/dexcom/cgm/activities/DexAccountEditText;

.field private m_fadeEditToSave:Landroid/view/animation/Animation;

.field private m_fadeIn:Landroid/view/animation/Animation;

.field private m_fadeSaveToEdit:Landroid/view/animation/Animation;

.field private m_onSaveListener:Lcom/dexcom/cgm/activities/controls/DexListEditTextView$OnSaveListener;

.field private m_siblingArray:[Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

.field private m_text:Ljava/lang/String;

.field private m_this:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->m_text:Ljava/lang/String;

    .line 41
    iput-object p0, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->m_this:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    .line 51
    iput-object p1, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->m_context:Landroid/content/Context;

    .line 52
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->inflate()V

    .line 54
    sget v0, Lcom/dexcom/cgm/activities/R$styleable;->DexListEditTextView_titleText:I

    invoke-direct {p0, p2, v0}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->getCustomAttribute(Landroid/util/AttributeSet;I)Ljava/lang/String;

    move-result-object v1

    .line 55
    sget v0, Lcom/dexcom/cgm/activities/R$styleable;->DexListEditTextView_hintText:I

    invoke-direct {p0, p2, v0}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->getCustomAttribute(Landroid/util/AttributeSet;I)Ljava/lang/String;

    move-result-object v2

    .line 56
    sget v0, Lcom/dexcom/cgm/activities/R$styleable;->DexListEditTextView_android_inputType:I

    invoke-direct {p0, p2, v0}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->getCustomAttribute(Landroid/util/AttributeSet;I)Ljava/lang/String;

    move-result-object v0

    .line 58
    const-string v3, "0x"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 59
    const/16 v3, 0x10

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 60
    sget v0, Lcom/dexcom/cgm/activities/R$styleable;->DexListEditTextView_android_maxLength:I

    invoke-direct {p0, p2, v0}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->getCustomAttribute(Landroid/util/AttributeSet;I)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 63
    sget v0, Lcom/dexcom/cgm/activities/R$id;->dex_list_edit_image:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->editButton:Landroid/widget/ImageView;

    .line 64
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->setupAnimations()V

    .line 65
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->setupEditButton()V

    .line 66
    invoke-direct {p0, v1}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->setupTitleText(Ljava/lang/String;)V

    .line 67
    invoke-direct {p0, v2, v3, v4}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->setupTextField(Ljava/lang/String;II)V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;)[Lcom/dexcom/cgm/activities/controls/DexListEditTextView;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->m_siblingArray:[Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;)Lcom/dexcom/cgm/activities/controls/DexListEditTextView;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->m_this:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->m_fadeIn:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;Z)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->setFocused(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;)Lcom/dexcom/cgm/activities/DexAccountEditText;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->m_editText:Lcom/dexcom/cgm/activities/DexAccountEditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->tryToSave()V

    return-void
.end method

.method static synthetic access$500(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->m_fadeEditToSave:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$600(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;Z)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->setKeyboardVisibility(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;)Lcom/dexcom/cgm/activities/controls/DexListEditTextView$OnSaveListener;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->m_onSaveListener:Lcom/dexcom/cgm/activities/controls/DexListEditTextView$OnSaveListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$900(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->m_fadeSaveToEdit:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private getCustomAttribute(Landroid/util/AttributeSet;I)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 82
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 84
    sget-object v1, Lcom/dexcom/cgm/activities/R$styleable;->DexListEditTextView:[I

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 91
    if-nez v1, :cond_0

    .line 93
    const-string v0, ""

    .line 102
    :goto_0
    return-object v0

    .line 98
    :cond_0
    :try_start_0
    invoke-virtual {v1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 102
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private inflate()V
    .locals 3

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 77
    sget v1, Lcom/dexcom/cgm/activities/R$layout;->dex_list_edit_text_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 78
    return-void
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 319
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 320
    return-void
.end method

.method private setFocused(Z)V
    .locals 1

    .prologue
    .line 224
    new-instance v0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$4;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$4;-><init>(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;Z)V

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 236
    return-void
.end method

.method private setKeyboardVisibility(Z)V
    .locals 1

    .prologue
    .line 243
    new-instance v0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$5;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$5;-><init>(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;Z)V

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 263
    return-void
.end method

.method private setupAnimations()V
    .locals 2

    .prologue
    .line 361
    .line 363
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$anim;->full_fade_in:I

    .line 361
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->m_fadeIn:Landroid/view/animation/Animation;

    .line 368
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$anim;->full_fade_out:I

    .line 366
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->m_fadeEditToSave:Landroid/view/animation/Animation;

    .line 370
    iget-object v0, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->m_fadeEditToSave:Landroid/view/animation/Animation;

    new-instance v1, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$8;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$8;-><init>(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 395
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$anim;->full_fade_out:I

    .line 393
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->m_fadeSaveToEdit:Landroid/view/animation/Animation;

    .line 397
    iget-object v0, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->m_fadeSaveToEdit:Landroid/view/animation/Animation;

    new-instance v1, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$9;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$9;-><init>(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 420
    return-void
.end method

.method private setupEditButton()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->editButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$1;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$1;-><init>(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    return-void
.end method

.method private setupTextField(Ljava/lang/String;II)V
    .locals 4

    .prologue
    .line 156
    sget v0, Lcom/dexcom/cgm/activities/R$id;->dex_list_edit_text:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexAccountEditText;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->m_editText:Lcom/dexcom/cgm/activities/DexAccountEditText;

    .line 157
    iget-object v0, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->m_editText:Lcom/dexcom/cgm/activities/DexAccountEditText;

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/activities/DexAccountEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v0, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->m_editText:Lcom/dexcom/cgm/activities/DexAccountEditText;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->m_text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexAccountEditText;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v0, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->m_editText:Lcom/dexcom/cgm/activities/DexAccountEditText;

    invoke-virtual {v0, p2}, Lcom/dexcom/cgm/activities/DexAccountEditText;->setInputType(I)V

    .line 160
    iget-object v0, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->m_editText:Lcom/dexcom/cgm/activities/DexAccountEditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, p3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexAccountEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 161
    iget-object v0, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->m_editText:Lcom/dexcom/cgm/activities/DexAccountEditText;

    invoke-virtual {v0, p0}, Lcom/dexcom/cgm/activities/DexAccountEditText;->setParentListView(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;)V

    .line 162
    iget-object v0, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->m_editText:Lcom/dexcom/cgm/activities/DexAccountEditText;

    new-instance v1, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$2;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$2;-><init>(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;)V

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexAccountEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 181
    return-void
.end method

.method private setupTitleText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 150
    sget v0, Lcom/dexcom/cgm/activities/R$id;->dex_list_edit_title:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 151
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    return-void
.end method

.method private tryToSave()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 185
    iget-object v0, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->editButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->m_fadeSaveToEdit:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 186
    invoke-direct {p0, v2}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->setFocused(Z)V

    .line 187
    invoke-direct {p0, v2}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->setKeyboardVisibility(Z)V

    .line 189
    iget-object v0, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->m_editText:Lcom/dexcom/cgm/activities/DexAccountEditText;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexAccountEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    new-instance v1, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$3;

    invoke-direct {v1, p0, v0}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$3;-><init>(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;Ljava/lang/String;)V

    .line 213
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 214
    return-void
.end method


# virtual methods
.method public cancelEditing()V
    .locals 1

    .prologue
    .line 298
    new-instance v0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$7;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$7;-><init>(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;)V

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 309
    return-void
.end method

.method public fadeSaveToEdit()V
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->editButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->m_fadeSaveToEdit:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 425
    return-void
.end method

.method public getDexAccountEditText()Lcom/dexcom/cgm/activities/DexAccountEditText;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->m_editText:Lcom/dexcom/cgm/activities/DexAccountEditText;

    return-object v0
.end method

.method public getOldText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->m_editText:Lcom/dexcom/cgm/activities/DexAccountEditText;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexAccountEditText;->getOldText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEditing()Z
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->m_editText:Lcom/dexcom/cgm/activities/DexAccountEditText;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexAccountEditText;->isFocused()Z

    move-result v0

    return v0
.end method

.method public setOnSave(Lcom/dexcom/cgm/activities/controls/DexListEditTextView$OnSaveListener;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->m_onSaveListener:Lcom/dexcom/cgm/activities/controls/DexListEditTextView$OnSaveListener;

    .line 354
    return-void
.end method

.method public setSiblingList([Lcom/dexcom/cgm/activities/controls/DexListEditTextView;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->m_siblingArray:[Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    .line 291
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 270
    iput-object p1, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->m_text:Ljava/lang/String;

    .line 272
    new-instance v0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$6;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$6;-><init>(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 281
    return-void
.end method
