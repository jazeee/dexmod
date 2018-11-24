.class Lcom/dexcom/cgm/activities/controls/DexListEditTextView$5;
.super Ljava/lang/Object;
.source "DexListEditTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;Z)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$5;->this$0:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    iput-boolean p2, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$5;->val$visible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 248
    iget-object v0, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$5;->this$0:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 249
    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 252
    iget-boolean v1, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$5;->val$visible:Z

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$5;->this$0:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->access$300(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;)Lcom/dexcom/cgm/activities/DexAccountEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/DexAccountEditText;->requestFocus()Z

    .line 255
    iget-object v1, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$5;->this$0:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->access$300(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;)Lcom/dexcom/cgm/activities/DexAccountEditText;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 261
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v1, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$5;->this$0:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->access$300(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;)Lcom/dexcom/cgm/activities/DexAccountEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/DexAccountEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method
