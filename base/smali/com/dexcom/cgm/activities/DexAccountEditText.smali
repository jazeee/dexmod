.class public Lcom/dexcom/cgm/activities/DexAccountEditText;
.super Landroid/widget/EditText;
.source "DexAccountEditText.java"


# instance fields
.field private context:Landroid/content/Context;

.field private m_inputMgr:Landroid/view/inputmethod/InputMethodManager;

.field private m_oldText:Ljava/lang/String;

.field private m_parentListView:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    iput-object p1, p0, Lcom/dexcom/cgm/activities/DexAccountEditText;->context:Landroid/content/Context;

    .line 31
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/DexAccountEditText;->m_inputMgr:Landroid/view/inputmethod/InputMethodManager;

    .line 32
    return-void
.end method

.method private cancelEditing()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexAccountEditText;->m_parentListView:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->cancelEditing()V

    .line 68
    return-void
.end method


# virtual methods
.method public getOldText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexAccountEditText;->m_oldText:Ljava/lang/String;

    return-object v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 37
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexAccountEditText;->m_inputMgr:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/DexAccountEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 42
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/DexAccountEditText;->cancelEditing()V

    .line 43
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexAccountEditText;->context:Landroid/content/Context;

    .line 44
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/DexAccountEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$string;->account_edit_no_changes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 48
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public rollBackToOldText()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexAccountEditText;->m_oldText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/DexAccountEditText;->setText(Ljava/lang/CharSequence;)V

    .line 64
    return-void
.end method

.method public setOldText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/dexcom/cgm/activities/DexAccountEditText;->m_oldText:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setParentListView(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/dexcom/cgm/activities/DexAccountEditText;->m_parentListView:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    .line 73
    return-void
.end method
