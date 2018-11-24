.class Lcom/dexcom/cgm/activities/controls/DexListEditTextView$4;
.super Ljava/lang/Object;
.source "DexListEditTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

.field final synthetic val$focused:Z


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;Z)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$4;->this$0:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    iput-boolean p2, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$4;->val$focused:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$4;->this$0:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->access$300(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;)Lcom/dexcom/cgm/activities/DexAccountEditText;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$4;->val$focused:Z

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexAccountEditText;->setFocusableInTouchMode(Z)V

    .line 230
    iget-object v0, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$4;->this$0:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->access$300(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;)Lcom/dexcom/cgm/activities/DexAccountEditText;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$4;->val$focused:Z

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexAccountEditText;->setFocusable(Z)V

    .line 231
    iget-object v0, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$4;->this$0:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->access$300(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;)Lcom/dexcom/cgm/activities/DexAccountEditText;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$4;->val$focused:Z

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexAccountEditText;->setClickable(Z)V

    .line 233
    return-void
.end method
