.class Lcom/dexcom/cgm/activities/controls/DexListEditTextView$2;
.super Ljava/lang/Object;
.source "DexListEditTextView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$2;->this$0:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 167
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x42

    if-ne v2, v3, :cond_1

    move v2, v1

    .line 169
    :goto_0
    const/4 v3, 0x6

    if-ne p2, v3, :cond_0

    move v0, v1

    .line 170
    :cond_0
    if-nez v2, :cond_2

    if-nez v0, :cond_2

    .line 176
    :goto_1
    return v1

    :cond_1
    move v2, v0

    .line 167
    goto :goto_0

    .line 175
    :cond_2
    iget-object v0, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$2;->this$0:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->access$400(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;)V

    goto :goto_1
.end method
