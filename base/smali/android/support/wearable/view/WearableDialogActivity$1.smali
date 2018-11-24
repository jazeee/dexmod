.class Landroid/support/wearable/view/WearableDialogActivity$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WearableDialogActivity.java"


# instance fields
.field final synthetic this$0:Landroid/support/wearable/view/WearableDialogActivity;


# direct methods
.method constructor <init>(Landroid/support/wearable/view/WearableDialogActivity;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Landroid/support/wearable/view/WearableDialogActivity$1;->this$0:Landroid/support/wearable/view/WearableDialogActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 342
    iget-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity$1;->this$0:Landroid/support/wearable/view/WearableDialogActivity;

    invoke-static {v0}, Landroid/support/wearable/view/WearableDialogActivity;->access$000(Landroid/support/wearable/view/WearableDialogActivity;)Landroid/support/wearable/view/ObservableScrollView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/wearable/view/ObservableScrollView;->setOnScrollListener(Landroid/support/wearable/view/ObservableScrollView$OnScrollListener;)V

    .line 344
    iget-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity$1;->this$0:Landroid/support/wearable/view/WearableDialogActivity;

    invoke-static {v0}, Landroid/support/wearable/view/WearableDialogActivity;->access$100(Landroid/support/wearable/view/WearableDialogActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 345
    iget-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity$1;->this$0:Landroid/support/wearable/view/WearableDialogActivity;

    invoke-static {v0}, Landroid/support/wearable/view/WearableDialogActivity;->access$100(Landroid/support/wearable/view/WearableDialogActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTranslationZ(F)V

    .line 346
    return-void
.end method
