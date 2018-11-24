.class Lcom/dexcom/cgm/activities/controls/DexListEditTextView$6;
.super Ljava/lang/Object;
.source "DexListEditTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$6;->this$0:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    iput-object p2, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$6;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$6;->this$0:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->access$300(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;)Lcom/dexcom/cgm/activities/DexAccountEditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$6;->this$0:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->access$300(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;)Lcom/dexcom/cgm/activities/DexAccountEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$6;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexAccountEditText;->setText(Ljava/lang/CharSequence;)V

    .line 279
    :cond_0
    return-void
.end method
