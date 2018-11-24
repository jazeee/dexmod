.class Lcom/dexcom/cgm/activities/controls/DexListEditTextView$1;
.super Ljava/lang/Object;
.source "DexListEditTextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$1;->this$0:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 113
    iget-object v0, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$1;->this$0:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->access$000(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;)[Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$1;->this$0:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->access$000(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;)[Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 117
    iget-object v5, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$1;->this$0:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    invoke-static {v5}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->access$100(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;)Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    move-result-object v5

    if-eq v5, v4, :cond_0

    .line 119
    invoke-virtual {v4}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->getDexAccountEditText()Lcom/dexcom/cgm/activities/DexAccountEditText;

    move-result-object v5

    invoke-virtual {v5}, Lcom/dexcom/cgm/activities/DexAccountEditText;->isClickable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 123
    invoke-static {v4, v1}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->access$200(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;Z)V

    .line 124
    invoke-virtual {v4}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->fadeSaveToEdit()V

    .line 125
    invoke-virtual {v4}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->getDexAccountEditText()Lcom/dexcom/cgm/activities/DexAccountEditText;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dexcom/cgm/activities/DexAccountEditText;->rollBackToOldText()V

    .line 115
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$1;->this$0:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->access$300(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;)Lcom/dexcom/cgm/activities/DexAccountEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexAccountEditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$1;->this$0:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->access$400(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;)V

    .line 144
    :goto_1
    return-void

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$1;->this$0:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->access$300(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;)Lcom/dexcom/cgm/activities/DexAccountEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$1;->this$0:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->access$300(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;)Lcom/dexcom/cgm/activities/DexAccountEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/DexAccountEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexAccountEditText;->setOldText(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$1;->this$0:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->editButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$1;->this$0:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->access$500(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 142
    iget-object v0, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$1;->this$0:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    invoke-static {v0, v6}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->access$200(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;Z)V

    .line 143
    iget-object v0, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$1;->this$0:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    invoke-static {v0, v6}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->access$600(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;Z)V

    goto :goto_1
.end method
