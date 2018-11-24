.class Lcom/dexcom/cgm/activities/controls/DexListEditTextView$7;
.super Ljava/lang/Object;
.source "DexListEditTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$7;->this$0:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 303
    iget-object v0, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$7;->this$0:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->editButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$7;->this$0:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->access$900(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 304
    iget-object v0, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$7;->this$0:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    invoke-static {v0, v2}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->access$200(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;Z)V

    .line 305
    iget-object v0, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$7;->this$0:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    invoke-static {v0, v2}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->access$600(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;Z)V

    .line 306
    iget-object v0, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$7;->this$0:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->access$300(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;)Lcom/dexcom/cgm/activities/DexAccountEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexAccountEditText;->rollBackToOldText()V

    .line 307
    return-void
.end method
